#!/usr/bin/perl -w

package TemplateModel;

use ContainerModel;

our @ISA = qw(ContainerModel);    # inherits from ContainerModel

# Override constructor of ContainerModel
sub new {
    my ($class, %dataHash) = @_;
    # Call the constructor of the parent class, ContainerModel.
    my $self = $class->SUPER::new(%dataHash);
    return $self;
}

1;