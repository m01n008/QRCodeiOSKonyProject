#!/usr/bin/perl -w

use Getopt::Long;
use Fcntl;
use Data::Dumper;
use XML::Parser;
use XML::Parser::EasyTree;

my $platformName = 'iphone';
my $swiftSupport = 0;
my $appName = "ProductName";

GetOptions("file=s" => \$xmlFile, "platform=s" => \$platformName, "swiftSupport=i" => \$swiftSupport, "appName=s" => \$appName);

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
my @ffibindings_APIs = ();
my %ffibindings_new = ();
my @ffiframeworks = ();

my $ffixmlversion = $$xmldata[0]->{'attrib'}->{'ffixmlversion'}; 
$ffixmlversion = "1.0" if (!$ffixmlversion);

my $language = $$xmldata[0]->{'attrib'}->{'language'};
$language = "lua" if (!$language);

#print "language: $language xmlversion : $ffixmlversion\n";

my $luanamespace = $$xmldata[0]->{'content'}[0]->{'attrib'}->{'name'};
my $apiname = $luanamespace;

if (!$apiname) {
	exit 0;
}

$apiname =~ s/\b(\w)/\U$1/g;

push (@ffibindings_APIs, $apiname."FFIAPI");
open HEADER_FILE, ">".$apiname."FFIAPI.h";
open SOURCE_FILE, ">".$apiname."FFIAPI.m";

print HEADER_FILE "//\n//  ".$apiname."FFIAPI.h\n";
print HEADER_FILE <<_EOC2_;
//  Coda - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LuaAPI.h"

_EOC2_

my %importfileshash = ();

print SOURCE_FILE "//\n//  ".$apiname."FFIAPI.m\n";
print SOURCE_FILE <<_EOC21_;
//  Coda - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

#import "LuaAPI.h"
#import "lglobals.h"
#import "KonyValueConversionUtility.h"
_EOC21_
        print SOURCE_FILE "\#import \"".$apiname."FFIAPI.h\"\n\n\n";
        if ($swiftSupport =~ 1) {
            $appName =~ tr/ /_/;
			print SOURCE_FILE "\n#import <$appName/$appName-Swift.h>\n";
		}
	if ($platformName =~ /iphone/) {
		$iosheader = $xmldata->[0]->{'content'}->[0]->{'attrib'}->{'iphoneheaders'};
	} else {
		$iosheader = $xmldata->[0]->{'content'}->[0]->{'attrib'}->{'ipadheaders'};
		if(!$iosheader) {
			$iosheader = $xmldata->[0]->{'content'}->[0]->{'attrib'}->{'iphoneheaders'};
		}
	}
	
	#my @importfiles = split(/\|/,$xmldata->[0]->{'content'}->[0]->{'attrib'}->{'iphoneheaders'});
	my @importfiles = split(/\|/,$iosheader);
	foreach (@importfiles) {
		my @importfilesline = split(/:/,$_);
		my @importfileslist = split(/\//,$importfilesline[1]);
		$importfileshash{$importfilesline[0]} = \@importfileslist;
		foreach (@importfileslist) {
			print SOURCE_FILE "\#import \"".$_."\"\n";
		}
	}

print SOURCE_FILE "\n\@implementation ".$apiname."FFIAPI\n\n";

print SOURCE_FILE "\n";

print SOURCE_FILE "\n\#pragma mark -\n";
print SOURCE_FILE "\#pragma mark LuaBindings\n";

print HEADER_FILE "\@interface ".$apiname."FFIAPI : LuaAPI\n\n";

sub extractArgumentAtIndex {
        my $argsname = shift @_;
        my $argname = shift @_;
        my $index = shift @_;

        my $CONTENT = "\t$argname = nil;\n";
        $CONTENT .= "\tif([$argsname count] > $index) { \n";
        $CONTENT .= "\t\t$argname = [$argsname objectAtIndex:$index];\n\t}";

        return $CONTENT;
}

# For each luamethod
my $luamethodsarr = $xmldata->[0]->{'content'}->[0]->{'content'};
LINE: for ( @{$luamethodsarr}) {
	#print Dumper($_);
	#print "start new method tag\n";	
	my $iphonemappingfound = 0;
	
	foreach my $mappingtag (@{$_->{'content'}->[1]->{'content'}}) {
		if ($mappingtag->{'attrib'}->{'platform'} =~ /$platformName/) {
			#print "Processing mapping of platform : $platformName \n";
			$iphonemapping = $mappingtag;
			$iphonemappingfound = 1;
		}
	}
	next LINE if ($iphonemappingfound != 1);

	# Read systemframeworks list for mapping.
	my $req_frameworks = $iphonemapping->{'attrib'}->{'frameworks'};
	if ($req_frameworks) {
		push (@ffiframeworks, split(/,/,$req_frameworks)); 
	}

		my $luabinding = $_->{'attrib'}->{'name'};
		print HEADER_FILE "+ (NSArray *)$luabinding:(NSArray *)args;\n";
		print SOURCE_FILE "\n";
		print SOURCE_FILE "+ (NSArray *)$luabinding:(NSArray *)args {\n";
		
		# If Instance method, expected first argument is of the method class
		my @parameters = ();
		my @releasableparameters = ();
		my $paramcount = 0;
		
		my $methodreturntype = $iphonemapping->{'attrib'}->{'returntype'};
		my $methodname = $_->{'attrib'}->{'name'};
		my $methodisstatic = $iphonemapping->{'attrib'}->{'static'};
		my $methodclassname = $iphonemapping->{'attrib'}->{'class'};
		my $methodfunctionname = $iphonemapping->{'attrib'}->{'method'};
		
		$ffibindings_new{$methodname} = "\@selector($methodname:)";

		my $param_count = @{$_->{'content'}->[0]->{'content'}};
		$param_count += 1 if ($methodisstatic =~ /false/);
		if ($param_count > 0) {
			print SOURCE_FILE "\tid arg = nil;\n\n";
		}
		if ($methodisstatic =~ /false/) {
			print SOURCE_FILE ("\n\t/* ". ($paramcount+1) ."\. instanceObj (type: $methodclassname) */\n");
			print SOURCE_FILE "\t$methodclassname *instanceObj = nil;\n";
			my $CONTENT = extractArgumentAtIndex("args", "arg", $paramcount);
			print SOURCE_FILE "\n$CONTENT\n";
			print SOURCE_FILE "\n\tif ([arg isKindOfClass:[$methodclassname class]]) {\n";
			print SOURCE_FILE "\t\tinstanceObj = \[arg retain\];\n";
			print SOURCE_FILE "\t}\n";
			push(@releasableparameters,"instanceObj");
			$paramcount++;
		}
		
		# For each param
		my $index = 0;
		for my $param (@{$_->{'content'}->[0]->{'content'}}) {
			my $paramname = $param->{'attrib'}->{'name'};
			my $paramtype = $param->{'attrib'}->{'type'};
			push(@parameters,$paramname);
			print SOURCE_FILE ("\n\t/* ". ($paramcount+1) ."\. $paramname (type: $paramtype) */");
			my $CONTENT = extractArgumentAtIndex("args", "arg", $paramcount);
			print SOURCE_FILE "\n$CONTENT\n";
			if($paramtype =~ /number/i) {
				my $paramMappingType = $_->{'content'}->[1]->{'content'}->[0]->{'content'}->[0]->{'content'}->[$index]->{'attrib'}->{'type'};
				print SOURCE_FILE "\n\t/* number mapped to $paramMappingType */\n";

				print SOURCE_FILE "\targ = \[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeNumber error:nil\];\n";

				if ($paramMappingType =~ /int/i) {
					print SOURCE_FILE "\n\tint $paramname = 0;\n";
					print SOURCE_FILE "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
					print SOURCE_FILE "\t\t$paramname = \[arg intValue\];\n";
					print SOURCE_FILE "\t}\n\n";
				} elsif ($paramMappingType =~ /double/i) {
					print SOURCE_FILE "\n\tdouble $paramname = 0;\n";
					print SOURCE_FILE "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
					print SOURCE_FILE "\t\t$paramname = \[arg doubleValue\];\n";
					print SOURCE_FILE "\t}\n\n";
				} elsif ($paramMappingType =~ /float/i) {
					print SOURCE_FILE "\n\tfloat $paramname = 0;\n";
					print SOURCE_FILE "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
					print SOURCE_FILE "\t\t$paramname = \[arg floatValue\];\n";
					print SOURCE_FILE "\t}\n\n";
				} elsif ($paramMappingType =~ /long/i) {
					print SOURCE_FILE "\n\tlong $paramname = 0;\n";
					print SOURCE_FILE "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
					print SOURCE_FILE "\t\t$paramname = \[arg longValue\];\n";
					print SOURCE_FILE "\t}\n\n";
				} else {
					print SOURCE_FILE "\n\tNSNumber *$paramname = nil;\n";
					print SOURCE_FILE "\tif([arg isKindOfClass:[NSNumber class]]) {\n";
					print SOURCE_FILE "\t\t$paramname = \[arg retain\];\n";
					print SOURCE_FILE "\t}\n\n";
					push(@releasableparameters,$paramname);
				}
			} elsif($paramtype =~ /string/i) {
				print SOURCE_FILE "\n\tNSString *$paramname = nil;\n";
				print SOURCE_FILE "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeString error:nil\] retain\];\n";
				push(@releasableparameters,$paramname);
			} elsif($paramtype =~ /LuaTable/i) {
				my $paramMappingType = $_->{'content'}->[1]->{'content'}->[0]->{'content'}->[0]->{'content'}->[$index]->{'attrib'}->{'type'};
				print SOURCE_FILE ("\n\t/* Mapping $paramtype->$paramMappingType */");

				if ($paramMappingType =~ /NSDictionary/i) {
					print SOURCE_FILE "\n\tNSDictionary *$paramname = nil;\n";
				} else {
					print SOURCE_FILE "\n\tNSArray *$paramname = nil;\n";
				}
				if ($paramMappingType =~ /NSDictionary/i) {
					print SOURCE_FILE "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil\] retain\];\n";
				} else {
					print SOURCE_FILE "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeArray error:nil\] retain\];\n";
				}
				push(@releasableparameters,$paramname);
			} elsif($paramtype =~ /Closure/i) {
				print SOURCE_FILE "\n\tCallBack *$paramname = nil;\n";
				print SOURCE_FILE "\t$paramname = \[\[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil\] retain\];\n";
				push(@releasableparameters,$paramname);
			} elsif($paramtype =~ /boolean/i) {
				print SOURCE_FILE "\n\tBOOL $paramname;\n";
				print SOURCE_FILE "\targ = \[\[KonyValueConversionUtility sharedInstance\] convertValue:arg toType:KonyValueTypeNativeBool error:nil\];\n";
				print SOURCE_FILE "\t\t$paramname = [arg boolValue]?YES:NO;\n";
			} else { # to support userdata
				print SOURCE_FILE "\n\tid $paramname;\n";
				print SOURCE_FILE "\t$paramname = \[arg retain\];\n";
				push(@releasableparameters,$paramname);
			}
			
			$paramcount++;
			$index++;
		}

		# Call to the foreign function
		my $star = ($methodreturntype =~ /(void|id|BOOL|int|long|float|double)$/)?"":" *";
		if ($methodisstatic =~ /false/) {
			print SOURCE_FILE "\n\t/* - ($methodreturntype".$star.")[$methodclassname $methodfunctionname]; */\n";
		} else {
			print SOURCE_FILE "\n\t/* + ($methodreturntype".$star.")[$methodclassname $methodfunctionname]; */\n";
		}

		$methodfunctionname =~ s/\s//g;
		my @objcmethod = split(/(:)/,$methodfunctionname);
		if ($methodreturntype =~ /void/) {
			if ($methodisstatic =~ /true/) {
				print SOURCE_FILE "\t[$methodclassname";
			} else {
				print SOURCE_FILE "\t[instanceObj";
			}
			my $i = 0;
			if (scalar(@objcmethod) == 1) {
				print SOURCE_FILE " $objcmethod[0]";
				print SOURCE_FILE ":$parameters[0]" if (scalar(@parameters == 1));
			} else {
				foreach my $methodpart (@objcmethod) {
					print SOURCE_FILE " $methodpart:$parameters[$i++]" if ($methodpart !~ /\:$/);
				}
			}
			print SOURCE_FILE "];\n\n";
			
			foreach my $releasableparam (@releasableparameters) {
				print SOURCE_FILE "\t\[$releasableparam release\];\n";
			}
			
			# Return value
			print SOURCE_FILE "\n\treturn nil;\n";
		} else {
			if ($methodreturntype =~ /BOOL/i) {
				print SOURCE_FILE "\tBOOL returnValue = ";
			} elsif ($methodreturntype =~ /int/i) {
				print SOURCE_FILE "\tint returnValue = ";
			} elsif ($methodreturntype =~ /long/i) {
				print SOURCE_FILE "\tlong returnValue = ";
			} elsif ($methodreturntype =~ /float/i) {
				print SOURCE_FILE "\tfloat returnValue = ";
			} elsif ($methodreturntype =~ /double/i) {
				print SOURCE_FILE "\tdouble returnValue = ";
			} else { 
				print SOURCE_FILE "\tid returnValue = ";
			}
			
			if ($methodisstatic =~ /true/) {
				print SOURCE_FILE "[$methodclassname";
			} else {
				print SOURCE_FILE "[instanceObj";
			}

			my $i = 0;
			if (scalar(@objcmethod) == 1) {
				print SOURCE_FILE " $objcmethod[0]";
				print SOURCE_FILE ":$parameters[0]" if (scalar(@parameters == 1));
			} else {
				foreach my $methodpart (@objcmethod) {
					print SOURCE_FILE " $methodpart:$parameters[$i++]" if ($methodpart !~ /\:$/);
				}
			}
			print SOURCE_FILE "];\n\n";
			
			foreach my $releasableparam (@releasableparameters) {
				print SOURCE_FILE "\t\[$releasableparam release\];\n";
			}
			
			# Return value
			if ($methodreturntype =~ /BOOL/i) {
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:returnValue?lTrue:lFalse];\n";
			} elsif ($methodreturntype =~ /int/i) {
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:[NSNumber numberWithInt:returnValue]];\n";
			} elsif ($methodreturntype =~ /long/i) {
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:[NSNumber numberWithLong:returnValue]];\n";
			} elsif ($methodreturntype =~ /float/i) {
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:[NSNumber numberWithFloat:returnValue]];\n";
			} elsif ($methodreturntype =~ /double/i) {
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:[NSNumber numberWithDouble:returnValue]];\n";
			} elsif ($methodreturntype =~ /NSArray/i) {
				print SOURCE_FILE "\n\tid retLuaTable = getLuaTableFromNSArray(returnValue);\n";
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:(retLuaTable!=nil)?retLuaTable:lNil];\n";
			} elsif ($methodreturntype =~ /NSDictionary/i) {
				print SOURCE_FILE "\n\tid retLuaTable = getLuaTableFromNSDictionary(returnValue);\n";
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:(retLuaTable!=nil)?retLuaTable:lNil];\n";
			} else {
				print SOURCE_FILE "\n\treturn [NSArray arrayWithObject:(returnValue!=nil)?returnValue:lNil];\n";
			}
		}

		print SOURCE_FILE "}\n";
	}

	print HEADER_FILE <<_EOC3_;

+ (void)loadLuaLib:(LuaTable *)globalTable;

\@end

_EOC3_

	print SOURCE_FILE <<_EOC31_;

\#pragma mark -
\#pragma mark Loading LuaBindings into VM

/** \@brief Load the lua bindings into VM
 *  \@param globalTable For holding the bindings information globally
 **/
+ (void)loadLuaLib:(LuaTable *)globalTable {

_EOC31_

	my ($ffiapinames, $ffiselectornames) = ('', '');

	print SOURCE_FILE ("\tNSString *".$luanamespace."FFIAPINames[] = { ");
	foreach (keys %ffibindings_new) {
		$ffiapinames .= "\@\"$_\", ";
	}
	$ffiapinames =~ s/, $//g;
	print SOURCE_FILE $ffiapinames;
	print SOURCE_FILE " };\n\n";

	print SOURCE_FILE ("\tSEL ".$luanamespace."FFIAPIs[] = { ");
	foreach (keys %ffibindings_new) {
		$ffiselectornames .= $ffibindings_new{$_}.", ";
	}
	$ffiselectornames =~ s/, $//g;
	print SOURCE_FILE $ffiselectornames;
	print SOURCE_FILE "};\n\n";

	print SOURCE_FILE ("\t\[".$apiname."FFIAPI loadLibInto:globalTable \
		\t\t\twithLibName:\@\"$luanamespace\" \
		\t\t\tofClass:[".$apiname."FFIAPI class] \
		\t\t\twithSelectors:".$luanamespace."FFIAPIs \
		\t\t\tandNames:".$luanamespace."FFIAPINames \
		\t\t\tnum:sizeof\(".$luanamespace."FFIAPIs\) / sizeof\(SEL\)\];");
	print SOURCE_FILE "\n\n}\n\n\@end\n";

close HEADER_FILE;
close SOURCE_FILE;

for (@ffiframeworks) {
	print "$_\n";
}
if (keys(%ffibindings_new)) {
	print $apiname."FFIAPI.h\n";
	print $apiname."FFIAPI.m\n";
}

