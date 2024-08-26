use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use JSONParser;

package ImageUIView;

sub new {
	my ($class, $imageUIViewModel) = @_;
    my $self = {
    	MODEL => $imageUIViewModel
    };
    bless $self, $class;
    return $self;
}

sub getSwiftUIViewCode{
	my ($self) = @_;
	
	my $imageSource = $self->{MODEL}->{SOURCE};
	my $visibilityValue = $self->{MODEL}->{VISIBILITY};
	
	my $id = $self->{MODEL}->{ID};
	my $layoutModelName = "$id"."LayoutModel";

	my $imageUIViewCode = "";

	$imageUIViewCode = $imageUIViewCode . "ImageView(name: model[\"$id\"] ?? \"$imageSource\", id: \"$id\"";
	
	$imageUIViewCode = $imageUIViewCode . ", layoutModel: $layoutModelName, parentLayoutModel: parentLayoutModel, siblingsLayoutModels: siblingsLayoutModels";
	
	$imageUIViewCode = $imageUIViewCode.", visibility: $visibilityValue, contentMode: .fit)\n";

	return $imageUIViewCode;
}

sub getSwiftUILayoutCode{
	my ($self) = @_;

	my $imageUIViewLayoutCode = "";

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

	$imageUIViewLayoutCode = $imageUIViewLayoutCode . "let $layoutModelName: FlexLayoutModel = FlexLayoutModel(";

	$imageUIViewLayoutCode = $imageUIViewLayoutCode . "id: \"$id\",";

	if(defined $leftValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."leftValue: $leftValue,";
	}
	
	if(defined $leftPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."leftPercentage: $leftPercentage,";
	}
	
	if(defined $centerXValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."centerXValue: $centerXValue,";
	}
	
	if(defined $centerXPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."centerXPercentage: $centerXPercentage,";
	}
	
	if(defined $rightValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."rightValue: $rightValue,";
	}
	
	if(defined $rightPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."rightPercentage: $rightPercentage,";
	}
	
	if(defined $topValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."topValue: $topValue,";
	}
	
	if(defined $topPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."topPercentage: $topPercentage,";
	}
	
	if(defined $centerYValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."centerYValue: $centerYValue,";
	}
	
	if(defined $centerYPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."centerYPercentage: $centerYPercentage,";
	}
	
	if(defined $bottomValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."bottomValue: $bottomValue,";
	}
	
	if(defined $bottomPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."bottomPercentage: $bottomPercentage,";
	}
	
	if(defined $widthValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."widthValue: $widthValue,";
	}
	
	if(defined $widthPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."widthPercentage: $widthPercentage,";
	}
	
	if(defined $heightValue){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."heightValue: $heightValue,";
	}
	
	if(defined $heightPercentage){
		$imageUIViewLayoutCode = $imageUIViewLayoutCode."heightPercentage: $heightPercentage,";
	}

#	Removing the last comma (,)
	chop($imageUIViewLayoutCode);

	$imageUIViewLayoutCode = $imageUIViewLayoutCode . ")";

	return ($layoutModelName, $imageUIViewLayoutCode);
}

1;