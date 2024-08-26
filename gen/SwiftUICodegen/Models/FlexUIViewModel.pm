use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use SwiftUIUtil;
use JSONParser;
use FlexUIView;

package FlexUIViewModel;

sub new {
	my ($class) = @_;
    my $self = {
		LAYOUT_TYPE => undef,
		REVERSE_LAYOUT_DIRECTION => undef,
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
    	VISIBILITY => undef,
    	BACKGROUND_COLOR => undef,
    	IS_FLEX_CONCENTRIC => undef,
    	CHILDREN => undef,
    	ID => undef,
		WIDGET_URL => undef,
		IS_ROOT_FLEX => undef
    };
    bless $self, $class;
    return $self;
}

sub getView{
	my ($self) = @_;
	return new FlexUIView($self);
}

sub getModelForJSON{
	my ($viewJSON) = @_;
	
	my $flexViewModel = new FlexUIViewModel();
	
	$flexViewModel->{LAYOUT_TYPE} = SwiftUIUtil::getLayoutType($viewJSON->{layouttype});
	$flexViewModel->{REVERSE_LAYOUT_DIRECTION} = SwiftUIUtil::shouldReverseLayout($viewJSON->{reverselayoutdirection});
	$flexViewModel->{LEFT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_left_});
	$flexViewModel->{LEFT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_left_});
	$flexViewModel->{CENTER_X_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{centerx});
	$flexViewModel->{CENTER_X_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{centerx});
	$flexViewModel->{RIGHT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_right_});
	$flexViewModel->{RIGHT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_right_});
	$flexViewModel->{TOP_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_top_});
	$flexViewModel->{TOP_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_top_});
	$flexViewModel->{CENTER_Y_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{centery});
	$flexViewModel->{CENTER_Y_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{centery});
	$flexViewModel->{BOTTOM_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_bottom_});
	$flexViewModel->{BOTTOM_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_bottom_});
	$flexViewModel->{WIDTH_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_width_});
	$flexViewModel->{WIDTH_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_width_});
	$flexViewModel->{HEIGHT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_height_});
	$flexViewModel->{HEIGHT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_height_});
	
	$flexViewModel->{VISIBILITY} = SwiftUIUtil::getVisibilityValue($viewJSON->{isvisible});
	$flexViewModel->{BACKGROUND_COLOR} = SwiftUIUtil::getColor($viewJSON->{_skin_}->{background_color});
	$flexViewModel->{IS_FLEX_CONCENTRIC} = SwiftUIUtil::getFlexRoundedBooleanFromSkinValue($viewJSON->{_skin_});
	
	$flexViewModel->{CHILDREN} = [];
	
	$flexViewModel->{ID} = $viewJSON->{id};

	$flexViewModel->{WIDGET_URL} = ($viewJSON->{widgetURL}) ? $viewJSON->{widgetURL} : undef;

	$flexViewModel->{IS_ROOT_FLEX} = 0;
	
	return $flexViewModel;
}

1;