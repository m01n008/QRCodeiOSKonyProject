#!/usr/bin/perl -w

use strict;
use warnings;

# A base class to hold all the story board configuration xml data

package XMLElement;

sub new {
	my $class = shift;
    my $self = {
    	attributes => [],
    	nodes => [],
    	name=>"",
    	type => undef,
    	minAttributeCount => undef,
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

sub getAttributes {
	my ( $self ) = @_;
	return $self->{attributes};
}

sub setAttributes {
	my ( $self, $attribs ) = @_;
	$self->{attributes} = $attribs;
}

sub addAttribute {
	my ( $self, $attrib) = @_;
    push @{ $self->{attributes} }, $attrib;
}

sub getNodes {
	my ( $self ) = @_;
	return $self->{nodes};
}

sub setNodes {
	my ( $self, $nodes ) = @_;
	$self->{nodes} = $nodes;
}

sub addNode {
	my ( $self , $element) = @_;
    push @{ $self->{nodes} }, $element;
}

sub toString {
	my ( $self ) = @_;
	return $self->{element};
}

sub setMinAttributeCount {
	my ( $self, $minAttributeCount ) = @_;
	$self->{minAttributeCount} = $minAttributeCount;
}

sub getMinAttributeCount {
	my ( $self ) = @_;
	return $self->{minAttributeCount};
}

1;
