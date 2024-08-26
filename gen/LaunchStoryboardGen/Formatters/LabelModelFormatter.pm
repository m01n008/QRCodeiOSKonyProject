use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use Constants;
use CommonUtil;

package LabelModelFormatter;

=pod
=head2 formatModel
Parameters  : labelModel storyboardMetaJSON
Returns     : None
Description : Sets the labelModel properties with formatted storyboard metadata for label
=cut
sub formatModel{
	my ($UIElementModel) = @_;
	my $labelModel = $UIElementModel;
	my $modelHash = $UIElementModel->{'metaJSON'};
	setModelValues($labelModel,$modelHash);
}

=pod
=head2 setModelValues
Parameters  : labelModel storyboardMetaJSON
Returns     : None
Description : Sets the labelModel properties with storyboard metadata
=cut
sub setModelValues{
	my ($labelModel,$modelHash) = @_;
	
	setAlignment($labelModel,$modelHash);
	setFontColor($labelModel,$modelHash);
	setFontName($labelModel,$modelHash);
	setFontSize($labelModel,$modelHash);
	setVisibility($labelModel,$modelHash);
	setPlatformIdentifier($labelModel,$modelHash);
	setStoryboardIdentifier($labelModel,$modelHash);
	setText($labelModel,$modelHash);
}

#****************SETTER METHODS - FORMATS VALUES AND SETS PROPERTIES****************#

sub setAlignment{
	my ($labelModel,$modelHash) = @_;
	if(defined $modelHash->{StorybaordMetaJSONConstants::KEY_ALIGNMENT}){
		$labelModel->{'alignment'} = $modelHash->{StorybaordMetaJSONConstants::KEY_ALIGNMENT};	
	}else{
		$labelModel->{'alignment'} = "center";
	}
}

sub setFontColor{
	my ($labelModel,$modelHash) = @_;
	if(defined $modelHash->{StorybaordMetaJSONConstants::KEY_SKIN}->{StorybaordMetaJSONConstants::KEY_FONT_COLOR}){
		$labelModel->{'fontColor'} = CommonUtil::convertHexToRGBA($modelHash->{StorybaordMetaJSONConstants::KEY_SKIN}->{StorybaordMetaJSONConstants::KEY_FONT_COLOR});
	}else{
		$labelModel->{'fontColor'} = CommonUtil::convertHexToRGBA("000000ff");
	}
}

sub setFontSize{
	my ($labelModel,$modelHash) = @_;
	if(defined $modelHash->{StorybaordMetaJSONConstants::KEY_SKIN}->{StorybaordMetaJSONConstants::KEY_FONT_SIZE}){
		my $fontSizeScale = $modelHash->{StorybaordMetaJSONConstants::KEY_SKIN}->{StorybaordMetaJSONConstants::KEY_FONT_SIZE};
		$fontSizeScale = int($fontSizeScale);
		$fontSizeScale = Constants::DEFAULT_FONT_SIZE * ($fontSizeScale/100);
		$labelModel->{'fontSize'} = "$fontSizeScale";
	}else{
		$labelModel->{'fontSize'} = "20";
	}
}

sub setFontName{
	my ($labelModel,$modelHash) = @_;
	if(defined $modelHash->{StorybaordMetaJSONConstants::KEY_SKIN}->{StorybaordMetaJSONConstants::KEY_FONT_NAME}){
		my $fontName = $modelHash->{StorybaordMetaJSONConstants::KEY_SKIN}->{StorybaordMetaJSONConstants::KEY_FONT_NAME};
		if($fontName eq StorybaordMetaJSONConstants::VALUE_EXTERNAL_FONT_NAME_SYSTEM_BOLD){
			$labelModel->{'fontName'} = StorybaordMetaJSONConstants::VALUE_INTERNAL_FONT_NAME_SYSTEM_BOLD;
		}elsif($fontName eq StorybaordMetaJSONConstants::VALUE_EXTERNAL_FONT_NAME_SYSTEM_ITALIC){
			$labelModel->{'fontName'} = StorybaordMetaJSONConstants::VALUE_INTERNAL_FONT_NAME_SYSTEM_ITALIC;
		}else{
			$labelModel->{'fontName'} = StorybaordMetaJSONConstants::VALUE_INTERNAL_FONT_NAME_SYSTEM;
		}
	}else{
		$labelModel->{'fontName'} = StorybaordMetaJSONConstants::VALUE_INTERNAL_FONT_NAME_SYSTEM;
	}
}

sub setVisibility{
	my ($labelModel,$modelHash) = @_;
	if(defined $modelHash->{StorybaordMetaJSONConstants::KEY_VISIBLE}){
		$labelModel->{visible} = $modelHash->{StorybaordMetaJSONConstants::KEY_VISIBLE};
	}else{
		$labelModel->{visible} = 1;
	}
}

sub setPlatformIdentifier{
	my ($labelModel,$modelHash) = @_;
	$labelModel->{'platformIdentifier'} = $modelHash->{StorybaordMetaJSONConstants::KEY_PLATFORM_IDENTIFIER};
}

sub setStoryboardIdentifier{
	my ($labelModel,$modelHash) = @_;
	
	my $uniqueXcodeObjectID = CommonUtil::getUniqueXcodeObjectID();
	$labelModel->{'storyboardIdentifier'} = $uniqueXcodeObjectID;
}

sub setText{
	my ($labelModel,$modelHash) = @_;
	$labelModel->{'text'} = $modelHash->{StorybaordMetaJSONConstants::KEY_TEXT};
}

1;