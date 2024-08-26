use strict;
use warnings;

use SkinModelFormatter;
use SizeModelFormatter;
use lib '../../LaunchStoryboardGen';
use Constants;
use CommonUtil;

package RootContainerModelFormatter;

=pod
=head2 formatModel
Parameters  : rootContainerModel storyboardMetaJSON
Returns     : None
Description : Sets the rootContainerModel properties with formatted storyboard metadata for rootContainer
=cut
sub formatModel{
	my ($rootContainerModel) = @_;
	my $modelHash = $rootContainerModel->{metaJSON};
	
	setModelValues($rootContainerModel,$modelHash);
}

=pod
=head2 setModelValues
Parameters  : rootContainerModel storyboardMetaJSON
Returns     : None
Description : Sets the rootContainerModel properties with storyboard metadata
=cut
sub setModelValues{
	my ($rootContainerModel,$modelHash) = @_;
	
	setPlatformIdentifier($rootContainerModel,$modelHash);
	setStoryboardIdentifier($rootContainerModel,$modelHash);
}

#****************SETTER METHODS - FORMATS VALUES AND SETS PROPERTIES****************#

sub setPlatformIdentifier{
	my ($rootContainerModel,$modelHash) = @_;
	$rootContainerModel->{'platformIdentifier'} = $modelHash->{StorybaordMetaJSONConstants::KEY_PLATFORM_IDENTIFIER};
}

sub setStoryboardIdentifier{
	my ($rootContainerModel,$modelHash) = @_;
	
	my $uniqueXcodeObjectID = CommonUtil::getUniqueXcodeObjectID();
	$rootContainerModel->{'storyboardIdentifier'} = $uniqueXcodeObjectID;
}

1;