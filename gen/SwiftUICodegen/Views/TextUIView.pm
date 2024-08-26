use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use JSONParser;

package TextUIView;

sub new {
	my ($class, $textUIViewModel) = @_;
    my $self = {
    	MODEL => $textUIViewModel
    };
    bless $self, $class;
    return $self;
}

sub getSwiftUIViewCode{
	my ($self) = @_;
	
	my $text = $self->{MODEL}->{TEXT};
	my $dateStyle = $self->{MODEL}->{DATE_STYLE};
	my $visibilityValue = $self->{MODEL}->{VISIBILITY};
	my $fontSize = $self->{MODEL}->{FONT_SIZE};
	my $fontColor = $self->{MODEL}->{FONT_COLOR};
	my $textContentAlignment = $self->{MODEL}->{CONTENT_ALIGNMENT};
	
	my $id = $self->{MODEL}->{ID};
	my $layoutModelName = "$id"."LayoutModel";

	my $textUIViewCode = "";
	
	$textUIViewCode = $textUIViewCode . "TextView(text: model[\"$id\"] ?? \"$text\", id: \"$id\", dateStyle: $dateStyle";

	$textUIViewCode = $textUIViewCode . ", layoutModel: $layoutModelName, parentLayoutModel: parentLayoutModel, siblingsLayoutModels: siblingsLayoutModels";
	
	$textUIViewCode = $textUIViewCode.", visibility: $visibilityValue, fontSize: $fontSize, fontColor: \"$fontColor\", textAlignment: $textContentAlignment)\n";

	return $textUIViewCode;
}

sub getSwiftUILayoutCode{
	my ($self) = @_;

	my $textUIViewLayoutCode = "";

	my $id = $self->{MODEL}->{ID};
	my $layoutModelName = "$id"."LayoutModel";

	my $leftValue = $self->{MODEL}->{LEFT_VALUE};
	my $leftPercentage = $self->{MODEL}->{LEFT_PERCENTAGE};
	
	my $centerXValue = $self->{MODEL}->{CENTER_X_VALUE};
	my $centerXPercentage = $self->{MODEL}->{CENTER_X_PERCENTAGE};
	
	my $rightValue = $self->{MODEL}->{RIGHT_VALUE};
	my $rightPercentage = $self->{MODEL}->{RIGHT_PERCENTAGE};
	
	my $topValue = $self->{MODEL}->{TOP_VALUE};
	my $topPercentage = $self->{MODEL}->{TOP_PERCENTAGE};
	
	my $centerYValue = $self->{MODEL}->{CENTER_Y_VALUE};
	my $centerYPercentage = $self->{MODEL}->{CENTER_Y_PERCENTAGE};
	
	my $bottomValue = $self->{MODEL}->{BOTTOM_VALUE};
	my $bottomPercentage = $self->{MODEL}->{BOTTOM_PERCENTAGE};
	
	my $widthValue = $self->{MODEL}->{WIDTH_VALUE};
	my $widthPercentage = $self->{MODEL}->{WIDTH_PERCENTAGE};
	
	my $heightValue = $self->{MODEL}->{HEIGHT_VALUE};
	my $heightPercentage = $self->{MODEL}->{HEIGHT_PERCENTAGE};

	$textUIViewLayoutCode = $textUIViewLayoutCode . "let $layoutModelName: FlexLayoutModel = FlexLayoutModel(";

	$textUIViewLayoutCode = $textUIViewLayoutCode . "id: \"$id\",";

	if(defined $leftValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."leftValue: $leftValue,";
	}
	
	if(defined $leftPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."leftPercentage: $leftPercentage,";
	}
	
	if(defined $centerXValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."centerXValue: $centerXValue,";
	}
	
	if(defined $centerXPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."centerXPercentage: $centerXPercentage,";
	}
	
	if(defined $rightValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."rightValue: $rightValue,";
	}
	
	if(defined $rightPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."rightPercentage: $rightPercentage,";
	}
	
	if(defined $topValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."topValue: $topValue,";
	}
	
	if(defined $topPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."topPercentage: $topPercentage,";
	}
	
	if(defined $centerYValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."centerYValue: $centerYValue,";
	}
	
	if(defined $centerYPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."centerYPercentage: $centerYPercentage,";
	}
	
	if(defined $bottomValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."bottomValue: $bottomValue,";
	}
	
	if(defined $bottomPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."bottomPercentage: $bottomPercentage,";
	}
	
	if(defined $widthValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."widthValue: $widthValue,";
	}
	
	if(defined $widthPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."widthPercentage: $widthPercentage,";
	}
	
	if(defined $heightValue){
		$textUIViewLayoutCode = $textUIViewLayoutCode."heightValue: $heightValue,";
	}
	
	if(defined $heightPercentage){
		$textUIViewLayoutCode = $textUIViewLayoutCode."heightPercentage: $heightPercentage,";
	}

#	Removing the last comma (,)
	chop($textUIViewLayoutCode);

	$textUIViewLayoutCode = $textUIViewLayoutCode . ")";

	return ($layoutModelName, $textUIViewLayoutCode);
}

1;