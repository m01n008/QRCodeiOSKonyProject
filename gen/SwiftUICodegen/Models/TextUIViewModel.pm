use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use JSONParser;
use TextUIView;

package TextUIViewModel;

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
    	TEXT => undef,
    	DATE_STYLE => undef,
    	VISIBILITY => undef,
    	FONT_SIZE => undef,
    	FONT_COLOR => undef,
		CONTENT_ALIGNMENT => undef,
    	ID => undef
    };
    bless $self, $class;
    return $self;
}

sub getView{
	my ($self) = @_;
	return new TextUIView($self);
}

sub getModelForJSON{
	my ($viewJSON) = @_;
	
	my $textViewModel = new TextUIViewModel();
	
	$textViewModel->{LEFT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_left_});
	$textViewModel->{LEFT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_left_});
	$textViewModel->{CENTER_X_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{centerx});
	$textViewModel->{CENTER_X_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{centerx});
	$textViewModel->{RIGHT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_right_});
	$textViewModel->{RIGHT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_right_});
	$textViewModel->{TOP_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_top_});
	$textViewModel->{TOP_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_top_});
	$textViewModel->{CENTER_Y_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{centery});
	$textViewModel->{CENTER_Y_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{centery});
	$textViewModel->{BOTTOM_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_bottom_});
	$textViewModel->{BOTTOM_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_bottom_});
	$textViewModel->{WIDTH_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_width_});
	$textViewModel->{WIDTH_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_width_});
	$textViewModel->{HEIGHT_VALUE} = SwiftUIUtil::getDPValueFromString($viewJSON->{_height_});
	$textViewModel->{HEIGHT_PERCENTAGE} = SwiftUIUtil::getPercentageValueFromString($viewJSON->{_height_});

	$textViewModel->{TEXT} = $viewJSON->{_text_};
	$textViewModel->{DATE_STYLE} = SwiftUIUtil::getDateStyle($viewJSON->{dateStyle});
	$textViewModel->{VISIBILITY} = SwiftUIUtil::getVisibilityValue($viewJSON->{isvisible});
	$textViewModel->{FONT_SIZE} = SwiftUIUtil::getFontSize($viewJSON->{_skin_}->{font_size});
	$textViewModel->{FONT_COLOR} = SwiftUIUtil::getColor($viewJSON->{_skin_}->{font_color});
	$textViewModel->{CONTENT_ALIGNMENT} = SwiftUIUtil::getContentAlignment($viewJSON->{contentalignment});
	$textViewModel->{ID} = $viewJSON->{id};
	return $textViewModel;
}

1;