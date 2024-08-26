use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use JSONParser;
use ImageUIView;

package ImageUIViewModel;

sub new {
	my ($class) = @_;
    my $self = {
    	LEFT_VALUE => undef, 
    	LEFT_PERCENTAGE => undef,
    	CENTER_X_VALUE => undef,
    	CENTER_X_PERCENTAGE => undef,
    	RIGHT_VALUE => undef,
    	RIGHT_PERCENTAGE => undef,
    	TOP_VALUE => undef,
    	TOP_PERCENTAGE => undef,
    	CENTER_Y_VALUE => undef,
    	CENTER_Y_PERCENTAGE => undef,
    	BOTTOM_VALUE => undef,
    	BOTTOM_PERCENTAGE => undef,
    	WIDTH_VALUE => undef,
    	WIDTH_PERCENTAGE => undef,
    	HEIGHT_VALUE => undef,
    	HEIGHT_PERCENTAGE => undef,
    	SOURCE => undef,
    	VISIBILITY => undef,
    	CONTENT_MODE => undef,
    	ID => undef
    };
    bless $self, $class;
    return $self;
}

sub getView{
	my ($self) = @_;
	return new ImageUIView($self);
}

sub getModelForJSON{
	my ($viewJSON) = @_;
	
	my $imageViewModel = new ImageUIViewModel();
	
	$imageViewModel->{LEFT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_left_});
	$imageViewModel->{LEFT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_left_});
	$imageViewModel->{CENTER_X_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{centerx});
	$imageViewModel->{CENTER_X_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{centerx});
	$imageViewModel->{RIGHT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_right_});
	$imageViewModel->{RIGHT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_right_});
	$imageViewModel->{TOP_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_top_});
	$imageViewModel->{TOP_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_top_});
	$imageViewModel->{CENTER_Y_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{centery});
	$imageViewModel->{CENTER_Y_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{centery});
	$imageViewModel->{BOTTOM_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_bottom_});
	$imageViewModel->{BOTTOM_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_bottom_});
	$imageViewModel->{WIDTH_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_width_});
	$imageViewModel->{WIDTH_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_width_});
	$imageViewModel->{HEIGHT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_height_});
	$imageViewModel->{HEIGHT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_height_});
	
	$imageViewModel->{SOURCE} = SwiftUIUtil::getImageSourceName($viewJSON->{_src_});
	$imageViewModel->{VISIBILITY} = SwiftUIUtil::getVisibilityValue($viewJSON->{isvisible});
	$imageViewModel->{CONTENT_MODE} = "fit";
	$imageViewModel->{ID} = $viewJSON->{id};
	return $imageViewModel;
}

1;