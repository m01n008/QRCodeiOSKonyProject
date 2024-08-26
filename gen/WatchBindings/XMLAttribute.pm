#!/usr/bin/perl -w

use strict;
use warnings;

# Class to hold an attribute configuration data

package XMLAttribute;

sub new {
	my $class = shift;
    my $self = {
    	type => "",
    	name => "",
    	inputKey => "",
    	value => undef,
    };
    
    bless $self, $class;
    return $self;
}

sub getName {
	my ( $self ) = @_;
	return $self->{name};
}

sub setName {
	my ( $self, $name ) = @_;
	$self->{name} = $name;
}

sub getType {
	my ( $self ) = @_;
	return $self->{type};
}

sub setType {
	my ( $self, $type ) = @_;
	$self->{type} = $type;
}

sub getDefaultValue {
    my ( $self ) = @_;
    return $self->{value};
}

sub setDefaultValue {
    my ( $self, $type ) = @_;
    $self->{value} = $type;
}

sub getInputKey {
	my ( $self ) = @_;
	return $self->{inputKey};
}

sub setInputKey {
	my ( $self, $inputKey ) = @_;
	$self->{inputKey} = $inputKey;
}

sub toString {
	my ( $self ) = @_;
	return $self->{name};
}

1;
