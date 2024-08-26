use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use lib '../../LaunchStoryboardGen/Formatters';
use Constants;
use SizeModelFormatter;

package SizeModel;

=pod
=head2 SizeModel constructor
Parameters  : None
Returns     : SizeModel instance
Description : Creates instance of SizeModel class
			  This class represents UIElements size object
=cut
sub new{
	my($class,$UIElementMetaJSON) = @_;
	my $self = {
		frame => {
			x => undef,
			y => undef,
			width => undef,
			height => undef
		},
		formattedModel => {
			leftValue => undef,
			leftPercentage => undef,
			bottomValue => undef,
			bottomPercentage => undef,
			rightValue => undef,
			rightPercentage => undef,
			topValue => undef,
			topPercentage => undef,
			widthValue => undef,
			widthPercentage => undef,
			heightValue => undef,
			heightPercentage => undef,
			centerXValue => undef,
			centerXPercentage => undef,
			centerYValue => undef,
			centerYPercentage => undef
		},
		constraints => [],
		left => undef,
		bottom => undef,
		right => undef,
		top => undef,
		width => undef,
		height => undef,
		centerX => undef,
		centerY => undef
	};
	bless $self, $class;
	SizeModelFormatter::formatModel($self,$UIElementMetaJSON);
	return $self;
}

1;