#!/usr/bin/perl -w
use lib "./";
use Getopt::Long;
use Fcntl;
use Data::Dumper;
use XML::Parser;
use XML::Parser::EasyTree;
use Digest::MD5 qw(md5 md5_hex md5_base64);

my $platformName = 'iphone';
my $widgetidfile = '';
my $basePathForProjectAsset = "..";

GetOptions("file=s" => \$xmlFile, "platform=s" => \$platformName, "widgetidfile=s" => \$widgetidfile, "basePathForProjectAsset=s" => \$basePathForProjectAsset);

# create object
$XML::Parser::EasyTree::Noempty=1;
my $p=new XML::Parser(Style=>'EasyTree',NoLWP=>1);
my $xmldatatree=$p->parsefile($xmlFile);

#print Dumper($xmldatatree);

# read XML file
my $xmldata = $xmldatatree;

# print output
#print Dumper($xmldata);

# FFI Bindings info
my @cwiframeworks = ();
my %importfileshash = ();
my @cwijsclasses = ();
my %cwibindings_new = ();

# make clean directory
sub makeCleanRscDir {
  my $dir = shift @_;

  if (-d "$dir") {
    system "rm -rf $dir/*";
  } else {
    mkdir "$dir";
  }
}

# Collect frameworks list
sub collectSystemFrameworks {
    my $req_frameworks = shift @_;
    #print "\n$req_frameworks\n\n";
    $req_frameworks =~ s/\s//g;
    if ($req_frameworks) {
      push (@cwiframeworks, split(/,/,$req_frameworks));
    }
}

sub getPropertyTagInfo {
  my $propertytag = shift @_;
  #print Dumper ($propertytag);
  my %propertyInfo = ();

  my $jsPropertyName = $propertytag->{'attrib'}->{'name'};
  if ($jsPropertyName) {
    $propertyInfo{'jspropertyname'} = $jsPropertyName;
  }
  
  my $jsType = $propertytag->{'attrib'}->{'type'};
  if ($jsType) {
    $propertyInfo{'jstype'} = $jsType;
  }
  
  my $isProgrammable = $propertytag->{'attrib'}->{'programmable'};
  if ($jsType) {
    $propertyInfo{'isprogrammable'} = $isProgrammable;
  }
  
  for my $subtag (@{$propertytag->{'content'}}) {
    if ($subtag->{'name'} =~ /mappings/) {
      #print Dumper ($subtag->{'content'});
      for my $mappingtag (@{$subtag->{'content'}}) {
        if ($mappingtag->{'attrib'}->{'platform'} =~ /$platformName/) {
          # Get the details about the constructor
          $propertyInfo{'platform'} = $mappingtag->{'attrib'}->{'platform'};
          $propertyInfo{'objctype'} = $mappingtag->{'attrib'}->{'type'};
          $propertyInfo{'objcpropertyname'} = $mappingtag->{'attrib'}->{'propertyname'};
	  $propertyInfo{'objcpropertyname'} = $jsPropertyName if (!$propertyInfo{'objcpropertyname'});
        }
      }
    }
  }

  #print "\n\n======>\n\n";
  #print Dumper (\%propertyInfo);
  #print "\n\n======>\n\n";

  return %propertyInfo;
}

sub getMethodTagInfo {
  my $methodtag = shift @_;
  #print Dumper ($methodtag);
  my %methodInfo = ();

  my $jsMethodName = $methodtag->{'attrib'}->{'name'};
  if ($jsMethodName) {
    $methodInfo{'jsmethodname'} = $jsMethodName;
  }
  
  $methodInfo{'jsreturntype'} = $methodtag->{'attrib'}->{'returntype'};
 
  for my $subtag (@{$methodtag->{'content'}}) {
    if ($subtag->{'name'} =~ /params/) {
      my @params = ();
      for my $paramtag (@{$subtag->{'content'}}) {
        push(@params, $paramtag->{'attrib'});
      }
      $methodInfo{'jsparams'} = \@params;
    }
    elsif ($subtag->{'name'} =~ /mappings/) {
      #print Dumper ($subtag->{'content'});
      for my $mappingtag (@{$subtag->{'content'}}) {
        if ($mappingtag->{'attrib'}->{'platform'} =~ /$platformName/) {
          # Get the details about the constructor
          $methodInfo{'platform'} = $mappingtag->{'attrib'}->{'platform'};
          $methodInfo{'returntype'} = $mappingtag->{'attrib'}->{'returntype'};
          $methodInfo{'methodname'} = $mappingtag->{'attrib'}->{'method'};
          $methodInfo{'isstatic'}   = $mappingtag->{'attrib'}->{'static'};

          my $objcClassName = $mappingtag->{'attrib'}->{'class'};
          if ($objcClassName) {
            $methodInfo{'objcclass'} = $objcClassName;
          }

          my $libraryzip = $mappingtag->{'attrib'}->{'library'};
          if ($libraryzip) {
            $methodInfo{'libraryzip'} = $libraryzip;
          }

          # Collect the systemframeworks list
          my $systemframeworks = $mappingtag->{'attrib'}->{'frameworks'};
          collectSystemFrameworks($systemframeworks) if ($systemframeworks);

          for my $paramstag (@{$mappingtag->{'content'}}) {
            if ($paramstag->{'name'} =~ /params/) {
              my @params = ();
              for my $paramtag (@{$paramstag->{'content'}}) {
                push(@params, $paramtag->{'attrib'});
              }
              $methodInfo{'objcparams'} = \@params;
            }
          }
        }
      }
    }
  }
  #print "\n\n======>\n\n";
  #print Dumper (\%methodInfo);
  #print "\n\n======>\n\n";

  return %methodInfo;
}

my $cwixmlversion = $$xmldata[0]->{'attrib'}->{'cwixmlversion'}; 
$cwixmlversion = "1.0" if (!$cwixmlversion);

sub collectImportHeaderFiles {
	my $iphoneheader = shift @_;
	my $ipadheader = shift @_;
	my $iosheader = "";

	if ($platformName =~ /iphone/) {
		$iosheader = $iphoneheader;
	} else {
		$iosheader = $ipadheader;
		if(!$iosheader) {
			$iosheader = $iphoneheader;
		}
	}
	
	my @importfiles = split(/\|/,$iosheader);
	foreach (@importfiles) {
		my @importfilesline = split(/:/,$_);
        my @importfileslist = ();
        if ($cwixmlversion =~ /1.0/) {
            @importfileslist = split(/\//,$importfilesline[1]);
        } else {
            @importfileslist = split(/;/,$importfilesline[1]);            
        }
		$importfileshash{$importfilesline[0]} = \@importfileslist;
	}
}

my $language = $$xmldata[0]->{'attrib'}->{'language'};
if (!$language) {
	exit 0; # Can't proceed, no language info, should be js
}
if ($language !~ /js/) {
	exit 0; # Can't proceed, not js ffi mapping xml file
}

#print "language: $language cwixmlversion : $cwixmlversion\n";

my $jsnamespace = $$xmldata[0]->{'content'}[0]->{'attrib'}->{'namespace'};
my $apiname = "";

#print "javascript namespace : $jsnamespace\n";

for my $name_ (split(/\./,$jsnamespace)) {
	$name_ =~ s/\b(\w)/\U$1/g;    # UpperCase 
	$apiname .= $name_;
}

if (!$apiname) {
	exit 0; # No API name, Can't proceed
}

# For each tag in jsnamespace
my $jsnamespacetag = $xmldata->[0]->{'content'}->[0];

#print Dumper ($jsnamespacetag->{'attrib'});

collectImportHeaderFiles($jsnamespacetag->{'attrib'}->{'iphoneheaders'},$jsnamespacetag->{'attrib'}->{'ipadheaders'});

#print Dumper (\%importfileshash);

for my $jsnamespacesubtag (@{$jsnamespacetag->{'content'}}) {
    #print "Processing $jsnamespacesubtag->{'name'}\n";
    if ($jsnamespacesubtag->{'name'} =~ /cwiclasses$/) {
	for my $jsclass (@{$jsnamespacesubtag->{'content'}}) {
	  # For each jsclass
	  if ($jsclass->{'name'} =~ /cwiclass$/) {
	    #print "=>jsclass found\n";
	    my $jsclasstag = $jsclass;

	    #print Dumper ($jsclasstag->{'attrib'});

	    my %jsClassInfo = ();

	    $jsClassInfo{'widgetproperties'} = [];
	    $jsClassInfo{'widgetmethods'} = [];

	    my $jsclassname = $jsclasstag->{'attrib'}->{'jsname'};
	    $jsClassInfo{'jsclassname'} = $jsclassname if ($jsclassname && $jsclassname !~ /^$/);
	    my $objcclassname = "";

	    for my $jsclasssubtag (@{$jsclasstag->{'content'}}){
	      #print Dumper ($jsclasssubtag->{'attrib'});
	      # Class mappings
	      if ($jsclasssubtag->{'name'} =~ /classmappings$/) {
		#print "=>class mapping\n";
		my $classmappingstag = $jsclasssubtag;

		#print Dumper ($classmappingstag->{'attrib'});
		
		for my $classmapping (@{$classmappingstag->{'content'}}) {
		  if ($classmapping->{'attrib'}->{'platform'} =~ /$platformName/) {
		    #print Dumper ($classmapping->{'attrib'});

		    # Collect the systemframeworks list
		    my $systemframeworks = $classmapping->{'attrib'}->{'frameworks'};
		    collectSystemFrameworks($systemframeworks) if ($systemframeworks);

		    # Collect the class name
		    my $objcwidgetclassname = $classmapping->{'attrib'}->{'widgetclass'};
		    if ($objcwidgetclassname && $objcwidgetclassname !~ /^$/) {
		      #print "jsclass $jsclassname mapped to ObjC widget class $objcwidgetclassname\n";
		      $jsClassInfo{'objcwidgetclassname'} = $objcwidgetclassname;
		    }
		    else {
		      die "Can't proceed without class mapping";
		    }
		    
		    # Event delegate class is not must...
		    my $objceventdelegateclassname = $classmapping->{'attrib'}->{'eventdelegateclass'};
		    if($objceventdelegateclassname && $objceventdelegateclassname !~ /^$/) {
		      #print "jsclass $jsclassname mapped to ObjC eventdelegate class $objceventdelegateclassname\n";
		      $jsClassInfo{'objceventdelegateclassname'} = $objceventdelegateclassname;
		    }
		    
		    my $libraryzip = $classmapping->{'attrib'}->{'library'};
		    if ($libraryzip && $libraryzip !~ /^$/ ) {
		      $jsClassInfo{'library'} = $libraryzip;
		    }
		  }
		}
	      }
	      # widget properties
	      elsif ($jsclasssubtag->{'name'} =~ /widgetproperties$/) {
                foreach $widgetproperty (@{$jsclasssubtag->{'content'}}) {
	          if ($widgetproperty->{'name'} =~ /property$/) {
		    #print "=>widgetproperty found\n";
		    my $widgetpropertytag = $widgetproperty;

		    #print Dumper ($widgetpropertytag->{'attrib'});
	      
		    my %widgetProperty = getPropertyTagInfo($widgetpropertytag);

		    push(@{$jsClassInfo{'widgetproperties'}}, \%widgetProperty);
                  }
                }
	      } # End of widgetproperties tag
	      # widget methods
	      elsif ($jsclasssubtag->{'name'} =~ /widgetmethods$/) {
                foreach $widgetmethod (@{$jsclasssubtag->{'content'}}) {
	          if ($widgetmethod->{'name'} =~ /widgetmethod$/) {
		    #print "=>widgetmethod found\n";
		    my $widgetmethodtag = $widgetmethod;

		    #print Dumper ($widgetmethodtag->{'attrib'});
	      
		    my %widgetMethod = getMethodTagInfo($widgetmethodtag);

		    push(@{$jsClassInfo{'widgetmethods'}}, \%widgetMethod);
                  }
                }
	      } # End of widgetmethodstag
	    } # End of each subtag of jsclass

	    # Save class info, constructor (s??) info, instancemethods info for the Class
	    #print Dumper (\%jsClassInfo);
	    push(@cwijsclasses, \%jsClassInfo);
	  } # End of jsclass tag
        } # end of for each jsclass
     }
}

#print Dumper (\@cwijsclasses);

sub getFileHeader {
  my $filename = shift @_;
  return "//\
//  $filename\
//\
//  Generated by CWI bindings generator.\
//  Do not modify this file.\
//  Copyright (c) 2013 Kony Solutions. All rights reserved.\
//\
\
";
}

sub getObjcType {
  my $typeName = shift @_;

  #print " '$typeName' \n";
  if ($typeName =~ /^(int|long|float|double|BOOL)$/) {
    return ($typeName, 0, 0);
  } elsif ($typeName =~ /^(NSNumber|NSString|NSArray|NSDictionary)$/) {
    return ($typeName, 1, 1);
  } elsif ($typeName =~ /^Callback$/) {
    return ("CallBack", 1, 1);
  } elsif ($typeName =~ /^id$/) {
    return ($typeName, 0, 1);
  } else {
    return ();
  }
}

sub generateCWIModelClassFiles {
  my $jsClassInfo = shift @_;
  
  my $jsclassname = shift @_;
  my $objcwidgetclassname = shift @_;
  my $objceventdelegateclassname = shift @_;
  my $widgetID = shift @_;
  
  my @generatedFiles = ();
  
  my $modelClassName = "CWI".$apiname.$jsclassname."Model";
  my $widgetClassName = "CWI".$apiname.$jsclassname."Widget";
  
  my $headerFileName = $modelClassName.".h";
  my $sourceFileName = $modelClassName.".m";
  
  my $HEADER_FILE_CONTENT = "";
  my $SOURCE_FILE_CONTENT = "";

  # Generating the CWIAPI header file & source file
  open HEADER_FILE, ">$headerFileName" or die "Can't open FFI Header file $headerFileName";
  open SOURCE_FILE, ">$sourceFileName" or die "Can't open FFI Source file $sourceFileName";
  
  my $widgetproperties = $jsClassInfo->{'widgetproperties'};
  my %modelPropertiesDict = ();

  for my $widgetproperty (@{$widgetproperties}) {
    my $objcpropertyname = $widgetproperty->{'objcpropertyname'};
    my $objcpropertytype = $widgetproperty->{'objctype'};
    
    if ( ($objcpropertyname && $objcpropertyname !~ /^$/) &&
	 ($objcpropertytype && $objcpropertytype !~ /^$/) ) {
      my ($typeName, $isPointer, $retainable) = getObjcType($objcpropertytype);
      if ($typeName) {
	my $propertyDecleration .= "$typeName ";
	$propertyDecleration .= "*" if ($isPointer);
	$propertyDecleration .= "$objcpropertyname";
	$modelPropertiesDict{$objcpropertyname}{'decleration'} = $propertyDecleration;
	$modelPropertiesDict{$objcpropertyname}{'retainable'} = $retainable;
      }
      
      #print Dumper (\%modelPropertiesDict);
    }

  }

  $HEADER_FILE_CONTENT .= getFileHeader($headerFileName);
  $HEADER_FILE_CONTENT .= <<_EOC001_;
#import "WidgetModel.h"
#import "CallBack.h"
#import "Widget.h"

\@interface $modelClassName : WidgetModel {
  \@private
_EOC001_

  my $declerations = "";
  my $propertydeclerations = "";

  for my $propertyname (keys %modelPropertiesDict) {
    #print "property name : $propertyname\n";
    $declerations .= "\t\t";
    $declerations .= $modelPropertiesDict{$propertyname}{'decleration'};
    $declerations .= ";\n";
    my $retainable = $modelPropertiesDict{$propertyname}{'retainable'};
    $propertydeclerations .= "\@property (nonatomic";
    $propertydeclerations .= ",retain" if ($retainable);
    $propertydeclerations .= ") ";
    $propertydeclerations .= $modelPropertiesDict{$propertyname}{'decleration'};
    $propertydeclerations .= ";\n";
    
  }

  # Declare ivars
  $HEADER_FILE_CONTENT .= $declerations;

  $HEADER_FILE_CONTENT .= "\n}\n";

  # @property declerations
  $HEADER_FILE_CONTENT .= $propertydeclerations;
  

  $HEADER_FILE_CONTENT .= <<_EOC00101_;

- (Widget *) createWidget;

\@end

_EOC00101_


  print HEADER_FILE $HEADER_FILE_CONTENT;

  $SOURCE_FILE_CONTENT .= getFileHeader($sourceFileName);

  my $synthesizers = "";
  my $deallocreleases = "";
  my $copywithzones = "";
  for my $propertyname (keys %modelPropertiesDict) {
    $synthesizers .= "\@synthesize $propertyname;\n";
    if ($modelPropertiesDict{$propertyname}{'retainable'}) {
      $deallocreleases .= "\t[$propertyname release];\n";
      $deallocreleases .= "\t$propertyname = nil;\n";
      $copywithzones .= "\t_cwiWidget.$propertyname = [self.$propertyname copyWithZone:zone];\n";
    } else {
      $copywithzones .= "\t_cwiWidget.$propertyname = self.$propertyname;\n";
    }
  }

  $SOURCE_FILE_CONTENT .= <<_EOC002_;
#import "$headerFileName"
#import "$widgetClassName.h"

\@implementation $modelClassName
$synthesizers

- (Widget*) createWidget {
    return [[$widgetClassName alloc] initWithCWIModel:self];
}

- (id) init {
    self = [super init];
    if(nil != self) {
        // Initialize widget model
	
        self.widgetType = $widgetID;
    }
    
    return self;
}

- (id) copyWithZone:(NSZone *) zone {
    $modelClassName *_cwiWidget = [super copyWithZone:zone];
    
$copywithzones
    return _cwiWidget;
}

/* - (void) dealloc {
 $deallocreleases
     [super dealloc];
 }
*/

\@end

_EOC002_

  print SOURCE_FILE $SOURCE_FILE_CONTENT;

  close HEADER_FILE;
  close SOURCE_FILE;

  push (@generatedFiles, $sourceFileName);
  push (@generatedFiles, $headerFileName);
  
  return @generatedFiles;
}

sub importStatementsForZipName {
  my $libzipname = shift @_;

  my @ffiimportheaderfiles = ();
  @ffiimportheaderfiles = @{$importfileshash{$libzipname}} if ($importfileshash{$libzipname});
  my $importStatements = "";
  foreach (@ffiimportheaderfiles) {
    if($_ !~ /^$/) {
      $importStatements .= "\#import \"".$_."\"\n";
    }
  }

  return $importStatements;
}

sub generateCWIWidgetClassFiles {
  my $jsClassInfo = shift @_;
  
  my $jsclassname = shift @_;
  my $objcwidgetclassname = shift @_;
  my $objceventdelegateclassname = shift @_;
  my $widgetID = shift @_;
  
  my @generatedFiles = ();

  my $widgetClassName = "CWI".$apiname.$jsclassname."Widget";
  my $modelClassName = "CWI".$apiname.$jsclassname."Model";
  my $eventDelegateClassName = "CWI".$apiname.$jsclassname."EventDelegate";
  my $headerFileName = $widgetClassName.".h";
  my $sourceFileName = $widgetClassName.".m";

  my $eventDelegateAllocInit = "nil";

  if ($objceventdelegateclassname && $objceventdelegateclassname !~ /^$/) {
    $eventDelegateAllocInit = "[[$eventDelegateClassName alloc] initWithModelObject:cwiModel]";
  }

  my $HEADER_FILE_CONTENT = "";
  my $SOURCE_FILE_CONTENT = "";

  # Generating the CWIAPI header file & source file
  open HEADER_FILE, ">$headerFileName" or die "Can't open FFI Header file $headerFileName";
  open SOURCE_FILE, ">$sourceFileName" or die "Can't open FFI Source file $sourceFileName";
  
  $HEADER_FILE_CONTENT .= getFileHeader($headerFileName);
  $HEADER_FILE_CONTENT .= <<_EOC003_;
#import "Widget.h"

\@class $modelClassName;
\@class $objcwidgetclassname;

\@interface $widgetClassName : Widget {
  \@private
    $objcwidgetclassname *_widget;
    id eventDelegate;
    id konyEnvironment;
}

- (id) initWithCWIModel:($modelClassName *) cwiModel;
- (id) cwiWidget;

\@end

_EOC003_

  print HEADER_FILE $HEADER_FILE_CONTENT;

  my $libzipname = $jsClassInfo->{'library'};
  my $importStatements = importStatementsForZipName($libzipname) if ($libzipname && $libzipname !~ /^$/);

  $SOURCE_FILE_CONTENT .= getFileHeader($sourceFileName);
  $SOURCE_FILE_CONTENT .= <<_EOC0040_;
#import "$headerFileName"
_EOC0040_
  if ($objceventdelegateclassname && $objceventdelegateclassname !~ /^$/) {
    $SOURCE_FILE_CONTENT .= "#import \"$eventDelegateClassName".".h\"\n";
  }

  $SOURCE_FILE_CONTENT .= <<_EOC0041_;
#import "$modelClassName.h"
#import "KonyCWIEnvironment.h"
#import "ObservationInfo.h"

// Imports from library zip
$importStatements

\@implementation $widgetClassName

- (id) initWithCWIModel:($modelClassName *) cwiModel {
    
    if ((self = [super initWithModel:cwiModel])) {
      // Initialize event delegate, konyEnvironment
      eventDelegate = $eventDelegateAllocInit;
      konyEnvironment = [[KonyCWIEnvironment alloc] initWithModel:cwiModel forWidget:self]; // Hold CWIModel      

      _widget = [[$objcwidgetclassname alloc] initWithEventDelegate:eventDelegate
                              withKonyEnvironment:konyEnvironment];

      if ([_widget respondsToSelector:\@selector(didCreateWidget)]) {
          [_widget didCreateWidget];
      }

    }
    return self;
}

- (id) cwiWidget {
  return _widget;
}

- (void) setupWidget
{
    // Run setup-steps for widget
    // _widget 
}

- (void)dealloc {
    if ([_widget respondsToSelector:\@selector(willDestroyWidget)]) {
        [_widget willDestroyWidget];
    }
   // [_widget release];
    //[eventDelegate release];
    //[konyEnvironment release];
    
   // [super dealloc];
}

#pragma mark - Base Widget overrides -

- (UIView*) view
{
    return [_widget getWidgetView];
}

- (void)updatedProperty:(NSString *)propName forObject:(id)object withNewValue:(id)newValue andOldValue:(id)oldValue observationContext:(ObservationInfo *)obsinfo
{
    if([_widget respondsToSelector:\@selector(modelUpdatedForProperty:withOldValue:newValue:)]) {
        [_widget modelUpdatedForProperty:propName withOldValue:oldValue newValue:newValue];
    }
}

#pragma mark - Widget Layout methods -

- (void) setWidgetViewFrame: (CGRect) frame
{
    [_widget setWidgetViewFrame:frame];
}

-(CGSize) getPreferredSizeForGivenSize:(CGSize) givenSize
{
    CGSize preferredSize = CGSizeZero;
    preferredSize = [_widget getPreferredSizeForGivenSize:givenSize];
    return (preferredSize);
}

- (void) willBeginLayout:(NSDictionary *)context 
{
    if([_widget respondsToSelector:\@selector(willBeginLayout)]) {
        [_widget willBeginLayout];
    }
}

- (void) didEndLayout:(NSDictionary *)context 
{
    if([_widget respondsToSelector:\@selector(didEndLayout)]) {
        [_widget didEndLayout];
    }
}

#pragma mark - KonyWidgetEventSenderProtocol method -

- (BOOL) canNotifyEvent:(KonyWidgetEventType)eventType
{
    BOOL retVal = NO;
    if (eventType == KonyWidgetEventTypeClick) {
        retVal = YES;
    }
    return retVal;
}

\@end

_EOC0041_

  print SOURCE_FILE $SOURCE_FILE_CONTENT;

  close HEADER_FILE;
  close SOURCE_FILE;
  
  push (@generatedFiles, $sourceFileName);
  push (@generatedFiles, $headerFileName);
  
  return @generatedFiles;
}

    sub readFileDataIntoArray{
        my $inputheaderfile = $_[0];
        my @headerFileNames = ();
        my @protocolsData = ();
        open(DATA, "<$inputheaderfile") or die "Couldn't open file $inputheaderfile, $!";
        while(<DATA>) {
            chomp;
            if(!($_ =~ /^\s*$/)){
                my @filePath = split / /, $_;
                $filePath[1] =~ s/[\"]//g;
                push(@headerFileNames, "$filePath[1]");
            }
        }
        close DATA;
        
        for my $fileName (@headerFileNames){
            open (FILE_HANDLE, "$fileName") or die "Couldn't open file $fileName, $!";
            while(<FILE_HANDLE>) {
                if(!($_ =~ /^\s*$/)){
                    push(@protocolsData, "$_");
                }
            }
            close FILE_HANDLE;
        }
        return @protocolsData;
    }
    
# name : ...
# methods : Array of methods
#   { [{decleration : ... , returntype : <type>, paramnames : [<pname>, <pname>, ...], paramtypes : [<type>, <type>, ...] }, ...] }
#
sub getProtocolInfo {
  my $inputprotocolname = shift @_;
  my $inputheaderfile = shift @_;

  my %protocolInfo = ();

  my @protocolsData = readFileDataIntoArray($inputheaderfile);

  for (my $i = 0; $i < @protocolsData; $i++) {
    $line = $protocolsData[$i];
    if ($line =~ /^\@protocol\s$inputprotocolname/ ) {
      #print $line . "\n";
      my %protocol = ();
      my ($prdcl, $protocolname) = split(/\s/, $line);
      $protocol{'name'} = $protocolname;
      my @methods = ();
      while ($line !~ /^\@end/) {
	#print $line . "\n";
	$i++;
	$line = $protocolsData[$i];
	if ($line !~ /^\@/) {
	  my %method = ();
	  my @params = ();
	  my @paramregs = ($line =~ m/\:\(.*?\)([^)(].*?)[\s;]/g);

	  my @paramtypes = ();
	  my @paramtyperegs = ($line =~ m/\:\((.*?)\)[^)(].*?[\s;]/g);

	  for my $paramreg (@paramregs) {
	    push(@params,$paramreg);
	  }

	  for my $paramtype (@paramtyperegs) {
	    push(@paramtypes,$paramtype);
	  }

	  $line =~ /^[-+]?\s*\((\w+)\)\s*/;
	  my $returntype = $1;
	  $method{'returntype'} = $returntype;

	  $method{'decleration'} = $line;
	  $method{'parameternames'} = \@params;
	  $method{'parametertypes'} = \@paramtypes;

	  push(@methods, \%method);
	}
      }
      $protocol{'methods'} = \@methods;
      #print Dumper(\%protocol);
      %protocolInfo = %protocol;
    }
  }

  #print Dumper(\%protocolInfo);
  return %protocolInfo;
}

sub generateCWIEventDelegateClassFiles {
  my $jsClassInfo = shift @_;
  
  my $jsclassname = shift @_;
  my $objcwidgetclassname = shift @_;
  my $objceventdelegateprotocolname = shift @_;
  my $widgetID = shift @_;
  
  my @generatedFiles = ();

  my $eventDelegateClassName = "CWI".$apiname.$jsclassname."EventDelegate";
  my $modelClassName = "CWI".$apiname.$jsclassname."Model";
  my $headerFileName = $eventDelegateClassName.".h";
  my $sourceFileName = $eventDelegateClassName.".m";
  
  my $HEADER_FILE_CONTENT = "";
  my $SOURCE_FILE_CONTENT = "";

  # Generating the CWIAPI header file & source file
  open HEADER_FILE, ">$headerFileName" or die "Can't open FFI Header file $headerFileName";
  open SOURCE_FILE, ">$sourceFileName" or die "Can't open FFI Source file $sourceFileName";

  # Get all the header file names from libary
  my $libzipname = $jsClassInfo->{'library'};

  my $importStatements = importStatementsForZipName($libzipname) if ($libzipname && $libzipname !~ /^$/);

  $libzipname =~ s/\.zip//g;
  my $protoheaderfilesimports = ();
  open FILE, "find $basePathForProjectAsset/FFI/CustomWidgets/$libzipname -type f -name \"*.h\" -exec echo \"\#import \\\"{}\\\"\" \\; |";
  while (<FILE>) {
      $protoheaderfilesimports .= "$_\n" if (index($_, "/__MACOSX/") == -1)
  }
  close FILE;

  my $protocolheadersfile = "ProtoHeaders.h";
  open FILE, ">$protocolheadersfile";
  print FILE $protoheaderfilesimports;
  close FILE;

  my %protocolInfo = ();
  %protocolInfo = getProtocolInfo($objceventdelegateprotocolname, $protocolheadersfile);

  $HEADER_FILE_CONTENT .= getFileHeader($headerFileName);
  $HEADER_FILE_CONTENT .= <<_EOC005_;
$importStatements
#import "$modelClassName.h"

\@interface $eventDelegateClassName : NSObject <$objceventdelegateprotocolname> {
\@private 
	$modelClassName *modelObject;
}
\@property (nonatomic, retain) $modelClassName *modelObject;

- (id) initWithModelObject:($modelClassName *) _modelObject;

\@end
_EOC005_

  print HEADER_FILE $HEADER_FILE_CONTENT;

  $SOURCE_FILE_CONTENT .= getFileHeader($sourceFileName);
  $SOURCE_FILE_CONTENT .= <<_EOC0060_;
#import "$headerFileName"
#import "CallBack.h"
#import "$modelClassName.h"

\@implementation $eventDelegateClassName
\@synthesize modelObject;

- (id) initWithModelObject:($modelClassName *) _modelObject {
	if ((self = [super init])) {
		self.modelObject = _modelObject;
	}
	return self;
}

/* - (void) dealloc {
 	[modelObject release];

 	[super dealloc];
 }
*/

#pragma mark - Protocol : $objceventdelegateprotocolname Implementation -
_EOC0060_

  if ($protocolInfo{'methods'}) {
    for my $protomethod (@{$protocolInfo{'methods'}}) {
      my $methoddecleration = $protomethod->{'decleration'};
      my $returntype = $protomethod->{'returntype'};
      my @paramnames = @{$protomethod->{'parameternames'}};
      my @paramtypes = @{$protomethod->{'parametertypes'}};

      my $modelpropertynameforaction = $methoddecleration;
      $modelpropertynameforaction =~ s/^[-+]?\s*\(\w+\)\s*//g; # removing return type
      $modelpropertynameforaction =~ s/\s*;\s*$/ /; # replacing semicolon at end with space.
      $modelpropertynameforaction =~ s/:[^:]*[\s]/:/g; # removing arguments
      my @methodnameparts = split(/:/,$modelpropertynameforaction);
      $modelpropertynameforaction = "";
      my $index = 0;
      for my $methodnamepart (@methodnameparts) {
          if ($index != 0) {
              $methodnamepart =~ s/\b(\w)/\U$1/g;
          }
          $modelpropertynameforaction .= $methodnamepart;
          $index = 1;
      }
      
      $methoddecleration =~ s/;$//g;
      $SOURCE_FILE_CONTENT .= "\n\n".$methoddecleration."\n";
      $SOURCE_FILE_CONTENT .= "{\n";
      $SOURCE_FILE_CONTENT .= "\t\n";

      my $argumentsarray = "nil";
      if (@paramnames == @paramtypes && @paramnames > 0) {
	$argumentsarray = "";
	$argumentsarray .= "[NSArray arrayWithObjects:";
	for (my $i=0;$i < @paramtypes;$i++) {
	  my $paramtype = $paramtypes[$i];
	  my $paramname = $paramnames[$i];

	  if ($paramtype =~ /BOOL$/i) {
	    $argumentsarray .= " [NSNumber numberWithBool:$paramname],";
	  } elsif ($paramtype =~ /int/i) {
	    $argumentsarray .= " [NSNumber numberWithInt:$paramname],";
	  } elsif ($paramtype =~ /long/i) {
	    $argumentsarray .= " [NSNumber numberWithLong:$paramname],";
	  } elsif ($paramtype =~ /float/i) {
	    $argumentsarray .= " [NSNumber numberWithFloat:$paramname],";
	  } elsif ($paramtype =~ /Double/i) {
	    $argumentsarray .= " [NSNumber numberWithDouble:$paramname],";
	  } else {
	    $argumentsarray .= " $paramname?$paramname:[NSNull null],";
	  }
	}
	$argumentsarray .= " nil]";
      }

      my $md5digest = md5_hex($methoddecleration);
      my $returnValueName = "_".$md5digest."_returnValue";
      my $returnArrayName = "_".$md5digest."_returnValuesArray";
      my $argsArrayName = "_".$md5digest."_arguments";
      my $callbackName= "_".$md5digest."_callback";

      $SOURCE_FILE_CONTENT .= "\tid $returnValueName = nil;\n";
      $SOURCE_FILE_CONTENT .= "\tNSArray *$argsArrayName = $argumentsarray;\n";
      $SOURCE_FILE_CONTENT .= "\tCallBack *$callbackName = nil;\n";
      $SOURCE_FILE_CONTENT .= "\n\tif ([self.modelObject respondsToSelector:\@selector($modelpropertynameforaction)]) {\n";
      $SOURCE_FILE_CONTENT .= "\t\t$callbackName = [self.modelObject $modelpropertynameforaction];\n";
      $SOURCE_FILE_CONTENT .= "\t}";
      $SOURCE_FILE_CONTENT .= " else {\n";
      $SOURCE_FILE_CONTENT .= "\t\tNSString *exceptionReason = \@\"$apiname.$jsclassname : property for action $modelpropertynameforaction not mapped...\";\n";
      $SOURCE_FILE_CONTENT .= "\t\t\@throw [NSException exceptionWithName:\@\"Error\" reason:exceptionReason userInfo:nil];\n";
      $SOURCE_FILE_CONTENT .= "\t}\n";
      $SOURCE_FILE_CONTENT .= "\n\tif ([$callbackName isKindOfClass:[CallBack class]]) {\n";
      $SOURCE_FILE_CONTENT .= "\t\t//Call to callback object => model.$modelpropertynameforaction\n";
      $SOURCE_FILE_CONTENT .= "\t\tNSArray *$returnArrayName = [$callbackName executeWithArguments:$argsArrayName];\n";
      $SOURCE_FILE_CONTENT .= "\n\t\tif ($returnArrayName && [$returnArrayName count] > 0) {\n";
      $SOURCE_FILE_CONTENT .= "\t\t\t$returnValueName = [$returnArrayName objectAtIndex:0];\n";
      $SOURCE_FILE_CONTENT .= "\t\t}\n";
      $SOURCE_FILE_CONTENT .= "\t}\n";

      if($returntype =~ /void$/i) {
	# Not returning anything
      } elsif ($returntype =~ /BOOL$/i) {
	$SOURCE_FILE_CONTENT .= "\tif ([$returnValueName isKindOfClass:[NSNumber class]]) {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn [$returnValueName boolValue];\n";
	$SOURCE_FILE_CONTENT .= "\t} else {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn false;\n";
        $SOURCE_FILE_CONTENT .= "\t}\n";
      } elsif ($returntype =~ /int$/i) {
	$SOURCE_FILE_CONTENT .= "\tif ([$returnValueName isKindOfClass:[NSNumber class]]) {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn [$returnValueName intValue];\n";
	$SOURCE_FILE_CONTENT .= "\t} else {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn 0;\n";
        $SOURCE_FILE_CONTENT .= "\t}\n";
      } elsif ($returntype =~ /long$/i) {
	$SOURCE_FILE_CONTENT .= "\tif ([$returnValueName isKindOfClass:[NSNumber class]]) {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn [$returnValueName longValue];\n";
	$SOURCE_FILE_CONTENT .= "\t} else {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn 0;\n";
        $SOURCE_FILE_CONTENT .= "\t}\n";
      } elsif ($returntype =~ /float$/i) {
	$SOURCE_FILE_CONTENT .= "\tif ([$returnValueName isKindOfClass:[NSNumber class]]) {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn [$returnValueName floatValue];\n";
	$SOURCE_FILE_CONTENT .= "\t} else {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn 0.;\n";
        $SOURCE_FILE_CONTENT .= "\t}\n";
      } elsif ($returntype =~ /double$/i) {
	$SOURCE_FILE_CONTENT .= "\tif ([$returnValueName isKindOfClass:[NSNumber class]]) {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn [$returnValueName doubleValue];\n";
	$SOURCE_FILE_CONTENT .= "\t} else {\n";
	$SOURCE_FILE_CONTENT .= "\t\treturn 0.;\n";
        $SOURCE_FILE_CONTENT .= "\t}\n";
      } else {
	$SOURCE_FILE_CONTENT .= "\treturn $returnValueName;\n";
      }
      $SOURCE_FILE_CONTENT .= "}\n";
    }
  }

  $SOURCE_FILE_CONTENT .= <<_EOC0061_;
#pragma mark -

\@end

_EOC0061_

  print SOURCE_FILE $SOURCE_FILE_CONTENT;
  
  close HEADER_FILE;
  close SOURCE_FILE;
  
  push (@generatedFiles, $sourceFileName);
  push (@generatedFiles, $headerFileName);
  
  return @generatedFiles;
}

sub getMethodDecleration {
  my $returntype = shift @_;
  my $objcmethodname = shift @_;
  my @argumentnames = @{shift @_};
  my @argumenttypes = @{shift @_};

  my $objcmethoddecleration = "";
  my $returntypestarneeded = isPointerNeeded($returntype);
  $objcmethoddecleration .= "- ($returntype";
  $objcmethoddecleration .= "*" if ($returntypestarneeded);
  $objcmethoddecleration .= ") ";

  $objcmethodname =~ s/\s//g;
  my @objcmethod = split(/(:)/,$objcmethodname);

  my $i = 0;
  if (scalar(@objcmethod) == 1) {
    $objcmethoddecleration .= " $objcmethod[0]";
    if (scalar(@argumentnames == 1)) {
      my $starforpneeded = isPointerNeeded($argumenttypes[0]);
      $objcmethoddecleration .= ":($argumenttypes[0] ";
      $objcmethoddecleration .= "*" if ($starforpneeded);
      $objcmethoddecleration .= ")$argumentnames[0]";
    }
  } else {
    foreach my $methodpart (@objcmethod) {
      if ($methodpart !~ /\:$/) {
	my $starforpneeded = isPointerNeeded($argumenttypes[$i]);
	$objcmethoddecleration .= " $methodpart:($argumenttypes[$i] ";
	$objcmethoddecleration .= "*" if ($starforpneeded);
	$objcmethoddecleration .= ")$argumentnames[$i]";
	$i++;
      }
    }
  }
  
  return $objcmethoddecleration;
}

sub getproxymethodname {
  my $functionname = shift @_;
  return "_proxybinding_".$functionname;
}

sub getProxyMethodImplementation {
  my $methodmapping = shift @_;
  my $objcwidgetclassname = shift @_;

  my $methodImplementation = "";

  if ($methodmapping) {
    my $platformmappedfor = $methodmapping->{'platform'};
    my $jsmethodname = $methodmapping->{'jsmethodname'};

    if (($platformmappedfor && $platformmappedfor =~ /$platformName/) && 
	($jsmethodname && $jsmethodname !~ /^$/)) {
      my $jsarguments = $methodmapping->{'jsparams'};
      my $objcarguments = $methodmapping->{'objcparams'};

      #print Dumper ($jsarguments);
      #print Dumper ($objcarguments);
      my @argumentnames = ();
      my @argumenttypes = ();

      if ($jsarguments && $objcarguments) {
	if (scalar @{$jsarguments} > 0 && scalar @{$jsarguments} == scalar @{$objcarguments}) {
	  for ( my $index = 0; $index < scalar @{$jsarguments}; $index++ ) {
	    my $jsargname = $jsarguments->[$index]->{'name'}."_arg";
	    my $jsargtype = $jsarguments->[$index]->{'type'};
	    my $objcargtype = nativetypeStringforToolsDefinedNativeType( $objcarguments->[$index]->{'type'});
	    
	    push(@argumentnames, $jsargname);
	    push(@argumenttypes, $objcargtype);
	  }
	}
      }
      
      my $jsreturntype = $methodmapping->{'jsreturntype'};
      my $objcreturntype = $methodmapping->{'returntype'};
      my $proxymethodname = getproxymethodname($methodmapping->{'methodname'});
      my $methodDecleration =  getMethodDecleration($objcreturntype,$proxymethodname,\@argumentnames,\@argumenttypes);
      $methodImplementation .= "$methodDecleration \n{\n";

      if ($jsreturntype =~ /void/) {
	my $methodCallString =  getMethodCallString("($objcwidgetclassname *)[[[self model] getAssociatedWidget] cwiWidget]",$methodmapping->{'methodname'},\@argumentnames);
	$methodImplementation .= "\t$methodCallString";
	$methodImplementation .= ";\n\n";
      } else {
	my $returntypestarneeded = isPointerNeeded($objcreturntype);
	$methodImplementation .= "\treturn ";
	my $methodCallString = getMethodCallString("($objcwidgetclassname *)[[[self model] getAssociatedWidget] cwiWidget]",$methodmapping->{'methodname'},\@argumentnames);
	$methodImplementation .= "$methodCallString";
	$methodImplementation .= ";\n";
      }

      $methodImplementation .= "}\n\n";
    }
  }

  return $methodImplementation;
}

sub generateCWIProxyClassFiles {
  my $jsClassInfo = shift @_;
  
  my $jsclassname = shift @_;
  my $objcwidgetclassname = shift @_;
  my $objceventdelegateclassname = shift @_;
  my $widgetID = shift @_;
  
  my @generatedFiles = ();

  my $proxyClassName = "CWI".$apiname.$jsclassname."Proxy";
  my $modelClassName = "CWI".$apiname.$jsclassname."Model";
  my $widgetClassName = "CWI".$apiname.$jsclassname."Widget";
  my $headerFileName = $proxyClassName.".h";
  my $sourceFileName = $proxyClassName.".m";
  
  my $methodDeclerations = "";
  my $methodImplementations = "";

  my $libzipname = $jsClassInfo->{'library'};
  my $importStatements = importStatementsForZipName($libzipname) if ($libzipname && $libzipname !~ /^$/);

  # Process method mappings - prepare implementations.
  for my $methodmapping (@{$jsClassInfo->{'widgetmethods'}}) {
    #print "method mapping : $methodmapping \n";
    my $mmplatform = $methodmapping->{'platform'};
    my $jsmethodname = $methodmapping->{'jsmethodname'};
    if ( $jsmethodname && $jsmethodname !~ /^$/ && $mmplatform && $mmplatform =~ /$platformName/) {
      $methodImplementations .= "// Implementation for $jsmethodname\n";
      my $methodImplementation =  getProxyMethodImplementation($methodmapping, $objcwidgetclassname);
      $methodImplementations .= $methodImplementation;
      $methodDeclerations .= ($methodImplementation =~ /\A(.*?)$/ms)[0] .";\n";
    }
  }
  
  my $HEADER_FILE_CONTENT = "";
  my $SOURCE_FILE_CONTENT = "";

  # Generating the CWIAPI header file & source file
  open HEADER_FILE, ">$headerFileName" or die "Can't open FFI Header file $headerFileName";
  open SOURCE_FILE, ">$sourceFileName" or die "Can't open FFI Source file $sourceFileName";

  $HEADER_FILE_CONTENT .= getFileHeader($headerFileName);
  $HEADER_FILE_CONTENT .= <<_EOC007_;
#import "BaseProxy.h"
#import "CallBack.h"

\@interface $proxyClassName : BaseProxy

$methodDeclerations

\@end

_EOC007_

  print HEADER_FILE $HEADER_FILE_CONTENT;

  $SOURCE_FILE_CONTENT .= getFileHeader($sourceFileName);
  $SOURCE_FILE_CONTENT .= <<_EOC008_;
#import "$headerFileName"
#import "$modelClassName.h"
#import "$widgetClassName.h"

// Imports from library zip
$importStatements

\@implementation $proxyClassName

+ ($proxyClassName *) createWidget:(NSMutableDictionary *) config {
    
    $modelClassName *_cwiModel = [[$modelClassName alloc] init];
    $proxyClassName *_proxy = [[$proxyClassName alloc] initWithModel:_cwiModel andConfig:config];
    
   // [_cwiModel release];
    return _proxy;
}

#pragma mark - Proxy : JS Object function bindings -

$methodImplementations
#pragma mark -

\@end

_EOC008_

  print SOURCE_FILE $SOURCE_FILE_CONTENT;
  
  close HEADER_FILE;
  close SOURCE_FILE;
  
  push (@generatedFiles, $sourceFileName);
  push (@generatedFiles, $headerFileName);
  
  return @generatedFiles;
}

sub getActualArgValueFromObject {
  my $jsargname_temp = shift @_;
  my $objctype = shift @_;

  my $returnValue = "";
  if ($objctype =~ /int$/) {
      $returnValue = "[$jsargname_temp intValue]";
  } elsif ($objctype =~ /long$/) {
      $returnValue = "[$jsargname_temp longValue]";
  } elsif ($objctype =~ /float$/) {
      $returnValue = "[$jsargname_temp floatValue]";
  } elsif ($objctype =~ /double$/) {
      $returnValue = "[$jsargname_temp doubleValue]";
  } elsif ($objctype =~ /bool$/i) {
      $returnValue = "[$jsargname_temp boolValue]";
  } else {
    $returnValue = $jsargname_temp;
  }

  return $returnValue;
}

sub getObjectForValueOfType {
  my $returnValueString = shift @_;
  my $returntype = shift @_;

  my $objString = "";
  if ($returntype =~ /int/) {
    $objString = "[NSNumber numberWithInt\:$returnValueString]";
  } elsif ($returntype =~ /long$/) {
    $objString = "[NSNumber numberWithLong\:$returnValueString]";
  } elsif ($returntype =~ /float$/) {
    $objString = "[NSNumber numberWithFloat\:$returnValueString]";
  } elsif ($returntype =~ /double$/) {
    $objString = "[NSNumber numberWithDouble\:$returnValueString]";
  } elsif ($returntype =~ /bool$/i) {
    $objString = "[NSNumber numberWithBool\:$returnValueString]";
  } else {
    $objString = $returnValueString;
  }
  
  return $objString;
}

sub isPointerNeeded {
  my $objctype = shift @_;

  my $needed = 1;
  if ($objctype =~ /(int|float|long|double|BOOL|id)$/) {
    $needed = 0;
  } else {
    $needed = 1;
  }

  return $needed;
}

sub getMethodCallString {
  my $instancename = shift @_;
  my $objcmethodname = shift @_;
  my @argumentnames = @{shift @_};

  my $methodCallString = "";

  $methodCallString .= "[";
  $methodCallString .= "$instancename ";
  
  $objcmethodname =~ s/\s//g;
  my @objcmethod = split(/(:)/,$objcmethodname);

  my $i = 0;
  if (scalar(@objcmethod) == 1) {
    $methodCallString .= " $objcmethod[0]";
    $methodCallString .= ":$argumentnames[0]" if (scalar(@argumentnames == 1));
  } else {
    foreach my $methodpart (@objcmethod) {
      $methodCallString .= " $methodpart:$argumentnames[$i++]" if ($methodpart !~ /\:$/);
    }
  }
  
  $methodCallString .= "]";
  return $methodCallString;
}

sub getJSBindingMethodImplementation {
  my $methodmapping = shift @_;
  my $methodImplementation = "";

  if ($methodmapping) {
    my $platformmappedfor = $methodmapping->{'platform'};
    my $jsmethodname = $methodmapping->{'jsmethodname'};

    if (($platformmappedfor && $platformmappedfor =~ /$platformName/) && 
	($jsmethodname && $jsmethodname !~ /^$/)) {
      $jsmethodname = nameforjsbinding($jsmethodname);
      $methodImplementation .= "- (id) $jsmethodname:(NSArray*) arguments \n{\n";

      my $jsarguments = $methodmapping->{'jsparams'};
      my $objcarguments = $methodmapping->{'objcparams'};

      #print Dumper ($jsarguments);
      #print Dumper ($objcarguments);
      my @argumentnames = ();

      if ($jsarguments && $objcarguments) {
	if (scalar @{$jsarguments} > 0 && scalar @{$jsarguments} == scalar @{$objcarguments}) {
	  $methodImplementation .= "\t// Number of params : ". scalar @{$jsarguments} ."\n";
	  $methodImplementation .= "\tif ([arguments count] < ". scalar @{$jsarguments} .") {\n";
	  $methodImplementation .= "\t\t// Raise exception\n";
	  $methodImplementation .= "\t\t[NSException raise: \@\"Widget API Error\" format:\@\"Invalid number of arguments to $jsmethodname \"];\n";
	  $methodImplementation .= "\t}\n";
	  for ( my $index = 0; $index < scalar @{$jsarguments}; $index++ ) {
	    my $jsargname = $jsarguments->[$index]->{'name'}."_param";
	    my $jsargname_temp = $jsargname."_temp";
	    my $jsargtype = $jsarguments->[$index]->{'type'};
	    my $objcargtype = nativetypeStringforToolsDefinedNativeType($objcarguments->[$index]->{'type'});
	    my $starforpneeded = isPointerNeeded($objcargtype);
	    $methodImplementation .= "\t$objcargtype ";
	    $methodImplementation .= "*" if ($starforpneeded);
	    $methodImplementation .= "$jsargname;\n";
	    $methodImplementation .= "\tid $jsargname_temp = [arguments objectAtIndex:$index];\n";
	    my $platformparamtype = "[KonyTypeUtils konyValueTypeForStringType: \@\"".  nativetypeStringforType($objcargtype) ."\"]";
	    $methodImplementation .= "\t$jsargname_temp = [[KonyValueConversionUtility sharedInstance] convertValue:$jsargname_temp toType:". $platformparamtype ." error:nil];\n";
	    $methodImplementation .= "\t$jsargname = ";
	    $methodImplementation .= getActualArgValueFromObject($jsargname_temp, $objcargtype);
	    $methodImplementation .= ";\n\n";
	    
	    push(@argumentnames, $jsargname);
	  }
	}
      }
      
      my $jsreturntype = $methodmapping->{'jsreturntype'};
      my $objcreturntype = $methodmapping->{'returntype'};
      my $proxymethodname = getproxymethodname($methodmapping->{'methodname'});

      my $retVal = "retVal";
      $methodImplementation .= "\tid $retVal = nil;\n";
      $methodImplementation .= "\t\n";

      if ($jsreturntype =~ /void/) {
	my $methodCallString =  getMethodCallString("value",$proxymethodname,\@argumentnames);
	$methodImplementation .= "\t$methodCallString";
	$methodImplementation .= ";\n\n";
      } else {
	my $returnValue = "returnValue";
	my $returnValue_temp = $returnValue."_temp";
	$methodImplementation .= "\tid $returnValue = nil;\n";
	my $starforpneeded = isPointerNeeded($objcreturntype);
	$methodImplementation .= "\t$objcreturntype ";
	$methodImplementation .= "*" if ($starforpneeded);
	$methodImplementation .= "$returnValue_temp = ";
	my $methodCallString = getMethodCallString("value",$proxymethodname,\@argumentnames);
	$methodImplementation .= "\t$methodCallString";
	$methodImplementation .= ";\n";

	my $objFromReturnValue = getObjectForValueOfType($returnValue_temp, $objcreturntype);
	$methodImplementation .= "\t$returnValue = $objFromReturnValue;\n\n";


	my $jstypeconversion = "[KonyTypeUtils konyValueTypeForStringType: \@\"".  jstypeStringforIDEType($jsreturntype,$objcreturntype) ."\"]";
	$methodImplementation .= "\t$retVal = [[KonyValueConversionUtility sharedInstance] convertValue:$returnValue toType:". $jstypeconversion ." error:nil];\n";
      }

      $methodImplementation .= "\t\n";
      $methodImplementation .= "\treturn $retVal;\n";
      $methodImplementation .= "}\n\n";
    }
  }

  return $methodImplementation;
}

sub nameforjsbinding {
  my $functionname = shift @_;
  return $functionname."_jsbinding_"
}

sub generateCWIJSBindingClassFiles {
  my $jsClassInfo = shift @_;
  
  my $jsclassname = shift @_;
  my $objcwidgetclassname = shift @_;
  my $objceventdelegateclassname = shift @_;
  my $widgetID = shift @_;

  my @generatedFiles = ();

  my $jsbindingClassName = "CWI".$apiname.$jsclassname."JSBinding";
  my $proxyClassName = "CWI".$apiname.$jsclassname."Proxy";
  my $headerFileName = $jsbindingClassName.".h";
  my $sourceFileName = $jsbindingClassName.".m";

  my $methodNamesSet = "";
  my $methodImplementations = "";
  my $methodDeclerations = "";

  # Process method mappings - prepare implementations.
  for my $methodmapping (@{$jsClassInfo->{'widgetmethods'}}) {
    #print "method mapping : $methodmapping \n";
    my $mmplatform = $methodmapping->{'platform'};
    my $jsmethodname = $methodmapping->{'jsmethodname'};
    if ( $jsmethodname && $jsmethodname !~ /^$/ && $mmplatform && $mmplatform =~ /$platformName/) {
      $methodNamesSet .= " \t\t\t\t\t\t\@\"". nameforjsbinding($jsmethodname) .":\", \@\"$jsmethodname\", \n";
      $methodImplementations .= "// Implementation for $jsmethodname\n";
      my $methodImplementation =  getJSBindingMethodImplementation($methodmapping);
      $methodImplementations .= $methodImplementation;
      $methodDeclerations .= ($methodImplementation =~ /\A(.*?)$/ms)[0] .";\n";
    }
  }
  
  my $HEADER_FILE_CONTENT = "";
  my $SOURCE_FILE_CONTENT = "";

  # Generating the CWIAPI header file & source file
  open HEADER_FILE, ">$headerFileName" or die "Can't open FFI Header file $headerFileName";
  open SOURCE_FILE, ">$sourceFileName" or die "Can't open FFI Source file $sourceFileName";

  $HEADER_FILE_CONTENT .= getFileHeader($headerFileName);
  $HEADER_FILE_CONTENT .= <<_EOC009_;
#import "JSWidget.h"
#import "CallBack.h"

\@interface $jsbindingClassName : JSWidget

$methodDeclerations

\@end

_EOC009_

  print HEADER_FILE $HEADER_FILE_CONTENT;

  $SOURCE_FILE_CONTENT .= getFileHeader($sourceFileName);
  $SOURCE_FILE_CONTENT .= <<_EOC0010_;
#import "$headerFileName"
#import "$proxyClassName.h"
#import "WrapperUtils.h"
#import "KonyTypes.h"
#import "KonyValueConversionUtility.h"
#import "KonyTypeUtils.h"

\@implementation $jsbindingClassName

- (id) initWithArguments:(NSArray *)arguments {
    if((self = [super init])) {
        NSDictionary* basicConfigDict = [arguments objectAtIndex:0];
        NSDictionary* layoutConfigDict = [arguments objectAtIndex:1];
        NSDictionary* pspConfigDict = [arguments objectAtIndex:2];
        
        NSMutableDictionary* configDict = [[NSMutableDictionary alloc] initWithDictionary:basicConfigDict];
        [configDict addEntriesFromDictionary:layoutConfigDict];
        [configDict addEntriesFromDictionary:pspConfigDict];
        
        NSMutableDictionary* configDictInternal = (NSMutableDictionary *)[WrapperUtils convertArgs:configDict forWidget:[[self class] supportedWidgetType]];
#if DEBUGINFO        
        NSLog(\@"$jsclassname configurations :%@",configDictInternal);
#endif
       // [configDict release];
        
        self.value = [$proxyClassName createWidget:configDictInternal];
    }
    return self;
}

+ (NSString *)classJSNamespace {
    return \@"$jsnamespace";
}

+ (NSString *) className {
    return \@"$jsclassname";
}

+ (NSDictionary *) methodsWithMapping {
    return [NSDictionary dictionaryWithObjectsAndKeys:
$methodNamesSet						 nil];
}

+ (KonyWidgetType) supportedWidgetType {
  return $widgetID;
}

#pragma mark - JSBindings : JS Object function bindings -

// Methods mappings implementations 
$methodImplementations
#pragma mark -

\@end

_EOC0010_

  print SOURCE_FILE $SOURCE_FILE_CONTENT;
  
  close HEADER_FILE;
  close SOURCE_FILE;
  
  push (@generatedFiles, $sourceFileName);
  push (@generatedFiles, $headerFileName);
  
  return @generatedFiles;
}

sub jstypeStringforIDEType {
  my $ideType = shift @_;
  my $nativeType = shift @_;

  if ($ideType =~ /String$/i) {
    return "JSString";
  } elsif ($ideType =~ /Number$/i) {
    return "JSNumber";
  } elsif ($ideType =~ /Object$/i) { # Can be dictionary / userdefined object.
    if ($nativeType =~ /Dictionary$/i) {
      return "JSDictionary";
    } else {
      return "JSTypeDefault";
    }
  } elsif ($ideType =~ /Array$/i) {
    return "JSArray";
  } elsif ($ideType =~ /Function$/i) {
    return "JSCallback";
  } elsif ($ideType =~ /Boolean$/i) {
    return "JSBoolean";
  }
 
  return $ideType;  
}

sub nativetypeStringforType {
  my $ideType = shift @_;

  if ($ideType =~ /String$/i) {
    return "NSString";
  } elsif ($ideType =~ /int$/i) {
    return "NSNumber";
  } elsif ($ideType =~ /long$/i) {
    return "NSNumber";
  } elsif ($ideType =~ /float$/i) {
    return "NSNumber";
  } elsif ($ideType =~ /double$/i) {
    return "NSNumber";
  } elsif ($ideType =~ /Number$/i) {
    return "NSNumber";
  } elsif ($ideType =~ /Dictionary$/i) {
    return "NSDictionary";
  } elsif ($ideType =~ /id$/i) {
    return "NativeUserDefined";
  } elsif ($ideType =~ /Array$/i) {
    return "NSArray";
  } elsif ($ideType =~ /Callback$/i) {
    return "CallBack";
  } elsif ($ideType =~ /BOOL$/i) {
    return "BOOL";
  }
  
  return $ideType;
}
sub nativetypeStringforToolsDefinedNativeType {
  my $ideType = shift @_;

  if ($ideType =~ /Callback$/i) {
    return "CallBack";
  }
  return $ideType;
}
sub generateCWIPlistFiles {
  my $jsClassInfo = shift @_;
  
  my $jsclassname = shift @_;
  my $widgetID = shift @_;

  my @generatedFiles = ();

  my $plistFileName = $jsclassname."PropertyMap.plist";
  
  my $PLIST_FILE_CONTENT = "";

  # Generating the CWIAPI header file & source file
  open PLIST_FILE, ">$plistFileName" or die "Can't open FFI Header file $plistFileName";
  
  $PLIST_FILE_CONTENT .= <<_EOC0011_;
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
_EOC0011_

  my $widgetproperties = $jsClassInfo->{'widgetproperties'};
  my $defaultProperty = 1;

  for my $widgetproperty (@{$widgetproperties}) {
    my $jspropertyname = $widgetproperty->{'jspropertyname'};
    my $jspropertytype = $widgetproperty->{'jstype'};
    my $objcpropertyname = $widgetproperty->{'objcpropertyname'};
    my $objcpropertytype = $widgetproperty->{'objctype'};
    my $isprogrammable = $widgetproperty->{'isprogrammable'};

    
    if ( ($jspropertyname && $jspropertyname !~ /^$/) && 
	 ($jspropertytype && $jspropertytype !~ /^$/) &&
	 ($objcpropertyname && $objcpropertyname !~ /^$/) &&
	 ($objcpropertytype && $objcpropertytype !~ /^$/) ) {
      $jspropertytype = jstypeStringforIDEType($jspropertytype,$objcpropertytype);
      $objcpropertytype = nativetypeStringforType($objcpropertytype);
      $PLIST_FILE_CONTENT .= "\t<key>$jspropertyname</key>\n";
      $PLIST_FILE_CONTENT .= "\t<dict>\n";
      $PLIST_FILE_CONTENT .= "\t\t<key>ext_out_type</key>\n";
      $PLIST_FILE_CONTENT .= "\t\t<string>$jspropertytype</string>\n";
      $PLIST_FILE_CONTENT .= "\t\t<key>ext_acc_type</key>\n";
      if ($isprogrammable && $isprogrammable =~ /^true$/i) {
	$PLIST_FILE_CONTENT .= "\t\t<string>ReadWrite</string>\n";
      } else {
	$PLIST_FILE_CONTENT .= "\t\t<string>ReadOnly</string>\n";
      }
      $PLIST_FILE_CONTENT .= "\t\t<key>int_type</key>\n";
      $PLIST_FILE_CONTENT .= "\t\t<string>$objcpropertytype</string>\n";
      $PLIST_FILE_CONTENT .= "\t\t<key>ext_in_type</key>\n";
      $PLIST_FILE_CONTENT .= "\t\t<string>$jspropertytype</string>\n";
      $PLIST_FILE_CONTENT .= "\t\t<key>int_name</key>\n";
      $PLIST_FILE_CONTENT .= "\t\t<string>$objcpropertyname</string>\n";
      if ($defaultProperty) {
	$PLIST_FILE_CONTENT .= "\t\t<key>default_property</key>\n";
	$PLIST_FILE_CONTENT .= "\t\t<true/>\n";
	$defaultProperty = 0;
      }
      $PLIST_FILE_CONTENT .= "\t</dict>\n";
    }
  }
  
  $PLIST_FILE_CONTENT .= <<_EOC0012_;
</dict>
</plist>
_EOC0012_

  print PLIST_FILE $PLIST_FILE_CONTENT;
  
  close PLIST_FILE;
  
  push (@generatedFiles, $plistFileName);
  
  return @generatedFiles;
}

my $cwidgetid = 1200; # default start widgetid

# WidgetType for customwidget
if (-f $widgetidfile) {
  open FILE, "<$widgetidfile";
  while (<FILE>) {
    $cwidgetid = $_;
    chomp($cwidgetid);
  }
  close FILE;
}


# Generate Kony iOS Platform CWI Binding files for widgets
foreach my $jsclass (@cwijsclasses) {
  my $objcwidgetclassname = $jsclass->{'objcwidgetclassname'};
  if ($objcwidgetclassname && $objcwidgetclassname !~ /^$/) { # Check if class mapping is for iphone/ipad | having objcwidgetclassname
    #print Dumper (\%{$jsclass});
    my @cwigeneratedfiles = ();

    my $jsclassname = $jsclass->{'jsclassname'};
    my $objceventdelegateclassname = $jsclass->{'objceventdelegateclassname'};

    # make clean resource directory for cwi bindings generation
    my $cwiBindingsGenDirName = $apiname.$jsclassname."_bindingsGenFiles";
    makeCleanRscDir($cwiBindingsGenDirName);

    # Generate CWI Widget Model class binding
    my @cwimodelfiles = generateCWIModelClassFiles($jsclass, $jsclassname, $objcwidgetclassname, $objceventdelegateclassname, $cwidgetid);

    if (@cwimodelfiles > 0) {
      my $modelgenfilesdirname = $cwiBindingsGenDirName."/Model";
      makeCleanRscDir($modelgenfilesdirname);
      foreach my $cwifile (@cwimodelfiles) {
	system "mv $cwifile $modelgenfilesdirname";
	push(@cwigeneratedfiles,$cwifile);
      }
    }
    
    # Generate CWI Widget class binding
    my @cwiwidgetfiles = generateCWIWidgetClassFiles($jsclass, $jsclassname, $objcwidgetclassname, $objceventdelegateclassname, $cwidgetid);

    if (@cwiwidgetfiles > 0) {
      my $genfilesdirname = $cwiBindingsGenDirName."/Widget";
      makeCleanRscDir($genfilesdirname);
      foreach my $cwifile (@cwiwidgetfiles) {
	system "mv $cwifile $genfilesdirname";
	push(@cwigeneratedfiles,$cwifile);
      }
    }
    
    if ($objceventdelegateclassname && $objceventdelegateclassname !~ /^$/) {
      # Generate CWI EventDelegate class
      my @cwieventdelegatefiles = generateCWIEventDelegateClassFiles($jsclass, $jsclassname, $objcwidgetclassname, $objceventdelegateclassname, $cwidgetid);

      if (@cwieventdelegatefiles > 0) {
	my $genfilesdirname = $cwiBindingsGenDirName."/EventDelegate";
	makeCleanRscDir($genfilesdirname);
	foreach my $cwifile (@cwieventdelegatefiles) {
	  system "mv $cwifile $genfilesdirname";
	  push(@cwigeneratedfiles,$cwifile);
	}
      }
    }
    
    # Generate CWI Proxy class
    my @cwiproxyfiles = generateCWIProxyClassFiles($jsclass, $jsclassname, $objcwidgetclassname, $objceventdelegateclassname, $cwidgetid);

    if (@cwiproxyfiles > 0) {
      my $genfilesdirname = $cwiBindingsGenDirName."/Proxy";
      makeCleanRscDir($genfilesdirname);
      foreach my $cwifile (@cwiproxyfiles) {
	system "mv $cwifile $genfilesdirname";
	push(@cwigeneratedfiles,$cwifile);
      }
    }
    
    # Generate CWI JSBinding class
    my @cwijsbindingfiles = generateCWIJSBindingClassFiles($jsclass, $jsclassname, $objcwidgetclassname, $objceventdelegateclassname, $cwidgetid);

    if (@cwijsbindingfiles > 0) {
      my $genfilesdirname = $cwiBindingsGenDirName."/JSBindings";
      makeCleanRscDir($genfilesdirname);
      foreach my $cwifile (@cwijsbindingfiles) {
	system "mv $cwifile $genfilesdirname";
	push(@cwigeneratedfiles,$cwifile);
      }
    }

    # Generate PropertyMap Plist file
    my @cwiplistfiles = generateCWIPlistFiles($jsclass, $jsclassname, $cwidgetid);

    foreach my $cwifile (@cwiplistfiles) {
      push(@cwigeneratedfiles,$cwifile);
    }

    # Print all the generated files names
    foreach my $filename (@cwigeneratedfiles) {
      if ($filename =~ /(JSBinding\.h|\.plist)$/) {
	print "$filename\n";
      }
    }

    print "$cwiBindingsGenDirName\n";

    $cwidgetid += 1;
    #print "WidgetID $cwidgetid\n";
  }
}

system "echo $cwidgetid > $widgetidfile" if ($widgetidfile !~ /^$/);

for (@cwiframeworks) {
        print "$_\n";
}

