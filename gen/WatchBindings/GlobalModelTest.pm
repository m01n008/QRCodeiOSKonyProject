#!/usr/bin/perl

use strict;
use warnings;
use feature qw(say);
use lib '../../gen';
use JSONParser;
use GlobalModel;

package GlobalModelTest;


sub test{

my $parser = new JSONParser(); 
use FileHandle;
my $fh = FileHandle->new("./Forms/mobile/Form00cd72a4229314c.sm/Form00cd72a4229314c.json", "r");
my $frmHash = $parser->parseJSONFileToHash($fh);
 $fh = FileHandle->new("./Forms/mobile/Form00cd72a4229314c.sm/Button052325c5e339346.json", "r");
my $btnHash = $parser->parseJSONFileToHash($fh);
 $fh = FileHandle->new("./Forms/mobile/Form00cd72a4229314c.sm/Label03488c6e9db364a.json", "r");
my $lblHash = $parser->parseJSONFileToHash($fh);

# use Data::Dumper;
# print Dumper $frmHash;

my %frm = %$frmHash;

    pop @{$frm{'children'}};
    pop @{$frm{'children'}};

    push @{$frm{'children'}},$btnHash;
    push @{$frm{'children'}},$lblHash;

# print Dumper \%frm;

my @frmSet;

push @frmSet, \%frm;

say "Size of form set: ", scalar(@frmSet);

my $gm = new GlobalModel();

my @models;
$gm->convertJSONHashesToModelArray(@frmSet);
@models = $gm->getFormModels();
my $frm1 = $models[0];
say $frm1->getValueForKey("id");
my @childs = $frm1->getChildrenList();

say "Size of children: " , scalar(@childs);

foreach (@childs) {
	my $widget = $_;
	say "Child is : ", $widget->getValueForKey("id");
}
}
1;

