#!/usr/bin/perl -w

use Getopt::Long;
use lib './';
use Fcntl;
use Data::Dumper;
use XML::Parser;
use XML::Parser::EasyTree;
no warnings 'uninitialized';


my $platformName = 'iphone';
my $swiftSupport = 0;
my $appName = "ProductName";

GetOptions("file=s" => \$xmlFile, "platform=s" => \$platformName, "swiftSupport=i" => \$swiftSupport, "appName=s" => \$appName);

# create object
$XML::Parser::EasyTree::Noempty=1;
my $p=new XML::Parser(Style=>'EasyTree', NoLWP=>1);
my $xmldatatree=$p->parsefile($xmlFile);

#print Dumper($xmldatatree);

# read XML file
my $xmldata = $xmldatatree;

# print output
#print Dumper($xmldata);

# FFI Bindings info
my @ffiframeworks = ();
my %importfileshash = ();
my @ffijsclasses = ();
my @ffijsmethods = ();
my %ffibindings_new = ();
my %ffibindings_static = ();

# Collect frameworks list
sub collectSystemFrameworks {
    my $req_frameworks = shift @_;
    #print "\n$req_frameworks\n\n";
    $req_frameworks =~ s/\s//g;
    if ($req_frameworks) {
      push (@ffiframeworks, split(/,/,$req_frameworks));
    }
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

my $ffixmlversion = $$xmldata[0]->{'attrib'}->{'ffixmlversion'};
$ffixmlversion = "1.0" if (!$ffixmlversion);

my $bindingssourcetype = $$xmldata[0]->{'attrib'}->{'sourcetype'};
$bindingssourcetype = "objc" if (!$bindingssourcetype);

my $ext = ".m";
if($bindingssourcetype eq "objc++"){
    $ext = ".mm";
}

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
        if ($#importfilesline > 0) {
        	if ($ffixmlversion =~ /2.0/) {
           		@importfileslist = split(/;/,$importfilesline[1]);
        	} else {
            	@importfileslist = split(/\//,$importfilesline[1]);
        	}
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

#print "language: $language xmlversion : $ffixmlversion\n";

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
    if ($jsnamespacesubtag->{'name'} =~ /jsclasses$/) {
	for my $jsclass (@{$jsnamespacesubtag->{'content'}}) {
	  # For each jsclass
	  if ($jsclass->{'name'} =~ /jsclass$/) {
	    #print "=>jsclass found\n";
	    my $jsclasstag = $jsclass;

	    #print Dumper ($jsclasstag->{'attrib'});

	    my %jsClassInfo = ();

	    $jsClassInfo{'instancemethods'} = [];

	    my $jsclassname = $jsclasstag->{'attrib'}->{'name'};
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
		    my $objcclassname = $classmapping->{'attrib'}->{'class'};
		    if ($objcclassname && $objcclassname !~ /^$/ ) {
		      #print "jsclass $jsclassname mapped to ObjC class $objcclassname\n";
		      $jsClassInfo{'objcclassname'} = $objcclassname;
		    }
		    else {
		      die "Can't proceed without class mapping";
		    }
		    my $libraryzip = $classmapping->{'attrib'}->{'library'};
		    if ($libraryzip && $libraryzip !~ /^$/ ) {
		      $jsClassInfo{'library'} = $libraryzip;
		    }
		  }
		}
	      }
	      # Constructor (s???)
	      elsif ($jsclasssubtag->{'name'} =~ /constructormethod$/) {
		#print "=>constructormethod found\n";
		my $constructormethodtag = $jsclasssubtag;

		#print Dumper ($constructormethodtag->{'attrib'});
		
		my %constructorMethod = getMethodTagInfo($constructormethodtag);
		$constructorMethod{'jsmethodname'} = "::CONSTRUCTORFORCLASS::";
		
		push(@{$jsClassInfo{'instancemethods'}}, \%constructorMethod);
	      } # End of constructor tag
	      # Instance method
	      elsif ($jsclasssubtag->{'name'} =~ /instancemethods$/) {
                foreach $instancemethod (@{$jsclasssubtag->{'content'}}) {
	          if ($instancemethod->{'name'} =~ /instancemethod$/) {
		    #print "=>instancemethod found\n";
		    my $instancemethodtag = $instancemethod;

		    #print Dumper ($instancemethodtag->{'attrib'});
	      
		    my %instanceMethod = getMethodTagInfo($instancemethodtag);

		    push(@{$jsClassInfo{'instancemethods'}}, \%instanceMethod);
                  }
                }
	      } # End of instancemethod tag
	    } # End of each subtag of jsclass

	    # Save class info, constructor (s??) info, instancemethods info for the Class
	    #print Dumper (\%jsClassInfo);
	    push(@ffijsclasses, \%jsClassInfo);
	  } # End of jsclass tag
        } # end of for each jsclass
     } elsif ($jsnamespacesubtag->{'name'} =~ /jsfunctions$/) {
          my $jsfunctions = $jsnamespacesubtag;
	  # For each jsmethod
          foreach $jsfunction (@{$jsfunctions->{'content'}}) {
             if($jsfunction->{'name'} =~ /jsfunction$/) {
	       #print "=>jsfunction found\n";
	       my $jsmethodtag = $jsfunction;
	     
	       #print Dumper ($jsmethodtag->{'attrib'});

	       my %staticAPIMethod = getMethodTagInfo($jsmethodtag);
               if ($staticAPIMethod{'platform'} && $staticAPIMethod{'platform'} =~ /$platformName/) { # save only if configured for iphone/ipad
	         push(@ffijsmethods, \%staticAPIMethod);
               }
	     } # End of jsmethod tag - static API
          }
     }
}

#print Dumper (\@ffijsclasses);
#print Dumper (\@ffijsmethods);

sub extractArgumentAtIndex {
 	my $argsname = shift @_;
 	my $argname = shift @_;
	my $index = shift @_;

	my $CONTENT = "\t$argname = nil;\n";
	$CONTENT .= "\tif([$argsname count] > $index) { \n";
	$CONTENT .= "\t\t$argname = [$argsname objectAtIndex:$index];\n\t}";

	return $CONTENT;
}

sub consumeMappedMethodParameters {

	my $instancemethod = shift @_;
	my $objcclassname = shift @_;

	my $HEADER_FILE_CONTENT = "\n";
	my $SOURCE_FILE_CONTENT = "\n";

	my $paramcount = 0;
	
	my $jsreturntype = $instancemethod->{'jsreturntype'};
	my $returntype = $instancemethod->{'returntype'};
	my $jsmethodname = $instancemethod->{'jsmethodname'};
	my $objcmethodname = $instancemethod->{'methodname'};
	my $isstatic = $instancemethod->{'isstatic'};
	
	my $param_count = scalar @{$instancemethod->{'jsparams'}};
	if ($param_count > 0) {
		$SOURCE_FILE_CONTENT .= "\tid arg = nil;\n\n";
	}
	
	my @parameters = ();
	my @releasableparameters = ();
	# For each param
	my $index = 0;
	for my $param (@{$instancemethod->{'jsparams'}}) {
		my $paramname = $param->{'name'};
		my $paramtype = $param->{'type'};
		push(@parameters,$paramname);
		$SOURCE_FILE_CONTENT .= ("\n\t/* ". ($paramcount+1) ."\. $paramname (type: $paramtype) */");
		my $CONTENT = extractArgumentAtIndex("args", "arg", $paramcount);
		$SOURCE_FILE_CONTENT .= "\n$CONTENT\n";
		if($paramtype =~ /Number/i) {
			my $paramMappingType = $instancemethod->{'objcparams'}->[$index]->{'type'};
			$SOURCE_FILE_CONTENT .= "\n\t/* number mapped to $paramMappingType */\n";

			$SOURCE_FILE_CONTENT .= "\targ = \[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeNumber error:nil\];\n";

			if ($paramMappingType =~ /int/i) {
				$SOURCE_FILE_CONTENT .= "\n\tint $paramname = 0;\n";
				$SOURCE_FILE_CONTENT .= "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
				$SOURCE_FILE_CONTENT .= "\t\t$paramname = \[arg intValue\];\n";
				$SOURCE_FILE_CONTENT .= "\t}\n\n";
			} elsif ($paramMappingType =~ /double/i) {
				$SOURCE_FILE_CONTENT .= "\n\tdouble $paramname = 0;\n";
				$SOURCE_FILE_CONTENT .= "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
				$SOURCE_FILE_CONTENT .= "\t\t$paramname = \[arg doubleValue\];\n";
				$SOURCE_FILE_CONTENT .= "\t}\n\n";
			} elsif ($paramMappingType =~ /float/i) {
				$SOURCE_FILE_CONTENT .= "\n\tfloat $paramname = 0;\n";
				$SOURCE_FILE_CONTENT .= "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
				$SOURCE_FILE_CONTENT .= "\t\t$paramname = \[arg floatValue\];\n";
				$SOURCE_FILE_CONTENT .= "\t}\n\n";
			} elsif ($paramMappingType =~ /long/i) {
				$SOURCE_FILE_CONTENT .= "\n\tlong $paramname = 0;\n";
				$SOURCE_FILE_CONTENT .= "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
				$SOURCE_FILE_CONTENT .= "\t\t$paramname = \[arg longValue\];\n";
				$SOURCE_FILE_CONTENT .= "\t}\n\n";
			} else {
				$SOURCE_FILE_CONTENT .= "\n\tNSNumber *$paramname = nil;\n";
				$SOURCE_FILE_CONTENT .= "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
				$SOURCE_FILE_CONTENT .= "\t\t$paramname = \[arg retain\];\n";
				$SOURCE_FILE_CONTENT .= "\t}\n\n";
				push(@releasableparameters,$paramname);
			}
		} elsif($paramtype =~ /String/i) {
			$SOURCE_FILE_CONTENT .= "\n\tNSString *$paramname = nil;\n";
            $SOURCE_FILE_CONTENT .= "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeString error:nil\] retain\];\n";
			push(@releasableparameters,$paramname);
		} elsif($paramtype =~ /Object/i) {
			my $paramMappingType = $instancemethod->{'objcparams'}->[$index]->{'type'};
			$SOURCE_FILE_CONTENT .= ("\n\t/* Mapping $paramtype->$paramMappingType */");
			if ($paramMappingType =~ /NSDictionary/i) {
				$SOURCE_FILE_CONTENT .= "\n\tNSDictionary *$paramname = nil;\n";
			} else {
				$SOURCE_FILE_CONTENT .= "\n\tid $paramname = nil;\n";
			}
			if ($paramMappingType =~ /NSDictionary/i) {
                $SOURCE_FILE_CONTENT .= "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil\] retain\];\n";
			} else {
                $SOURCE_FILE_CONTENT .= "\t$paramname = [[[KonyValueConversionUtility sharedInstance] convertExternalValueToDefaultInternalType:arg error:nil] retain];\n";
			}
			push(@releasableparameters,$paramname);
		} elsif($paramtype =~ /Array/i) {
			$SOURCE_FILE_CONTENT .= "\n\tNSArray *$paramname = nil;\n";
            $SOURCE_FILE_CONTENT .= "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeArray error:nil\] retain\];\n";
			push(@releasableparameters,$paramname);
		} elsif($paramtype =~ /Function/i) {
			$SOURCE_FILE_CONTENT .= "\n\tCallBack *$paramname = nil;\n";
            $SOURCE_FILE_CONTENT .= "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil\] retain\];\n";
			push(@releasableparameters,$paramname);
		} elsif($paramtype =~ /Boolean/i) {
			$SOURCE_FILE_CONTENT .= "\n\tBOOL $paramname;\n";
			$SOURCE_FILE_CONTENT .= "\targ = \[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeBool error:nil\];\n";
			$SOURCE_FILE_CONTENT .= "\t$paramname = [arg boolValue]?YES:NO;\n";
		}
		
		$paramcount++;
		$index++;
	}

	my %returnValues = ();
	$returnValues{'releasalbeparameters'} = \@releasableparameters;
	$returnValues{'headerfilecontent'} = $HEADER_FILE_CONTENT;
	$returnValues{'sourcefilecontent'} = $SOURCE_FILE_CONTENT;
	$returnValues{'parameters'} = \@parameters;
	#print Dumper (\%returnValues);

	return \%returnValues;
}


sub generateHeaderSections {
	my $jsclassname = shift @_;
	my $libraries = shift @_;
	my $classext = shift @_;

	my $HEADER_FILE_CONTENT = "";
	my $SOURCE_FILE_CONTENT = "";

	$HEADER_FILE_CONTENT .= "//\n//  JS".$apiname.$jsclassname.$classext.".h\n";
	$HEADER_FILE_CONTENT .= <<'_EOC2_';
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2012 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"
#import "JSWidget.h"

_EOC2_

        $SOURCE_FILE_CONTENT .= "//\n//  JS".$apiname.$jsclassname.$classext.".m\n";
        $SOURCE_FILE_CONTENT .= <<'_EOC21_';
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

//# import "lglobals.h"

#import "CallBack.h"
#import "KonyValueConversionUtility.h"

_EOC21_
	if ($swiftSupport =~ 1) {
        $appName =~ tr/ /_/;
		$SOURCE_FILE_CONTENT .= "\n#import <$appName/$appName-Swift.h>\n";
	}
	$SOURCE_FILE_CONTENT .= "\#import \"JS".$apiname.$jsclassname.$classext.".h\"\n\n\n";
	my @libraries_unique = keys %{{map {$_ => 1} @{$libraries}}};

	# For each jsclass all header files
	foreach my $libzipname (@libraries_unique) {
		my @ffiimportheaderfiles = @{$importfileshash{$libzipname}};
		foreach (@ffiimportheaderfiles) {
		  if($_ !~ /^$/) {
			$SOURCE_FILE_CONTENT .= "\#import \"".$_."\"\n";
		  }
		}
	}

	$SOURCE_FILE_CONTENT .= "\n\#define apiError \@\"API Error \"";
	$SOURCE_FILE_CONTENT .= "\n\@implementation JS".$apiname.$jsclassname.$classext."\n\n";

	$SOURCE_FILE_CONTENT .= "\n";

	$SOURCE_FILE_CONTENT .= "\n\#pragma mark -\n";
	$SOURCE_FILE_CONTENT .= "\#pragma mark JSBindings\n";

	$HEADER_FILE_CONTENT .= "\@interface JS".$apiname.$jsclassname.$classext." :  ";
	if ($classext =~ /FFIClass/) {
		$HEADER_FILE_CONTENT .= "JSObject <SupportedWidgetType,SetUPJSWrapper>\n\n";
	} else { 
		$HEADER_FILE_CONTENT .= "NSObject <JSStaticAPI>\n\n";
	}

	return ($HEADER_FILE_CONTENT,$SOURCE_FILE_CONTENT);
}

sub generateMethodCall {
	my $isstatic = shift @_;
	my $returntype = shift @_;
	my $jsreturntype = shift @_;
	my $objcclassname = shift @_;
	my $objcmethodname = shift @_;
	my @parameters = @{shift @_};
	my @releasableparameters = @{shift @_};
	my $jsmethodname = shift @_;

	my $SOURCE_FILE_CONTENT = "\n";

	# Call to the foreign function
	my $star = ($returntype =~ /(void|id|BOOL|int|long|float|double)$/)?"":" *";
	if ($isstatic =~ /false/) {
		$SOURCE_FILE_CONTENT .= "\n\t/* - ($returntype".$star.")[$objcclassname $objcmethodname]; */\n";
	} else {
		$SOURCE_FILE_CONTENT .= "\n\t/* + ($returntype".$star.")[$objcclassname $objcmethodname]; */\n";
	}

	#print "$objcmethodname\n";
	$objcmethodname =~ s/\s//g;
	my @objcmethod = split(/(:)/,$objcmethodname);
	#print Dumper (\@objcmethod);
	
	if ($jsreturntype =~ /void/i) {
		if ($isstatic =~ /true/) {
			$SOURCE_FILE_CONTENT .= "\t[$objcclassname";
		} else {
			$SOURCE_FILE_CONTENT .= "\t[($objcclassname *)[self value] ";
		}
		my $i = 0;
		if (scalar(@objcmethod) == 1) {
			$SOURCE_FILE_CONTENT .= " $objcmethod[0]";
			$SOURCE_FILE_CONTENT .= ":$parameters[0]" if (scalar(@parameters == 1));
		} else {
			foreach my $methodpart (@objcmethod) {
				$SOURCE_FILE_CONTENT .= " $methodpart:$parameters[$i++]" if ($methodpart !~ /\:$/);
			}
		}
		$SOURCE_FILE_CONTENT .= "];\n\n";
		
        foreach my $releasableparam (@releasableparameters) {
            $SOURCE_FILE_CONTENT .= "\t\[$releasableparam release\];\n";
        }
		
		# Return value
		$SOURCE_FILE_CONTENT .= "\n\treturn nil;\n";
	} else {
		if ($returntype =~ /BOOL/i) {
			$SOURCE_FILE_CONTENT .= "\tBOOL returnValue = ";
		} elsif ($returntype =~ /int/i) {
			$SOURCE_FILE_CONTENT .= "\tint returnValue = ";
		} elsif ($returntype =~ /long/i) {
			$SOURCE_FILE_CONTENT .= "\tlong returnValue = ";
		} elsif ($returntype =~ /float/i) {
			$SOURCE_FILE_CONTENT .= "\tfloat returnValue = ";
		} elsif ($returntype =~ /double/i) {
			$SOURCE_FILE_CONTENT .= "\tdouble returnValue = ";
		} else { 
			$SOURCE_FILE_CONTENT .= "\tid returnValue = ";
		}
		
		if ($jsmethodname =~ /\:\:CONSTRUCTORFORCLASS\:\:/) {
			if ($isstatic =~ /true/) {
				$SOURCE_FILE_CONTENT .= "[$objcclassname";
			} else {
				$SOURCE_FILE_CONTENT .= "[[$objcclassname alloc] ";
			}
		} else {
			if ($isstatic =~ /true/) {
				$SOURCE_FILE_CONTENT .= "[$objcclassname";
			} else {
				$SOURCE_FILE_CONTENT .= "[($objcclassname *)[self value] ";
			}
		}

		my $i = 0;
		if (scalar(@objcmethod) == 1) {
			$SOURCE_FILE_CONTENT .= " $objcmethod[0]";
			$SOURCE_FILE_CONTENT .= ":$parameters[0]" if (scalar(@parameters == 1));
		} else {
			foreach my $methodpart (@objcmethod) {
				$SOURCE_FILE_CONTENT .= " $methodpart:$parameters[$i++]" if ($methodpart !~ /\:$/);
			}
		}
		$SOURCE_FILE_CONTENT .= "];\n\n";
		
        foreach my $releasableparam (@releasableparameters) {
            $SOURCE_FILE_CONTENT .= "\t\[$releasableparam release\];\n";
        }
		
		if ($jsmethodname =~ /\:\:CONSTRUCTORFORCLASS\:\:/) {
            $SOURCE_FILE_CONTENT .= "\n\tself.value = returnValue;\n  [returnValue autorelease]; }\n  return self;\n";
		} else {
			# Return value
			if ($returntype =~ /BOOL/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:[NSNumber numberWithBool:returnValue] toType:KonyValueTypeJSBoolean error:nil\];\n";
			} elsif ($returntype =~ /int/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:[NSNumber numberWithInt:returnValue] toType:KonyValueTypeJSNumber error:nil\];\n";
			} elsif ($returntype =~ /long/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:[NSNumber numberWithLong:returnValue] toType:KonyValueTypeJSNumber error:nil\];\n";
			} elsif ($returntype =~ /float/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:[NSNumber numberWithFloat:returnValue] toType:KonyValueTypeJSNumber error:nil\];\n";
			} elsif ($returntype =~ /double/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:[NSNumber numberWithDouble:returnValue] toType:KonyValueTypeJSNumber error:nil\];\n";
			} elsif ($returntype =~ /NSNumber/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:returnValue toType:KonyValueTypeJSNumber error:nil\];\n";
			} elsif ($returntype =~ /NSString/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:returnValue toType:KonyValueTypeJSString error:nil\];\n";
			} elsif ($returntype =~ /NSArray/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:returnValue toType:KonyValueTypeJSArray error:nil\];\n";
			} elsif ($returntype =~ /NSDictionary/i) {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertValue:returnValue toType:KonyValueTypeJSDictionary error:nil\];\n";
			} else {
				$SOURCE_FILE_CONTENT .= "\n\tid convertedRetValue = \[\[KonyValueConversionUtility sharedInstance\] convertInternalValueToDefaultExternalType:returnValue error:nil\];\n";
			}
			if ($isstatic =~ /true/) {
			$SOURCE_FILE_CONTENT .= "\n\treturn [NSArray arrayWithObject:(convertedRetValue)?convertedRetValue:[NSNull null]];\n";
			} else {
			$SOURCE_FILE_CONTENT .= "\n\treturn convertedRetValue;\n";
			}
		}
	}

	$SOURCE_FILE_CONTENT .= "}\n";

	return $SOURCE_FILE_CONTENT;
}


foreach my $jsclass (@ffijsclasses) {
  my $objcclassname = $jsclass->{'objcclassname'};
  if ($objcclassname && $objcclassname !~ /^$/ ) { # Check if class mapping is for iphone/ipad | having objcclassname
  #print Dumper (\%{$jsclass});
  my $jsclassname = $jsclass->{'jsclassname'};
  $jsclassname =~ s/\b(\w)/\U$1/g;
  %ffibindings_new = ();

  # Generating the FFIAPI header file & source file
  open HEADER_FILE, ">"."JS".$apiname.$jsclassname."FFIClass.h" or die "Can't open FFI Header file JS".$apiname.$jsclassname."FFIClass.h";
  open SOURCE_FILE, ">"."JS".$apiname.$jsclassname."FFIClass".$ext or die "Can't open FFI Source file JS".$apiname.$jsclassname."FFIClass".$ext;

  my @libzipnames = ();
  push (@libzipnames, $jsclass->{'library'}) if ($jsclass->{'library'});
  my ($hheadersection,$sheadersection) = generateHeaderSections($jsclassname,\@libzipnames,"FFIClass");
  print HEADER_FILE $hheadersection;
  print SOURCE_FILE $sheadersection;
	
  for my $instancemethod ( @{$jsclass->{'instancemethods'}}) {
	#print Dumper($instancemethod);
	#print "start new method tag\n";	

	# If Instance method, expected first argument is of the method class
	my $jsreturntype = $instancemethod->{'jsreturntype'};
	my $returntype = $instancemethod->{'returntype'};
	my $objcclassname = $jsclass->{'objcclassname'};
	my $jsmethodname = $instancemethod->{'jsmethodname'};
	my $objcmethodname = $instancemethod->{'methodname'};
	my $isstatic = $instancemethod->{'isstatic'};

	$ffibindings_new{$jsmethodname} = "\@\"$jsmethodname:\"" if ($isstatic =~ /false/ && $jsmethodname !~ /\:\:CONSTRUCTORFORCLASS\:\:/);

	my %returnValues = %{consumeMappedMethodParameters($instancemethod,$objcclassname)};

	my $hmethodcontent = $returnValues{'headerfilecontent'};
	my $smethodcontent = $returnValues{'sourcefilecontent'};
	my @parameters = @{$returnValues{'parameters'}};
	my @releasableparameters = @{$returnValues{'releasalbeparameters'}};
	#print Dumper (\%returnValues);
	#print Dumper (\@parameters);
	#print Dumper (\@releasableparameters);

	if ($jsmethodname =~ /\:\:CONSTRUCTORFORCLASS\:\:/) {
		if (!$returntype) {
			$returntype = "id";
		}
		print SOURCE_FILE "\n";
		print SOURCE_FILE "/\*\* \@brief JS Object initialization\n";
		print SOURCE_FILE "\*\*/\n";
		print SOURCE_FILE "- (id)initWithArguments:(NSArray *)args {\n";
		print SOURCE_FILE "  if((self = [super init])) {\n";
	} else {
		if ($jsreturntype =~ /(void)$/) {
			$returntype = "void";
		}
		print HEADER_FILE "- (id)$jsmethodname:(NSArray *)args;\n";
		print SOURCE_FILE "\n";
		print SOURCE_FILE "- (id)$jsmethodname:(NSArray *)args {\n";
	}

	print HEADER_FILE $hmethodcontent if ($hmethodcontent);
	print SOURCE_FILE $smethodcontent if ($smethodcontent);

	my $methodcallsource = generateMethodCall($isstatic, $returntype, $jsreturntype, $objcclassname, $objcmethodname, \@parameters, \@releasableparameters, $jsmethodname);

	print SOURCE_FILE $methodcallsource;
  }

  print HEADER_FILE <<_EOC3_;

\@end

_EOC3_

  my $sfootersection = generateFooterSectionForClass($jsclass->{'jsclassname'},$jsclass->{'objcclassname'});

  print SOURCE_FILE $sfootersection;

  close HEADER_FILE;
  close SOURCE_FILE;

 # if (keys(%ffibindings_new)) { # Commented : BugFix: : Generate classes even if no methods are mapped (except constructor). 
    print "JS".$apiname.$jsclassname."FFIClass.h\n";
    print "JS".$apiname.$jsclassname."FFIClass".$ext."\n";
 # }
  }
}

sub generateFooterSectionForClass {
  my $jsclassname = shift @_;
  my $objcclassname = shift @_;
  my $ffiapinames_instance = '';
  foreach (keys %ffibindings_new) {
	$ffiapinames_instance .= "\@\"$_\", "; 
  }

  $ffiapinames_instance .= " nil";

  my $SOURCE_FILE_CONTENT = "\n";
  $SOURCE_FILE_CONTENT .= <<_EOC31_;

/** \@brief JS Object namespace
 **/
+ (NSString *)classJSNamespace {
    return \@"$jsnamespace";
}

/** \@brief JS Object className
 **/
+ (NSString *)className {
    return @"$jsclassname";
}

/** \@brief JS Object methods
 **/
+ (NSSet *)methods {
    //TODO Some look up must be here to return the JS Method Names...
    return [NSSet setWithObjects:$ffiapinames_instance];
}

+ (NSSet*)fullSetOfMethods {
    return [self methods];
}

/** \@brief JS Object supported widgetType
 **/
+ (KonyWidgetType)supportedWidgetType {
	return KonyWidgetUnknown;
}

/** \@brief JS Object callback upon registration with JS Engine
 **/
+ (void)setUpJSWrapper {
    [[KonyValueConversionUtility sharedInstance] registerExternalClass:self forInternalClass:[$objcclassname class]];
}

_EOC31_

  $SOURCE_FILE_CONTENT .= "\n\n\@end\n\n";
  
  return $SOURCE_FILE_CONTENT;
}

sub generateFooterSectionForMethods {

  my $SOURCE_FILE_CONTENT = "\n";
  $SOURCE_FILE_CONTENT .= <<_EOC32_;
/** \@brief JS API namespace
 **/
+ (NSString *) jsStaticAPINamespace
{
	return @"$jsnamespace";
}

\#pragma mark -
\#pragma mark JSRuntime static API registration supporting methods 

/** \@brief Load the js bindings into JS Runtime
 **/
+ (NSDictionary *) staticAPIMethodMapping
{

_EOC32_

  my $ffiapinames = '';
  $SOURCE_FILE_CONTENT .= ("\tNSDictionary *konyApplicationAPIs = [NSDictionary dictionaryWithObjectsAndKeys: \\\n");

  foreach (keys %ffibindings_static) {
	$ffiapinames .= "\t\t\t\t\t\@\"$_\:\", \@\"$_\", \\\n"; 
  }
  $SOURCE_FILE_CONTENT .= $ffiapinames;
  $SOURCE_FILE_CONTENT .= "\t\t\t\t\tnil];\n\n";
  $SOURCE_FILE_CONTENT .= "\treturn konyApplicationAPIs;";
  $SOURCE_FILE_CONTENT .= "\n\n}";
  $SOURCE_FILE_CONTENT .= "\n\n\@end\n";
  
  return $SOURCE_FILE_CONTENT;
}

if (scalar @ffijsmethods > 0) {
  # Generating the FFIAPI header file & source file
  open HEADER_FILE, ">"."JS".$apiname."FFIAPI.h" or die "Can't open FFI Header file JS".$apiname."FFIAPI.h";
  open SOURCE_FILE, ">"."JS".$apiname."FFIAPI".$ext or die "Can't open FFI Source file JS".$apiname."FFIAPI".$ext;

  my @libzipnames = ();
  for my $instancemethod (@ffijsmethods) {
    push (@libzipnames, $instancemethod->{'libraryzip'}) if ($instancemethod->{'libraryzip'});
  }

  my ($hheadersection,$sheadersection) = generateHeaderSections("",\@libzipnames,"FFIAPI");
  print HEADER_FILE $hheadersection;
  print SOURCE_FILE $sheadersection;
	
  for my $instancemethod (@ffijsmethods) {
	#print Dumper($_);
	#print "start new method tag\n";	

	# If Instance method, expected first argument is of the method class
	my $jsreturntype = $instancemethod->{'jsreturntype'};
	my $returntype = $instancemethod->{'returntype'};
	my $objcclassname = $instancemethod->{'objcclass'};
	my $jsmethodname = $instancemethod->{'jsmethodname'};
	my $objcmethodname = $instancemethod->{'methodname'};
	my $isstatic = $instancemethod->{'isstatic'};

	$ffibindings_static{$jsmethodname} = "\@\"$jsmethodname:\"" if ($isstatic !~ /false/);

	my %returnValues = %{consumeMappedMethodParameters($instancemethod,$objcclassname)};

	my $hmethodcontent = $returnValues{'headerfilecontent'};
	my $smethodcontent = $returnValues{'sourcefilecontent'};
	my @parameters = @{$returnValues{'parameters'}};
	my @releasableparameters = @{$returnValues{'releasalbeparameters'}};
	#print Dumper (\%returnValues);
	#print Dumper (\@parameters);
	#print Dumper (\@releasableparameters);

        print HEADER_FILE "+ (NSArray *)$jsmethodname:(NSArray *)args;\n";
        print SOURCE_FILE "\n";
        print SOURCE_FILE "+ (NSArray *)$jsmethodname:(NSArray *)args {\n";

	print HEADER_FILE $hmethodcontent if ($hmethodcontent);
	print SOURCE_FILE $smethodcontent if ($smethodcontent);

	my $methodcallsource = generateMethodCall($isstatic, $returntype, $jsreturntype, $objcclassname, $objcmethodname, \@parameters, \@releasableparameters, $jsmethodname);

	print SOURCE_FILE $methodcallsource;
  }

  print HEADER_FILE <<_EOC3_;

\@end

_EOC3_

  my $sfootersection = generateFooterSectionForMethods();

  print SOURCE_FILE $sfootersection;

  close HEADER_FILE;
  close SOURCE_FILE;

  if (keys(%ffibindings_static)) {
    print "JS".$apiname."FFIAPI.h\n";
    print "JS".$apiname."FFIAPI".$ext."\n";
  }
}

for (@ffiframeworks) {
        print "$_\n";
}

