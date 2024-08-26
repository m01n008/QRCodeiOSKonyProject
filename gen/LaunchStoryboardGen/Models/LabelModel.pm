use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use lib '../../LaunchStoryboardGen/Formatters';
use lib '../../LaunchStoryboardGen/ViewModels';
use Constants;
use LabelModelFormatter;
use LabelViewModel;

package LabelModel;

=pod
=head2 LabelModel constructor
Parameters  : None
Returns     : LabelModel instance
Description : Creates instance of LabelModel class
			  This class represents Label object
=cut
sub new{
	my($class,$UIElementMetaJSON) = @_;
	my $self = {
		alignment => undef,
		fontColor => undef,
		fontName => undef,
		fontSize => undef,
		visible => undef,
		metaJSON => $UIElementMetaJSON,
		platformIdentifier => undef,
		sizeModel => new SizeModel($UIElementMetaJSON),
		skinModel => new SkinModel($UIElementMetaJSON),
		storyboardIdentifier => undef,
		text => undef
	};
	bless $self, $class;
	LabelModelFormatter::formatModel($self);
	return $self;
}

=pod
=head2 getViewModel
Parameters  : None
Returns     : LabelViewModel instance
Description : Creates instance of LabelViewModel class
			  This methods returns view model object of Label object
			  LabelViewModel represents LabelViews model object
=cut
sub getViewModel{
	my ($self) = @_;
	return new LabelViewModel($self);
}

1;