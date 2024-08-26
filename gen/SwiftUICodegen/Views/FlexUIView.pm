use strict;
use warnings;

use lib '../../../gen';
use lib '../../SwiftUICodegen';
use lib '../../SwiftUICodegen/Views';
use SwiftUIUtil;
use JSONParser;

package FlexUIView;

sub new {
	my ($class, $flexUIViewModel) = @_;
    my $self = {
    	MODEL => $flexUIViewModel
    };
    bless $self, $class;
    return $self;
}

sub getSwiftUIViewCode{
	my ($self) = @_;
	
	my $flexUIViewLayoutCode = getSwiftUIChildrenLayoutCode($self);
	my $flexUIViewBodyCode = getSwiftUIBodyCode($self);
	
	my $visibilityValue = $self->{MODEL}->{VISIBILITY};
	
	my $backgroundColor = $self->{MODEL}->{BACKGROUND_COLOR};

	my $isFlexConcentric = $self->{MODEL}->{IS_FLEX_CONCENTRIC} ? "true" : "false";
	my $id = $self->{MODEL}->{ID};
	my $layoutModelName = "$id"."LayoutModel";

	my $widgetURL = $self->{MODEL}->{WIDGET_URL};

	my $flexUIViewCode = "";

	if($self->{MODEL}->{IS_ROOT_FLEX} == 1){
		my ($rootFlexUIViewLayoutName, $rootFlexUIViewLayoutCode) = getSwiftUILayoutCode($self);
		$flexUIViewCode = $flexUIViewCode . $rootFlexUIViewLayoutCode . "\n\n";
	}

	$flexUIViewCode = $flexUIViewCode . "FlexView(id: \"$id\"";
	$flexUIViewCode = $flexUIViewCode . ", layoutModel: $layoutModelName";

	if($self->{MODEL}->{IS_ROOT_FLEX} == 0){
		$flexUIViewCode = $flexUIViewCode . ", parentLayoutModel: parentLayoutModel, siblingsLayoutModels: siblingsLayoutModels";
	}

	$flexUIViewCode = $flexUIViewCode.", visibility: $visibilityValue, backgroundColor: model[\"$id\"] ?? \"$backgroundColor\", isFlexConcentric: $isFlexConcentric";

	if(defined($widgetURL)){
		$flexUIViewCode = $flexUIViewCode.", link: \"$widgetURL\"";
	}

	$flexUIViewCode = $flexUIViewCode."){ parentLayoutModel in";
		
	$flexUIViewCode = $flexUIViewCode.<<here_doc;  #{{{3

$flexUIViewLayoutCode

$flexUIViewBodyCode
}
here_doc
# }}}
# ---
	return $flexUIViewCode;
}

sub getSwiftUIChildrenLayoutCode{
	my ($self) = @_;
	
	my $flexUIViewChildrenLayoutCode = "\n";
	my $flexUIViewSiblingLayoutCode = "let siblingsLayoutModels: [LayoutModel] = [";
	
	my $flexUIViewChildren = $self->{MODEL}->{CHILDREN};
	
	if(scalar(@$flexUIViewChildren) > 0){
		for my $eachUIViewModel (@$flexUIViewChildren) {
			my ($childLayoutName, $childLayoutCode) = $eachUIViewModel->getView()->getSwiftUILayoutCode();
		
			$flexUIViewChildrenLayoutCode = $flexUIViewChildrenLayoutCode . "$childLayoutCode\n";
			$flexUIViewSiblingLayoutCode = $flexUIViewSiblingLayoutCode . "$childLayoutName,";
		}
	
		chop($flexUIViewSiblingLayoutCode);
		
		$flexUIViewSiblingLayoutCode = $flexUIViewSiblingLayoutCode . "]";

		$flexUIViewChildrenLayoutCode = $flexUIViewChildrenLayoutCode . "$flexUIViewSiblingLayoutCode";
	}
	

	return $flexUIViewChildrenLayoutCode;
}

sub getSwiftUILayoutCode{
	my ($self) = @_;

	my $flexUIViewLayoutCode = "";

	my $id = $self->{MODEL}->{ID};
	my $layoutModelName = "$id"."LayoutModel";
	my $layoutType = $self->{MODEL}->{LAYOUT_TYPE};
	my $reverseLayoutDirection = $self->{MODEL}->{REVERSE_LAYOUT_DIRECTION};

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

	$flexUIViewLayoutCode = $flexUIViewLayoutCode . "let $layoutModelName: FlexLayoutModel = FlexLayoutModel(";

	$flexUIViewLayoutCode = $flexUIViewLayoutCode . "id: \"$id\",";

	$flexUIViewLayoutCode = $flexUIViewLayoutCode . "layoutType: $layoutType,";
	
	$flexUIViewLayoutCode = $flexUIViewLayoutCode . "reverseLayoutDirection: $reverseLayoutDirection,";

	if(defined $leftValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."leftValue: $leftValue,";
	}
	
	if(defined $leftPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."leftPercentage: $leftPercentage,";
	}
	
	if(defined $centerXValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."centerXValue: $centerXValue,";
	}
	
	if(defined $centerXPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."centerXPercentage: $centerXPercentage,";
	}
	
	if(defined $rightValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."rightValue: $rightValue,";
	}
	
	if(defined $rightPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."rightPercentage: $rightPercentage,";
	}
	
	if(defined $topValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."topValue: $topValue,";
	}
	
	if(defined $topPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."topPercentage: $topPercentage,";
	}
	
	if(defined $centerYValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."centerYValue: $centerYValue,";
	}
	
	if(defined $centerYPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."centerYPercentage: $centerYPercentage,";
	}
	
	if(defined $bottomValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."bottomValue: $bottomValue,";
	}
	
	if(defined $bottomPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."bottomPercentage: $bottomPercentage,";
	}
	
	if(defined $widthValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."widthValue: $widthValue,";
	}
	
	if(defined $widthPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."widthPercentage: $widthPercentage,";
	}
	
	if(defined $heightValue){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."heightValue: $heightValue,";
	}
	
	if(defined $heightPercentage){
		$flexUIViewLayoutCode = $flexUIViewLayoutCode."heightPercentage: $heightPercentage,";
	}

#	Removing the last comma (,)
	chop($flexUIViewLayoutCode);

	$flexUIViewLayoutCode = $flexUIViewLayoutCode . ")";

	return ($layoutModelName, $flexUIViewLayoutCode);
}

sub getSwiftUIBodyCode{
	my ($self) = @_;
	
	my $flexUIViewBodyCode = "";
	my $flexUIViewChildren = $self->{MODEL}->{CHILDREN};
	for my $eachUIViewModel (@$flexUIViewChildren) {
		$flexUIViewBodyCode = $flexUIViewBodyCode . $eachUIViewModel->getView()->getSwiftUIViewCode();
	}
	
	return $flexUIViewBodyCode;
} 

1;