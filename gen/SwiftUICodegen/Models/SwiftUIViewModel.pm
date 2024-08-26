use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use JSONParser;
use SwiftUIView;

package SwiftUIViewModel;

sub new {
	my ($class, $viewClassName) = @_;
    my $self = {
    	VIEW_NAME => $viewClassName,
    	VIEW_MODEL => undef
    };
    bless $self, $class;
    return $self;
}

sub getView{
	my ($self) = @_;
	return new SwiftUIView($self);
}

1;