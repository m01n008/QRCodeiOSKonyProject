use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use JSONParser;
use FlexUIView;

package SwiftUIView;

sub new {
	my ($class, $swiftUIViewModel) = @_;
    my $self = {
    	MODEL => $swiftUIViewModel
    };
    bless $self, $class;
    return $self;
}

sub generateSwiftUIView{
	my ($self, $path) = @_;
	
	my $swiftUICode = getSwiftUIViewCode($self);
#	Save code to the path

	my $swiftUIViewName = $self->{MODEL}->{VIEW_NAME}.".swift";
	open SWIFT_VIEW_FILE, ">$path/$swiftUIViewName" or die "can't open $path File...";
    print SWIFT_VIEW_FILE $swiftUICode;
    close SWIFT_VIEW_FILE;
}

sub getSwiftUIViewCode{
	my ($self) = @_;
	
	my $swiftUIViewBodyCode = getSwiftUIBodyCode($self);
	my $swiftUIViewClass = $self->{MODEL}->{VIEW_NAME};
	
	my $swiftUIViewCode = <<here_doc;  #{{{3
import SwiftUI
import KonySwiftUISource

struct $swiftUIViewClass: View {
    var model: Dictionary<String, Any>
    
    init() {
        self.model = [:]
    }
    
    init(model: Dictionary<String, Any>) {
        self.model = model
    }
    
    var body: some View {
    	
$swiftUIViewBodyCode

    }
}
here_doc
# }}}
# ---

	return $swiftUIViewCode;
}

sub getSwiftUIBodyCode{
	my ($self) = @_;
	
	$self->{MODEL}->{VIEW_MODEL}->getView()->getSwiftUIViewCode();
	
#	my $rootFlexUIView = new FlexUIView($self->{MODEL}->{VIEW_MODEL});
#	$rootFlexUIView->getSwiftUIViewCode();
} 

1;