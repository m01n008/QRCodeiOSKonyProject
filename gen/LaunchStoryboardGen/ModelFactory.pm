use strict;
use warnings;

use lib '../LaunchStoryboardGen/Models';
use lib '../LaunchStoryboardGen/Formatters';
use lib '../LaunchStoryboardGen/ViewModels';
use Constants;
use RootContainerModel;
use ImageModel;
use LabelModel;
use CommonUtil;

package ModelFactory;

=pod
=head2 createModelWithStorybaordMetaJSON
Parameters  : storyboardMetaJSON
Returns     : Model instance  
Description : Creates model instance objects according to the UI elements type
			  Recursive method. If model is type of container, it creates children model	 
=cut
sub createModelWithStorybaordMetaJSON{
	my ($storyboardMetaJSON) = @_;
	
	my $model;
	
	if (CommonUtil::isElementRootContainer($storyboardMetaJSON)) {
		$model = new RootContainerModel($storyboardMetaJSON);
	} elsif (CommonUtil::isElementImage($storyboardMetaJSON)) {
		$model = new ImageModel($storyboardMetaJSON);
	} elsif (CommonUtil::isElementLabel($storyboardMetaJSON)) {
		$model = new LabelModel($storyboardMetaJSON);
	}
	
	my $childrenList = $storyboardMetaJSON->{StorybaordMetaJSONConstants::KEY_ROOT_CONTAINER_CHILDREN};
	
	if (defined $childrenList) {
		for my $childMetaJSON (@$childrenList) {
			my $childModel = createModelWithStorybaordMetaJSON($childMetaJSON);
			$model->addChild($childModel);
		}
	}
	
	return $model;
}

1;