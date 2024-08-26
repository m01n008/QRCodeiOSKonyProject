use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use Constants;
use CommonUtil;

package SizeModelFormatter;

=pod
=head2 formatModel
Parameters  : sizeModel storyboardMetaJSON
Returns     : None
Description : Sets the sizeModel properties with formatted storyboard metadata for size of UIElement
=cut
sub formatModel{
	my ($sizeModel,$modelHash) = @_;
	my $sizeModelHash = $modelHash;
	setDefaultsIfSizesUndefined($sizeModel,$sizeModelHash);
	setModelValues($sizeModel,$sizeModelHash);
}

=pod
=head2 setModelValues
Parameters  : sizeModel storyboardMetaJSON
Returns     : None
Description : Sets the sizeModel properties with storyboard metadata
=cut
sub setModelValues{
	my ($sizeModel,$modelHash) = @_;
	
	setLeft($sizeModel,$modelHash);
	setBottom($sizeModel,$modelHash);
	setRight($sizeModel,$modelHash);
	setTop($sizeModel,$modelHash);
	setWidth($sizeModel,$modelHash);
	setHeight($sizeModel,$modelHash);
	setCenterX($sizeModel,$modelHash);
	setCenterY($sizeModel,$modelHash);
}

=pod
=head2 setDefaultsIfSizesUndefined
Parameters  : sizeModel storyboardMetaJSON
Returns     : None
Description : Sets the default sizeModel values
			  centerX - 50%
			  centerY - 50%
			  width - 50%
			  height - 50%
=cut
sub setDefaultsIfSizesUndefined{
	my ($sizeModel,$modelHash) = @_;
	
	if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_UI_ELEMENT_TYPE}){
		#if sizeModel is for rootContainer-sizeModel
		return;
	}
	
	#default sizes for imageModel,labelModel
	if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_CENTER_X}){
		#if centerX undefined
		
		#left undefined and right undefined
		if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_LEFT} and !defined $modelHash->{StorybaordMetaJSONConstants::KEY_RIGHT}){
			$modelHash->{StorybaordMetaJSONConstants::KEY_CENTER_X} = "50%";
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH} = "50%";
			}
		}
		
		#left defined and right undefined
		elsif(defined $modelHash->{StorybaordMetaJSONConstants::KEY_LEFT} and !defined $modelHash->{StorybaordMetaJSONConstants::KEY_RIGHT}){
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH} = "50%";
			}
		}
		
		#left undefined and right defined
		elsif(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_LEFT} and defined $modelHash->{StorybaordMetaJSONConstants::KEY_RIGHT}){
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH} = "50%";
			}
		}
	
	}else{
		#if centerX defined
		
		#left undefined and right undefined
		if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_LEFT} and !defined $modelHash->{StorybaordMetaJSONConstants::KEY_RIGHT}){
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH} = "50%";
			}
		}
	}
	
	if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_CENTER_Y}){
		#if centerY undefined
		
		#top undefined and bottom undefined
		if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_TOP} and !defined $modelHash->{StorybaordMetaJSONConstants::KEY_BOTTOM}){
			$modelHash->{StorybaordMetaJSONConstants::KEY_CENTER_Y} = "50%";
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT} = "50%";
			}
		}
		
		#top defined and bottom undefined
		elsif(defined $modelHash->{StorybaordMetaJSONConstants::KEY_TOP} and !defined $modelHash->{StorybaordMetaJSONConstants::KEY_BOTTOM}){
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT} = "50%";
			}
		}
		
		#top undefined and bottom defined
		elsif(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_TOP} and defined $modelHash->{StorybaordMetaJSONConstants::KEY_BOTTOM}){
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT} = "50%";
			}
		}
	
	}else{
		#if centerY defined
		
		#top undefined and bottom undefined
		if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_TOP} and !defined $modelHash->{StorybaordMetaJSONConstants::KEY_BOTTOM}){
			
			if(!defined $modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT}){
				$modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT} = "50%";
			}
		}
	}
}

#****************SETTER METHODS - FORMATS VALUES AND SETS PROPERTIES****************#

sub setLeft{
	my ($sizeModel,$modelHash) = @_;
	my $leftHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_LEFT};
	if(defined $leftHashValue & !$leftHashValue eq ""){
		$sizeModel->{left} = $leftHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($leftHashValue)){
			$formattedSizeModel->{leftValue} = CommonUtil::getSizePixels($leftHashValue);
		}else{
			$formattedSizeModel->{leftPercentage} = CommonUtil::getSizePercentage($leftHashValue);
		}
	}
}

sub setBottom{
	my ($sizeModel,$modelHash) = @_;
	my $bottomHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_BOTTOM};
	if(defined $bottomHashValue){
		$sizeModel->{bottom} = $bottomHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($bottomHashValue)){
			$formattedSizeModel->{bottomValue} = CommonUtil::getSizePixels($bottomHashValue);
		}else{
			$formattedSizeModel->{bottomPercentage} = CommonUtil::getSizePercentage($bottomHashValue);
		}
	}
}

sub setRight{
	my ($sizeModel,$modelHash) = @_;
	my $rightHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_RIGHT};
	if(defined $rightHashValue){
		$sizeModel->{right} = $rightHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($rightHashValue)){
			$formattedSizeModel->{rightValue} = CommonUtil::getSizePixels($rightHashValue);
		}else{
			$formattedSizeModel->{rightPercentage} = CommonUtil::getSizePercentage($rightHashValue);
		}		
	}
}

sub setTop{
	my ($sizeModel,$modelHash) = @_;
	my $topHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_TOP};
	if(defined $topHashValue){
		$sizeModel->{top} = $topHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($topHashValue)){
			$formattedSizeModel->{topValue} = CommonUtil::getSizePixels($topHashValue);
		}else{
			$formattedSizeModel->{topPercentage} = CommonUtil::getSizePercentage($topHashValue);
		}
	}
}

sub setWidth{
	my ($sizeModel,$modelHash) = @_;
	my $widthHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_WIDTH};
	if(defined $widthHashValue){
		$sizeModel->{width} = $widthHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($widthHashValue)){
			$formattedSizeModel->{widthValue} = CommonUtil::getSizePixels($widthHashValue);
		}else{
			$formattedSizeModel->{widthPercentage} = CommonUtil::getSizePercentage($widthHashValue);
		}
	}
}

sub setHeight{
	my ($sizeModel,$modelHash) = @_;
	my $heightHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_HEIGHT};
	if(defined $heightHashValue){
		$sizeModel->{height} = $heightHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($heightHashValue)){
			$formattedSizeModel->{heightValue} = CommonUtil::getSizePixels($heightHashValue);
		}else{
			$formattedSizeModel->{heightPercentage} = CommonUtil::getSizePercentage($heightHashValue);
		}
	}
}

sub setCenterX{
	my ($sizeModel,$modelHash) = @_;
	my $centerXHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_CENTER_X};
	if(defined $centerXHashValue){
		$sizeModel->{centerX} = $centerXHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($centerXHashValue)){
			$formattedSizeModel->{centerXValue} = CommonUtil::getSizePixels($centerXHashValue);
		}else{
			$formattedSizeModel->{centerXPercentage} = CommonUtil::getSizePercentage($centerXHashValue);
		}
	}
}

sub setCenterY{
	my ($sizeModel,$modelHash) = @_;
	my $centerYHashValue = $modelHash->{StorybaordMetaJSONConstants::KEY_CENTER_Y};
	if(defined $centerYHashValue){
		$sizeModel->{centerY} = $centerYHashValue;
		my $formattedSizeModel = $sizeModel->{formattedModel};
		if(CommonUtil::isSizeInPixels($centerYHashValue)){
			$formattedSizeModel->{centerYValue} = CommonUtil::getSizePixels($centerYHashValue);
		}else{
			$formattedSizeModel->{centerYPercentage} = CommonUtil::getSizePercentage($centerYHashValue);
		}
	}
}

1;