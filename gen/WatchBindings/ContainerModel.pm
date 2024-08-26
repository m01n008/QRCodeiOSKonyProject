#!/usr/bin/perl -w

package ContainerModel;

use strict;
use warnings;
use WidgetModel;
use Data::Dumper;

our @ISA = qw(WidgetModel);    # inherits from WidgetModel

#my @childrenList = ();

# Override constructor of WidgetModel
sub new {

	no warnings 'numeric';

    my ($class, %dataHash) = @_;
    # Call the constructor of the parent class, WidgetModel.
    my $self = $class->SUPER::new(%dataHash);
    $self->{childrenModels} = [];
    return $self;
}

sub addChild {
	my ($self, $childModel) = @_;
    push @{ $self->{childrenModels} }, $childModel;
}

sub getChildrenList {
	my ($self) = @_;
	return $self->{childrenModels};
}

sub addVariationsInFormattedHash {
	my ($self, $variationHashRef) = @_;
	my $formattedHashRef = $self->{"formattedHash"};
	if (!exists($formattedHashRef->{"variations"})) {
		$formattedHashRef->{"variations"} = [];
	}
	
	my $variationsArrayRef = $formattedHashRef->{"variations"};
    push (@{ $variationsArrayRef }, $variationHashRef);
}

sub removeAllOutLets {
	my ($self) = @_;
	my $formattedHashRef = $self->{"formattedHash"};
	if (exists($formattedHashRef->{"outlets"})) {
		$formattedHashRef->{"outlets"} = [];
	}
}

sub addOutletsInFormattedHash {
	my ($self, $outletHashRef) = @_;
	my $formattedHashRef = $self->{"formattedHash"};
	if (!exists($formattedHashRef->{"outlets"})) {
		$formattedHashRef->{"outlets"} = [];
	}
	
	my $outletsArrayRef = $formattedHashRef->{"outlets"};
    push (@{ $outletsArrayRef }, $outletHashRef);
# 	print Dumper($outletsArrayRef);
# 	print "\n";
}

sub addSelectorInFormattedHash {
	my ($self, $selectorHashRef) = @_;
	my $formattedHashRef = $self->{"formattedHash"};
	if (!exists($formattedHashRef->{"selectors"})) {
		$formattedHashRef->{"selectors"} = {};
	}
	
	my $selectorName = $selectorHashRef->{"selectorName"};
	
	my $selectorsHashRef = $formattedHashRef->{"selectors"};
	if (exists $selectorsHashRef->{$selectorName}) {
		## Don't add duplicate selector in the formController.m file.
	} else {
		$selectorsHashRef->{$selectorName} = $selectorHashRef;
	}
}

sub addSeguesInFormattedHash {
    my ($self, $segueHashRef) = @_;
    my $formattedHashRef = $self->{"formattedHash"};
    if (!exists($formattedHashRef->{"segues"})) {
        $formattedHashRef->{"segues"} = [];
    }
    
    my $seguesArrayRef = $formattedHashRef->{"segues"};
    push (@{ $seguesArrayRef }, $segueHashRef);
}

sub addMenuItemInFormattedHash {
    my ($self, $menuItemHashRef) = @_;
    my $formattedHashRef = $self->{"formattedHash"};
    if (!exists($formattedHashRef->{"menuItems"})) {
        $formattedHashRef->{"menuItems"} = [];
    }
    
    my $menuItemsArrayRef = $formattedHashRef->{"menuItems"};
    push (@{ $menuItemsArrayRef }, $menuItemHashRef);
}

sub addOnRowClickForSegmentInFormattedHash {
    my ($self, $onRowClickHashRef) = @_;
    my $formattedHashRef = $self->{"formattedHash"};
    if (!exists($formattedHashRef->{"onRowClick"})) {
        $formattedHashRef->{"onRowClick"} = [];
    }
    
    my $OnRowClickArrayRef = $formattedHashRef->{"onRowClick"};
    push (@{ $OnRowClickArrayRef }, $onRowClickHashRef);
}



1;





