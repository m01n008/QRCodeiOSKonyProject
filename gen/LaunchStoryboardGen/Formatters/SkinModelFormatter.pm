use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use Constants;
use CommonUtil;

package SkinModelFormatter;

=pod
=head2 formatModel
Parameters  : skinModel storyboardMetaJSON
Returns     : None
Description : Sets the skinModel properties with formatted storyboard metadata for UIElement
=cut
sub formatModel{
	my ($skinModel, $modelHash) = @_;
	my $skinModelHash = $modelHash->{StorybaordMetaJSONConstants::KEY_SKIN};
	setModelValues($skinModel,$skinModelHash);
}

=pod
=head2 setModelValues
Parameters  : skinModel storyboardMetaJSON
Returns     : None
Description : Sets the skinModel properties with storyboard metadata
=cut
sub setModelValues{
	my ($skinModel,$modelHash) = @_;
	
	setRGBAList($skinModel,$modelHash);
}

#****************SETTER METHODS - FORMATS VALUES AND SETS PROPERTIES****************#

sub setRGBAList{
	my ($skinModel,$modelHash) = @_;
	if(defined $modelHash->{StorybaordMetaJSONConstants::KEY_BACKGROUND_COLOR}){
		$skinModel->{'rgbaList'} = CommonUtil::convertHexToRGBA($modelHash->{StorybaordMetaJSONConstants::KEY_BACKGROUND_COLOR});
	}
}

1;