use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use Constants;
use CommonUtil;

package IndependentConstraintModel;

=pod
=head2 IndependentConstraintModel constructor
Parameters  : None
Returns     : IndependentConstraintModel instance
Description : Creates instance of IndependentConstraintModel class
			  Represents independent constraint of UIElement
=cut
sub new{
	my($class,$constraintType,$constant) = @_;
	my $self = {
		firstAttribute => undef,
		constant => "0",
		storyboardIdentifier => undef
	};
	bless $self, $class;
	$self->{firstAttribute}=$constraintType;
	
	if(defined $constant){
		$self->{constant}="$constant";
	}
	
	$self->{id}=CommonUtil::getUniqueXcodeObjectID();
	return $self;
}

1;