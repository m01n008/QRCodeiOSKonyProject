use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use lib '../../LaunchStoryboardGen/Formatters';
use lib '../../LaunchStoryboardGen/ViewModels';
use Constants;
use ImageModelFormatter;
use ImageViewModel;

package ImageModel;

=pod
=head2 ImageModel constructor
Parameters  : None
Returns     : ImageModel instance
Description : Creates instance of ImageModel class
			  This class represents Image object
=cut
sub new{
	my($class,$UIElementMetaJSON) = @_;
	my $self = {
		contentMode => undef,
		visible => undef,
		metaJSON => $UIElementMetaJSON,
		platformIdentifier => undef,
		sizeModel => new SizeModel($UIElementMetaJSON),
		skinModel => new SkinModel($UIElementMetaJSON),
		source => undef,
		storyboardIdentifier => undef
	};
	bless $self, $class;
	ImageModelFormatter::formatModel($self);
	return $self;
}

=pod
=head2 getViewModel
Parameters  : None
Returns     : ImageViewModel instance
Description : Creates instance of ImageViewModel class
			  This methods returns view model object of Image object
			  ImageViewModel represents ImageViews model object
=cut
sub getViewModel{
	my ($self) = @_;
	return new ImageViewModel($self);
}

1;