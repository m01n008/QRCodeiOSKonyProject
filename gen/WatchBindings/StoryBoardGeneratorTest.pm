#!/usr/bin/perl -w
use strict;
use warnings;
use feature qw(say);
use StoryBoardGenerator;
use GlobalModel;
use GlobalModelTest;

package StoryBoardGeneratorTest;

GlobalModelTest->test();

my @forms = GlobalModel->getFormModels();
use Data::Dumper;
#print Dumper @forms;

my $sbGenerator = new StoryBoardGenerator();

$sbGenerator->init(@forms);