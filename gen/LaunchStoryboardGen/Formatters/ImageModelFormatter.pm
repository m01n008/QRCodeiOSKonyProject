use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use Constants;
use CommonUtil;

package ImageModelFormatter;

=pod
=head2 formatModel
Parameters  : imageModel storyboardMetaJSON
Returns     : None
Description : Sets the imageModel properties with formatted storyboard metadata for image
=cut
sub formatModel{
	my ($UIElementModel) = @_;
	my $imageModel = $UIElementModel;
	my $modelHash = $UIElementModel->{metaJSON};
	setModelValues($imageModel,$modelHash);
}

=pod
=head2 setModelValues
Parameters  : imageModel storyboardMetaJSON
Returns     : None
Description : Sets the imageModel properties with storyboard metadata
=cut
sub setModelValues{
	my ($imageModel,$modelHash) = @_;
	
	setContentMode($imageModel,$modelHash);
	setVisibility($imageModel,$modelHash);
	setPlatformIdentifier($imageModel,$modelHash);
	setSource($imageModel,$modelHash);
	setStoryboardIdentifier($imageModel,$modelHash);
}

#****************SETTER METHODS - FORMATS VALUES AND SETS PROPERTIES****************#

sub setContentMode{
	my ($imageModel,$modelHash) = @_;
	$imageModel->{contentMode} = $modelHash->{contentMode};
}

sub setVisibility{
	my ($imageModel,$modelHash) = @_;
	if(defined $modelHash->{StorybaordMetaJSONConstants::KEY_VISIBLE}){
		$imageModel->{visible} = $modelHash->{StorybaordMetaJSONConstants::KEY_VISIBLE};
	}else{
		$imageModel->{visible} = 1;
	}
}

sub setPlatformIdentifier{
	my ($imageModel,$modelHash) = @_;
	$imageModel->{platformIdentifier} = $modelHash->{StorybaordMetaJSONConstants::KEY_PLATFORM_IDENTIFIER};
}

sub setSource{
	my ($imageModel,$modelHash) = @_;
	$imageModel->{source} = $modelHash->{'source'};
}

sub setStoryboardIdentifier{
	my ($imageModel,$modelHash) = @_;
	
	my $uniqueXcodeObjectID = CommonUtil::getUniqueXcodeObjectID();
	$imageModel->{'storyboardIdentifier'} = $uniqueXcodeObjectID;
}

1;