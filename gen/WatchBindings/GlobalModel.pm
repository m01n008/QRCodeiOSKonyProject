#!/usr/bin/perl -w

# It reads all the files exists in the specified directory and its sub directories. 
# Initially it looks for a form apparently with the folder name, and go through its children property to read its children. 

use strict;
use warnings;
use lib '../../gen';
use JSONParser;
use WidgetModel;
use ContainerModel;
use TemplateModel;
use feature qw(say);
use FormModel;
use Log::Log4perl;

package GlobalModel;

my %formModelsHash;
my %templateModelsHash;

my $logger = Log::Log4perl->get_logger("GlobalModel");

sub new {
	my $class = shift;
    my $self = {
    };
    
    bless $self, $class;
    return $self;
}

sub getFormModelsHash {
    return %formModelsHash;
}

sub getTemplateModelsHash {
	return %templateModelsHash;
}

sub convertWidgetHashToModelUtil {
	my ( $hashRef ) = @_;
	my $model;
	
	my $containerType = $hashRef->{'wType'};
	if ($containerType eq 'Form' || $containerType eq 'WatchStaticNotificationForm' || $containerType eq 'WatchDynamicNotificationForm' || $containerType eq 'WatchGlanceForm') {
		$model = new FormModel(%$hashRef);
	} elsif ($containerType eq 'Template') {
		$model = new TemplateModel(%$hashRef);
	} elsif ($containerType eq 'Group') {
		$model = new ContainerModel(%$hashRef);
	} else {
		$model = new WidgetModel(%$hashRef);
	}
	
	my $childrenListRef = $hashRef->{'children'};
	
	if (defined $childrenListRef) {
		for my $childHashRef (@$childrenListRef) {
			my $childModel = convertWidgetHashToModelUtil($childHashRef);
			$model->addChild($childModel);
		}
	}
	
	return $model;	
}


sub convertWidgetHashesToModels {
    my ( $self, $FormHashesRef, $TemplateHashesRef ) = @_;
    
    while ( my ($formId, $formHashRef) = each %$FormHashesRef ) {
		my $formModel = convertWidgetHashToModelUtil($formHashRef);
        $formModelsHash{$formId} = $formModel; 
    }
    
    while ( my ($templateId, $templateHashRef) = each %$TemplateHashesRef ) {
		my $templateModel = convertWidgetHashToModelUtil($templateHashRef);
        $templateModelsHash{$templateId} = $templateModel; 
    }
}


1;