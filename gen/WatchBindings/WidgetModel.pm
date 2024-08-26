#!/usr/bin/perl -w

package WidgetModel;

use strict;
use Data::Dumper;

sub new
{
    my ($class, %dataHash) = @_;
    my $self = {};
    if (%dataHash) {
    	$self = \%dataHash;
    }
    bless $self, $class;
    return $self;
}

sub setDataHash
{
	my ($self, %dataHash) = @_;
	my @hashKeys = keys %dataHash;
	for my $key (@hashKeys) {
		$self->{$key} = $dataHash{$key};
	}
}

sub getDataHash
{
 	my ($self) = @_;
 	return %$self;
}

sub setValueForKey
{
	my ($self, $key, $value) = @_;
	$self->{$key} = $value if defined($value);
}

sub getValueForKey
{
	my ($self, $key) = @_;
	return $self->{$key};
}

sub setFormattedValueForKey
{
	my ($self, $key, $value) = @_;
	
	if (!exists($self->{"formattedHash"})) {
		$self->{"formattedHash"} = {};
	}
	my $formattedHash = $self->{"formattedHash"};
	$formattedHash->{$key} = $value;
}

sub getFormattedValueForKey
{
	my ($self, $key) = @_;
	my $retVal;
	if (exists($self->{"formattedHash"})) {
	   my $formattedHash = $self->{"formattedHash"};
	   $retVal = $formattedHash->{$key}
	}
	else 
	{
	   $retVal = $self->getValueForKey($key);
	}
	return $retVal ;
}

sub getType {
    my ($self) = @_;
    return $self->getValueForKey("wType");
}

sub getClassType {
    my ($self) = @_;
    
    my $retValue;
    
    if (defined $self->getFormattedValueForKey("classtype"))
    {
    	$retValue = $self->getFormattedValueForKey("classtype");
    }
    else
    {
    	$retValue = $self->getValueForKey("wType");
    }

    return $retValue;
}


1;








