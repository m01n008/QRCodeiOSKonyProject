#!/usr/bin/perl
use v5.14;

package SimpleFormatter;

sub new
{
    my $class = shift;
    my $self = {
    };
    
    bless $self, $class;
    return $self;
}

sub invertBoolean {
    my ($self, $toggle) = @_;
    $toggle = $toggle ? 0 : 1;
    return $toggle;
}
1;
