#!/usr/bin/perl -w

package CodeGenerator;

use HeaderGenerator;
use SourceGenerator;

use strict;
use Data::Dumper;

sub new
{
    my ($class) = @_;
    my $self = [];
    bless $self, $class;
    return $self;
}


sub generateCodeBehindForFormModel {
	my ($self, $fModel) = @_;
	my @generatedFileNames;
	my $hGenerator = new HeaderGenerator();
 	my $mGenerator = new SourceGenerator();
	
	$generatedFileNames[0] = $hGenerator->generateHeaderForFormModel($fModel);
 	$generatedFileNames[1] = $mGenerator->generateSourceForFormModel($fModel);
	
	return @generatedFileNames;
}




1;