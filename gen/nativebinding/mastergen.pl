#!/usr/bin/perl -w

open(INCLUDES, '>allheaders.h');
open(HEADERS, '<input_headers');
while (<HEADERS>) {
    chomp($line = $_);
    print INCLUDES "#import <$line>\n";
}
close(INCLUDES);
close(HEADERS);

open(ALLPROTOS, '>allprotos.h');
open(CLASSES, '<classes');
while (<CLASSES>) {
    chomp($class = $_);
    print ALLPROTOS "\@protocol " . $class . "InstanceExports;\n";
    print ALLPROTOS "\@protocol " . $class . "ClassExports;\n";
}
close(CLASSES);
open(PROTOCOLS, '<protocols');
while (<PROTOCOLS>) {
    chomp($proto = $_);
    print ALLPROTOS "\@protocol " . $proto . "InstanceExports_;\n";
    print ALLPROTOS "\@protocol " . $proto . "ClassExports_;\n";
}
close(ALLPROTOS);
close(PROTOCOLS);

open(MASTER, '>loadall.m');
print MASTER <<_EOM1_;
#import "allincludes.h"

void loadAllModules(JSContext* context)
{
_EOM1_
open(INCLUDES, '>allincludes.h');
open(PARTS, '<parts');
while (<PARTS>) {
    chomp($part = $_);
    print INCLUDES "#import \"$part.h\"\n";
    print MASTER "\tload_" . $part . "_symbols(context);\n";
}
close INCLUDES;
close PARTS;

print MASTER <<_EOM2_;
}

JSValue* extractStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
_EOM2_

open(PARTS, '<parts_sa');
my $elseFlag = 0;
while (<PARTS>) {
    chomp($part = $_);

    open(PART_SA, "<$part");
    if ($elseFlag) {
        print MASTER " else ";
    } else {
        $elseFlag = 1;
        print MASTER "\t";
    }
    while (<PART_SA>) {
        print MASTER $_;
    }
    close PART_SA;
}
close PARTS;

print MASTER <<_EOM3_;
    return nil;
}

void setStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
_EOM3_

open(PARTS, '<parts_sr');
$elseFlag = 0;
while (<PARTS>) {
    chomp($part = $_);

    open(PART_SR, "<$part");
    if ($elseFlag) {
        print MASTER " else ";
    } else {
        $elseFlag = 1;
        print MASTER "\t";
    }
    while (<PART_SR>) {
        print MASTER $_;
    }
    close PART_SR;
}
close PARTS;

print MASTER "\n}\n\n";
close MASTER;
