#!/usr/bin/perl -w


use XML::Writer;

use JSON;

use XML::LibXML;

my $PROJ_FILE_PATH="../VMAppWithKonylib.xcodeproj/project.pbxproj";

my $enableCapabilities = $ARGV[2];

my %capabilitiesHash;

my $appName = $ARGV[0];

my $JSON_projectCapabilities = from_json($ARGV[1]);

my %projectCapabilities = %$JSON_projectCapabilities;

my %capabilitiesList = %$JSON_projectCapabilities;

my $isEntitlementsFilePresent = 0;

my $doesProjectContainsEntitlements = 0;

my $isEntitlementsFileExplicitlyCreated = 0;

$capabilitiesHash{'Associated-Domains'} = 'com.apple.SafariKeychain';
#$capabilitiesHash{'HealthKit'} = 'com.apple.HealthKit';

sub generateUID {
    my $fileName = shift @_;
    $fileName .= rand();
    return "58725ABC" . uc(substr(`echo '$fileName' | md5`, 0, 16));
}

open PROJFILE, '<../VMAppWithKonylib.xcodeproj/project.pbxproj' or die "Can not open current project file!";
my @lines = <PROJFILE>;
close PROJFILE;

foreach $line (@lines){
    if(index($line,"/* ".$appName.".entitlements */" ) != -1){
        $doesProjectContainsEntitlements = 1;
        # Checking whether the entitlements file is created explicitly by xcode or through kony.
        if(index($line,"58725ABC") != -1){
            $isEntitlementsFileExplicitlyCreated = 0;
        }else{
            $isEntitlementsFileExplicitlyCreated = 1;
        }
        last ;
    }
}


# Checking whether the entitlements file is present in directory or not
if((-e '../'.$appName.'.entitlements')){
    $isEntitlementsFilePresent = 1;
}

my $IN_SECTION;
my $flag =1;

open (PROJFILE, ">", $PROJ_FILE_PATH) or die "Couldn't open $PROJ_FILE_PATH. file";
foreach $line (@lines){
    if((index($line,'.entitlements') == -1) && (index($line,"CODE_SIGN_ENTITLEMENTS") == -1)){
        print PROJFILE $line;
        if(!$isEntitlementsFileExplicitlyCreated && $enableCapabilities){
            # Adding entitlements file to project in File reference section and custom templete
            if($line =~ /\/\* Begin PBXFileReference section \*\//){
                $fileID = generateUID($appName.'.entitlements');
                my $newLine = "\t\t\t\t".$fileID.' /* '.$appName.'.entitlements */ = {isa = PBXFileReference; lastKnownFileType = text.plist.entitlements; path = '.$appName.'.entitlements; sourceTree = "<group>"; };';
                print PROJFILE $newLine."\n";
            }
            
            if(index($line,"/* CustomTemplate */ = {") != -1){
                $IN_SECTION = 1;
            }
            
            if($IN_SECTION && index($line , "children = (")!=-1){
                my $newLine =  "\t\t\t\t".$fileID." /* ".$appName.".entitlements */,";
                print PROJFILE $newLine."\n";
                $IN_SECTION = 0;
            }
        }
        
    }else{
        if((index($line,$appName.'.entitlements') != -1) && (index($line,"CODE_SIGN_ENTITLEMENTS") == -1)){
            print PROJFILE $line;
        }
        if((index($line,"CODE_SIGN_ENTITLEMENTS") != -1)){
            # Setting code signing entitlements in project build settings
            if($enableCapabilities || ($isEntitlementsFilePresent && $doesProjectContainsEntitlements)){
                $line = "\t\t\t\tCODE_SIGN_ENTITLEMENTS = ".$appName.".entitlements;";
            }else{
                $line = "\t\t\t\tCODE_SIGN_ENTITLEMENTS = \"\";";
            }
            print PROJFILE $line."\n";
        }
    }
    
}
close PROJFILE;

if(!$enableCapabilities){
    # Cleaning of capabilities section in project
    if($isEntitlementsFilePresent){
        updateEntitlementsFile();
    }
    while ( ($key, $value) = each %capabilitiesHash ){
        overRidePropertyForCapabilitiesInProjectFile($value);
    }
    goto EOF;
}

sub updateEntitlementsFile{
    # If the project already has an entitlements file, then we will update the existing entitlements with values in the projectCapabilities
    # projectCapabilities Hash contains the set of all the capabilities that comes from IDE, which are to be added to the project.
    my $parser = XML::LibXML->new();
    my $capabilities_details = $parser->parse_file('../'.$appName.'.entitlements') or die;
    my @capabilities = $capabilities_details->findnodes("plist/dict/key");
    my $capabilities_dict = $capabilities_details->findnodes("plist/dict")->[0];
    my @capabilities_values  = $capabilities_details->findnodes("plist/dict/array");
    if(exists($projectCapabilities{'Associated-Domains'})){
        my @domainsFromIDE = split(',',  $projectCapabilities{'Associated-Domains'});
        my $associatedDomainKey = $capabilities_details->findnodes("plist/dict/key[text()='com.apple.developer.associated-domains']")->[0];
        my $associatedDomainsArray;
        if(!$associatedDomainKey){
            $associatedDomainKey = XML::LibXML::Element->new("key");
            my $key = XML::LibXML::Text->new("com.apple.developer.associated-domains");
            $associatedDomainKey -> addChild($key);
            $associatedDomainsArray = XML::LibXML::Element->new("array");
            $capabilities_dict->addChild($associatedDomainKey);
            $capabilities_dict->addChild($associatedDomainsArray);
        }
        foreach my $val (@capabilities_values){
            if (index($val->findnodes("string"), "applinks:") != -1) {
                $associatedDomainsArray = $val;
                last;
            }
        }
        my @domains = $associatedDomainsArray->findnodes("string");
        if(@domains){
            for my $domain (@domains){
                my $isDomainRequired = 0;
                foreach my $val (@domainsFromIDE){
                    if($domain->firstChild->data eq 'applinks:'.$val){
                        $isDomainRequired = 1;
                    }
                }
                if(!$isDomainRequired){
                    $domain -> unbindNode();
                }
            }
        }
        foreach my $val (@domainsFromIDE) {
            if (index($associatedDomainsArray->findnodes("string"), 'applinks:'.$val) == -1) {
                my $newElement = XML::LibXML::Element->new("string");
                my $newElement_child = XML::LibXML::Text->new('applinks:'.$val);
                $newElement->addChild($newElement_child);
                $associatedDomainsArray->addChild($newElement);
            }
        }
    }else{
        my $associatedDomainKey = $capabilities_details->findnodes("plist/dict/key[text()='com.apple.developer.associated-domains']")->[0];
        if($associatedDomainKey){
            $associatedDomainKey -> unbindNode();
            foreach my $val (@capabilities_values){
                if (index($val->findnodes("string"), "applinks:") != -1) {
                    $val -> unbindNode();
                    last;
                }
            }
        }
        
    }
    open(my $fh, '>', '../'.$appName.'.entitlements');
    print $fh $capabilities_details->toString;
    close $fh;
    
    print "Updated Entitlements file\n";
}

createEntitlementsFileWithCapabilities($appName);
#overRidePropertyFromSectionInProjectFile("XCBuildConfiguration","CODE_SIGN_ENTITLEMENTS",$appName.'.entitlements');

while ( ($key, $value) = each %projectCapabilities )
{
    overRidePropertyForCapabilitiesInProjectFile($capabilitiesHash{$key});
}


sub overRidePropertyFromSectionInProjectFile{
    my $SECTION = shift;
    my $PROPERTY_NAME = shift;
    my $PROPERTY_VALUE = shift;
    
    my ($property, $section, $file ) = @_;
    
    my $inSection=0;
    
    #reading all lines from file
    open (PROJFILE, "<", $PROJ_FILE_PATH) or die "Couldn't open $PROJ_FILE_PATH. file";
    my @lines = <PROJFILE>;
    close PROJFILE;
    
    #writing into proj file by modifying required lines
    open (PROJFILE, ">", $PROJ_FILE_PATH) or die "Couldn't open $PROJ_FILE_PATH. file";
    foreach $line (@lines){
        if ($line =~ /\/\* Begin $SECTION section \*\//){
            $inSection=1;
        }
        elsif($line =~ /\/\* End $SECTION section \*\//){
            $inSection=0;
        }
        if($inSection == 1 && $line =~ /$PROPERTY_NAME/){
            my ($propName, $propValue) = split(/ = /, $line);
            $propValue=$PROPERTY_VALUE;
            $line="$propName = $propValue;\n";
        }
        print PROJFILE $line;
    }
    
    close PROJFILE;
}


sub createEntitlementsFileWithCapabilities
{
    
    if($isEntitlementsFilePresent){
        updateEntitlementsFile();
        return;
    }
    
    my $appName = shift;
    
    open(my $fh, '>', '../'.$appName.'.entitlements');
    
    my $writer = new XML::Writer(OUTPUT => 'self',DATA_MODE => 1);
    $writer->xmlDecl('UTF-8');
    $writer->startTag("plist","version" => "1.0");
    $writer->startTag("dict");
    
    if(exists($projectCapabilities{'Associated-Domains'})){
        my @values = split(',',  $projectCapabilities{'Associated-Domains'});
        $writer->startTag("key");
        $writer->characters("com.apple.developer.associated-domains");
        $writer->endTag("key");
        $writer->startTag("array");
        foreach my $val (@values) {
            $writer->startTag("string");
            $writer->characters("applinks:".$val);
            $writer->endTag("string");
        }
        $writer->endTag("array");
    }
    
    $writer->endTag("dict");
    $writer->endTag("plist");
    my $xml = $writer->end();
    print $fh $xml;
    close $fh;
    print "Created Entitlements file\n";
}

sub overRidePropertyForCapabilitiesInProjectFile{
    
    my $PROPERTY_NAME = shift;
    my $SECTION = "PBXProject";
    my ($property, $section, $file ) = @_;
    my $inSection=0;
    my $flag = 0;
    
    #reading all lines from file
    open (PROJFILE, "<", $PROJ_FILE_PATH) or die "Couldn't open $PROJ_FILE_PATH. file";
    my @lines = <PROJFILE>;
    close PROJFILE;
    
    #writing into proj file by modifying required lines
    open (PROJFILE, ">", $PROJ_FILE_PATH) or die "Couldn't open $PROJ_FILE_PATH. file";
    foreach $line (@lines){
        if ($line =~ /\/\* Begin $SECTION section \*\//){
            $inSection=1;
        }
        elsif($line =~ /\/\* End $SECTION section \*\//){
            $inSection=0;
        }
        
        if($flag == 1){
            my ($propName, $propValue) = split(/ = /, $line);
            if($enableCapabilities){
                $propValue="1";
            }else{
                $propValue="0";
            }
            $line="$propName = $propValue;\n";
            $flag = 0;
        }
        
        if($inSection == 1 && $line =~ /$PROPERTY_NAME/){
            $flag = 1;
        }
        print PROJFILE $line;
    }
    close PROJFILE;
}

EOF:

