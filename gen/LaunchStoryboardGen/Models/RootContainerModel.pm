use strict;
use warnings;

use lib '../../../gen';
use lib '../../LaunchStoryboardGen';
use lib '../../LaunchStoryboardGen/Models';
use lib '../../LaunchStoryboardGen/Formatters';
use lib '../../LaunchStoryboardGen/ViewModels';
use Constants;
use SkinModel;
use SizeModel;
use RootContainerModelFormatter;
use StoryboardLayoutEngine;
use StoryboardGenerator;
use RootContainerViewModel;


package RootContainerModel;

=pod
=head2 RootContainerModel constructor
Parameters  : None
Returns     : RootContainerModel instance
Description : Creates instance of RootContainerModel class
			  This class represents RootContainer object
=cut
sub new{
	my($class,$UIElementMetaJSON) = @_;
	my $self = {
		childrenModels => [],
		metaJSON => $UIElementMetaJSON,
		platformIdentifier => undef,
		sizeModel => new SizeModel($UIElementMetaJSON),
		skinModel => new SkinModel($UIElementMetaJSON),
		storyboardIdentifier => undef
	};
	bless $self, $class;
	RootContainerModelFormatter::formatModel($self);
	return $self;
}

=pod
=head2 getViewModel
Parameters  : None
Returns     : RootContainerViewModel instance
Description : Creates instance of RootContainerViewModel class
			  This methods returns view model object of RootContainer object
			  RootContainerViewModel represents RootContainerViews model object
=cut
sub getViewModel{
	my ($self) = @_;
	return new RootContainerViewModel($self);
}

=pod
=head2 addChild
Parameters  : None
Returns     : None
Description : RootContainer is type of container
			  Can have children models(LabelModel,ImageModel) contained inside rootContainerModel
=cut
sub addChild{
	my ($self, $childModel) = @_;
    push @{$self->{childrenModels}}, $childModel;
}

1;