use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use lib '../../LaunchStoryboardGen/Formatters';
use Constants;
use SkinModelFormatter;

package SkinModel;

=pod
=head2 SkinModel constructor
Parameters  : None
Returns     : SkinModel instance
Description : Creates instance of SkinModel class
			  This class represents UIElements skin object
=cut
sub new{
	my($class,$UIElementMetaJSON) = @_;
	my $self = {
		rgbaList => []
	};
	bless $self, $class;
	SkinModelFormatter::formatModel($self,$UIElementMetaJSON);
	return $self;
}

1;