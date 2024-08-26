#!/usr/bin/perl -w
package UniversalApp;
use strict;
use warnings;
use XCProjectEditor;
use Cwd qw(abs_path);

my @userWidgetJSFilesPath;
#our ( $extractModule::isCompositeApp );

sub getUserWidgetFilesPath {
    my ($dirPath) = @_;
    
    open DIR, "ls $dirPath/ |" or die 'Can not open $dir directory';
    chomp(my @uwFilesList = <DIR>);
    close DIR;
    
    for my $uwFile (@uwFilesList) {
        my $uwFilePath = $dirPath."/".$uwFile;
        
        if (-d $uwFilePath) {
            getUserWidgetFilesPath($uwFilePath);
        }else {
            push @userWidgetJSFilesPath, $uwFilePath;
        }
    }
}

sub encriptUserScrptWidgets
{
    my $ck = shift;
    my $protectedkar = shift;
    my $ival = shift;
    my $skpath = shift;
    
    my $userWidgetJSScriptsDir_iPhone = shift;
    my $userWidgetJSScriptsDir_iPad = shift;

    getUserWidgetFilesPath($userWidgetJSScriptsDir_iPhone);
    getUserWidgetFilesPath($userWidgetJSScriptsDir_iPad);
    
    ## Encrypt all the js scripts of the user widgets..
    foreach my $filename (@userWidgetJSFilesPath) {
        my $result = rindex($filename, '/');
        my $scriptName = substr($filename,$result+1);
        
        my $zipFileName = "$filename.zip";
        my $sourceScript = $filename;
        my $targetEncFile = "$filename";
        if (-e $sourceScript) {
            system "zip -j -u $zipFileName $sourceScript > /dev/null";
            if($protectedkar eq "NO") {
                system "./crypt -e -k $ck -i $zipFileName -o $targetEncFile -c $ival";
                system "rm -f $zipFileName";
            }
        }
    }
    if($protectedkar eq "YES") {
        system "java -jar EncryptJS.jar 2 $skpath $userWidgetJSScriptsDir_iPhone";
        system "java -jar EncryptJS.jar 2 $skpath $userWidgetJSScriptsDir_iPad";
    }
}

sub universalNonDevMode{
    my $ck = shift;
    my $startupDirectory = shift;
    my $targetDir = shift;
    my $targetEncFile = $targetDir.shift;
    my $sourceDir = shift;
    my $startupFilesRef = shift;
    my @startupFiles = @$startupFilesRef;
    my $protectedkar = shift;
    my $ival = shift;
    my $skpath = shift;
    
    my $startupJSfiles = $startupDirectory."/*.js";
    
    if($extractModule::isCompositeApp){
		my $cwd = abs_path();
		print $cwd;
		chdir $startupDirectory;
		system "zip -u -r app_script.zip *";
		system "mv -f app_script.zip '$cwd'";
		chdir $cwd;
    	
    }
    else{
    	system "zip -j -u app_script.zip $startupJSfiles > /dev/null";
    }
    my $srcFile = "app_script.zip";
    
    if($protectedkar eq "NO"){
        system "./crypt -e -k $ck -i $srcFile -o $targetEncFile -c $ival";
    }else{
        system "java -jar EncryptJS.jar 2 $skpath $srcFile  $targetEncFile";
    }
    system "rm -f app_script.zip";
    my %startupFilesDict = map { $_ => 1 } @startupFiles;
    
    my $jsfiles = $sourceDir."/*.js";
    my @jsfilesFullPath = glob $jsfiles;
    
    if($extractModule::isCompositeApp){
		$jsfiles = `find $sourceDir -name "*.js"`;
		@jsfilesFullPath = sort split('\n', $jsfiles);
	}
    
    foreach my $filename (@jsfilesFullPath) {
        my $result = rindex($filename, '/');
        my $scriptName = substr($filename,$result+1);
        if(!exists($startupFilesDict{$scriptName})) {
            my $zipFileName = "$sourceDir"."/"."$scriptName.zip";
            my $sourceScript = $filename;
            my $targetEncFile = "$targetDir$scriptName";
            if(-e $sourceScript){
                system "zip -j -u $zipFileName $sourceScript > /dev/null";
                if($protectedkar eq "NO"){
                    system "./crypt -e -k $ck -i $zipFileName -o $targetEncFile -c $ival";
                    system "rm -f $zipFileName";
                }
            }
        }
    }
    
    if($protectedkar eq "YES") {
        system "java -jar EncryptJS.jar 2 $skpath $sourceDir $targetDir";
    }
}

sub removeRscDir{
    my $dir = shift @_;
    if (-d "$dir"){
        system "rm -rf $dir";
    }
}

sub universalDevMode{
    my $sourceDir = $_[0];
    my $targetDir = $_[1];
    my $watchTargetDir = $_[2];
    my $videoJSFilePath = $_[3];
    my $extractDevSpecificObjRef = $_[4];
    my $extractDevSpecificObj = $$extractDevSpecificObjRef;
    my $watchEnabled = $_[5];
    my $enableVideoWidget = $_[6];
    $extractDevSpecificObj->processJavascriptDirInDevModeExtraction($sourceDir, $targetDir, $watchTargetDir, $watchEnabled, $videoJSFilePath, $enableVideoWidget);
}

sub copyMVCPackagesintoUserWidgetJSScripts{
    my $targetDirJS = $_[0];
    my $srcDir = $_[1];
    open DIR, "ls $srcDir/ |" or die 'Can not open $iphoneDir directory';
    my @packages;
    chomp(@packages = <DIR>);
    close DIR;
    
    for my $dirName (@packages) {
        my $packagePath = $srcDir."/".$dirName;
        if (-d $packagePath && index("startup", $dirName) == -1) {
            system "cp -r $packagePath \"$targetDirJS\"";
        }
    }
}

## *******************FunctionModules*************************

#Check if app is configured to run in functionalModule mode by checking for presence of functionalModules.xml
#at projectdir/resources (5.0) and projectdir/functionalModule in 5.6.2 onwards.
# if found then
# 1. Create a zip file for each functional module
# 2. Encrypt it
# 3. Copy it to scripts directory i.e. ../JSScripts/

sub isFunctionModuleXMLExist{
    my $konyappunzipdir = $_[0];
    my @possibleFilenamesofFunctionalModuleXML = ('/resources/functionalModule.xml','/resources/functionalModules.xml','/functionalmodules/functionalModule.xml','/functionalmodules/functionalModules.xml');
    my $functionalModulefilename;
    for my $xmlFilePath  (@possibleFilenamesofFunctionalModuleXML){
        $functionalModulefilename = $konyappunzipdir.$xmlFilePath;
        if (-e  $functionalModulefilename) {
            last;
        }
    }
    return $functionalModulefilename;
}

sub loadFunctionModules{
    my $sourceDir = shift;
    my $targetDir = shift;
    my $functionalModulefilename = shift;
    my $ck = shift;
    my $protectedkar = shift;
    my $ival = shift;
    my $skpath = shift;
    my $minify = shift;
    my $replaceStr = shift;
    
    print "Functional module mode is enabled for app\n";
    
    validateFunctionalModuleXML($functionalModulefilename);
    
    #copy the module definition xml into scripts directory (can be relocated to any other logical directory in future)
    system "rm -f $targetDir/functionalModule.xml"; #cleanup
    system "cp $functionalModulefilename $targetDir";
    
    #create individual zip for konylibrary.js and require.js
    my @loadOnStartupScripts = qw(require.js konylibrary.js);
    
    foreach my $scriptName (@loadOnStartupScripts) {
        my $zipFileName = "$sourceDir$scriptName.zip";
        my $sourceScript = "$sourceDir$scriptName";
        my $targetEncFile = "$targetDir$scriptName";
        if(-e "$sourceDir$scriptName"){
            system "zip -j -u $zipFileName $sourceScript > /dev/null";
            if($protectedkar eq "NO"){
                system "./crypt -e -k $ck -i $zipFileName -o $targetEncFile -c $ival";
            }else{
                system "java -jar EncryptJS.jar 2 $skpath $zipFileName  $targetEncFile";
            }
            
            system "rm -f $sourceDir$scriptName.zip";
        }
    }
    use XML::Parser;
    use XML::Parser::EasyTree;
    use Data::Dumper;
    $XML::Parser::EasyTree::Noempty=1;
    $XML::Parser::EasyTree::Noempty=1; #Adding this extra line to suppress warnings.
    my $p=new XML::Parser(Style=>'EasyTree',NoLWP=>1);
    
    my $xmldatatree=$p->parsefile($functionalModulefilename);
    
    #print Dumper($xmldatatree);
    
    if ($$xmldatatree[0]->{'name'} eq "functionalModules" ){
        my $functionalModuleList = $$xmldatatree[0]->{'content'};
        
        for my $functionalModule (@{$functionalModuleList}){  #for each element <functionalModule>
            
            my $fnModuleName = $functionalModule->{'attrib'}->{'name'};
            
            print "Processing module: " ,$fnModuleName,"\n";
            
            my @filesInFormElement = ();
            my @filesInViewElement = ();
            my @filesInjsModulesElement = ();
            
            my $subElementList = $functionalModule->{'content'};
            
            for my $subElement (@{$subElementList}){
                my @files = ();
                if( $subElement->{'name'} eq 'jsModules' ){
                    @files = filesInElement( $subElement ,$sourceDir);
                    #print Dumper @files;
                    if( @files ) {
                        #check if file exist. Warn user and die if not present
                        my @verifiedFileList = getVerifiedFileList(\@files,"true", $replaceStr);
                        if(@verifiedFileList){
                            push( @filesInjsModulesElement,@verifiedFileList );
                        }
                    }
                }elsif( $subElement->{'name'} eq 'forms'){
                    @files = filesInElement( $subElement ,$sourceDir);
                    if( @files) {
                        #check if file exist. Warn user if file not present
                        my @verifiedFileList = getVerifiedFileList(\@files,"false", $replaceStr);
                        if(@verifiedFileList){
                            push(@filesInFormElement,@verifiedFileList);
                        }
                    }
                }elsif( $subElement->{'name'} eq 'views'){
                    @files = filesInElement($subElement,$sourceDir);
                    #print Dumper @files;
                    if( @files ) {
                        #check if file exist. Warn user if file not present
                        my @verifiedFileList = getVerifiedFileList(\@files,"false", $replaceStr);
                        if(@verifiedFileList){
                            push(@filesInViewElement,@verifiedFileList);
                        }
                    }
                }
                
                #if both <forms> and <views> are present , discard forms ( forms element is for backward compatibility)
                if(@filesInFormElement && @filesInViewElement){
                    @filesInFormElement = ();
                }
            }
            
            my @filesToZip = ();
            push(@filesToZip,@filesInjsModulesElement);
            push(@filesToZip,@filesInFormElement);
            push(@filesToZip,@filesInViewElement);
            
            my $srcFileZip = "$sourceDir$fnModuleName.zip";
            my $targetEncFile = $targetDir."$fnModuleName.js";
            
            if ($minify != 0) {
                #Minify the javascript files
                print "Minifying files\n";
                minifyFiles(\@filesToZip);
            }
            
            #Create a zip file for each module containing the corresponding js files
            system "zip -j -u $sourceDir$fnModuleName.zip @filesToZip > /dev/null";
            
            #now encrypt it
            
            #print "Encrypting file: \nSource is : $srcFileZip, \nTarget is $targetEncFile\n";
            
            if($protectedkar eq "NO"){
                system "./crypt -e -k $ck -i $srcFileZip -o $targetEncFile -c $ival";
            }else{
                system "java -jar EncryptJS.jar 2 $skpath $srcFileZip  $targetEncFile";
            }
            system "rm -f $srcFileZip";
        }
    }
}

#validates the functional module xml agains the schema document
sub validateFunctionalModuleXML{
    my $document = $_[0];
    my $schema_file = 'functionalModules.xsd';
    
    print "Validating functionalmodules.xml\n";
    system ("xmllint --noout --schema $schema_file $document > /dev/null");
    my $errorCode = $?;
    if ($errorCode == -1) {
        print "failed to execute : $!\n";
    }
    elsif ($errorCode & 127) {
        printf "child died with signal %d, %s coredump\n",
        ($errorCode & 127),  ($errorCode & 128) ? 'with' : 'without';
    }
    elsif ( $errorCode ne 0){
        my %xmllinterrorcode = (1,'Unclassified',2,'Error in DTD',3,'Validation error',4,'Validation error',5,'Error in schema compilation',9,'Out of memory error');
        my $error = $errorCode >> 8;
        
        if(exists $xmllinterrorcode{$error}){
            print "Invalid functionalModules.xml . error messsage :",$xmllinterrorcode{$error},"\n";
        }else{
            print "Invalid functionalModules.xml \n";
        }
    }
    if( $errorCode ne 0){
        die "Aborting the build...\n";
    }
}

# returns array of files mentioned under given element in xml file
sub filesInElement {
    my $funModuleElement = $_[0];
    my $sourceDir = $_[1];
    my @files = ();
    my $jsmoduleFiles = $funModuleElement->{'content'}[0]->{'content'};
    
    #split files if comma seperated
    if(defined  $jsmoduleFiles ne "") {
        my @jsFileNames = split(',',$jsmoduleFiles);
        for my $file (@jsFileNames){
            #add .js extension if not present
            if ($file =~ /\.js/) {
                push(@files,$sourceDir.trim($file));
            }
            else{
                push(@files,$sourceDir.trim($file).'.js');
            }
        }
    }
    return @files;
}

sub getVerifiedFileList{
    
    my @filesToVerify = @{$_[0]};
    my $shouldAbort = $_[1];
    my $replaceWithEmpty = $_[2];
    my @expandedFiles = ();
    for my $file (@filesToVerify){
        if($file =~/workerthreads/){
            $file=~ s/$replaceWithEmpty//;
        }
        if($file =~/\*/){
            my @files1 = glob $file;
            push(@expandedFiles,@files1);
        }else{
            push(@expandedFiles,$file);
        }
    }
    if((scalar @expandedFiles)>0){
        #Verify that all files included in module are present else abort the build for jsmodule files
        foreach my $fileToVerify (@expandedFiles) {
            unless (-e $fileToVerify) {
                #File not present ..ABORT.
                my $result = rindex($fileToVerify, '/');
                my $missingfilename = $fileToVerify;
                if($result ne -1){
                    $missingfilename = substr($fileToVerify,$result+1);
                }
                print "*** Warning *** File  $missingfilename specified in functionalmodules.xml does not exist.\n";
                if($shouldAbort eq "true"){
                    die "\n";
                }
                next;
            }
        }
    }
    
    return @expandedFiles;
}

# to Trim the strings
sub trim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    $string =~ s/\s+$//;
    return $string;
}

1;
