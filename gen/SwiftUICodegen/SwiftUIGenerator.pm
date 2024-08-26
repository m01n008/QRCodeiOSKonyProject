use strict;
use warnings;

use lib '../../gen';
use JSONParser;
use lib '../SwiftUICodegen';
use SwiftUIModelFactory;
use lib '../SwiftUICodegen/Views';
use SwiftUIView;

package SwiftUIGenerator;

sub new {
	my ($class, $viewClassName, $viewJSON) = @_;
    my $self = {};
   
   	initialiseModels($self, $viewClassName, $viewJSON);
    
    bless $self, $class;
    return $self;
}

sub initialiseModels{
	my ($self, $viewClassName, $viewJSON) = @_;
	
	# Picking the root viewJSON first and only child as SwiftUI root view model json
	
	my $flexViewJSONChildrenRef = $viewJSON->{children};
	my $flexViewJSONMainFlex = @$flexViewJSONChildrenRef[0];
	
	# Defaulting the SwiftUI root view model json to left:0dp, top: 0dp, width: 100%, height: 100%
	$flexViewJSONMainFlex->{_left_}->{value} = "0dp";
	$flexViewJSONMainFlex->{_top_}->{value} = "0dp";
	$flexViewJSONMainFlex->{_width_}->{value} = "100%";
	$flexViewJSONMainFlex->{_height_}->{value} = "100%";
	
 	my $swiftUIViewModel = SwiftUIModelFactory::generateSwiftUIModel($self, $viewClassName, $flexViewJSONMainFlex);
    $self->{VIEW_MODEL} = $swiftUIViewModel;
}

sub generateSwiftUIView{
	my ($self, $path) = @_;
	
	$self->{VIEW_MODEL}->getView()->generateSwiftUIView($path);
	
#	my $swiftUIView = new SwiftUIView($self->{VIEW_MODEL});
#	$swiftUIView->generateSwiftUIView($path); 
}

1;