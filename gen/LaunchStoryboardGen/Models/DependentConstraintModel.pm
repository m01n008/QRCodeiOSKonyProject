use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use Constants;

package DependentConstraintModel;

=pod
=head2 DependentConstraintModel constructor
Parameters  : None
Returns     : DependentConstraintModel instance
Description : Creates instance of DependentConstraintModel class
			  Represents relationship constraint between two UI elements
=cut
sub new{
	my($class,$childViewStoryboardIdentifier,$childViewConstraintType,$parentViewStoryboardIdentifier,$parentViewConstraintType,$multiplier,$constant) = @_;
	my $self = {
		firstItem => undef,
		firstAttribute => undef,
		secondItem => undef,
		secondAttribute => undef,
		multiplier => "1",
		constant => "0",
		id => undef
	};
	bless $self, $class;
	
	$self->{firstItem}=$childViewStoryboardIdentifier;
	$self->{firstAttribute}=$childViewConstraintType;
	$self->{secondItem}=$parentViewStoryboardIdentifier;
	$self->{secondAttribute}=$parentViewConstraintType;
	
	if(defined $multiplier){
		$self->{multiplier}="$multiplier";
	}
	
	if(defined $constant){
		$self->{constant}="$constant";	
	}
	
	$self->{id}=CommonUtil::getUniqueXcodeObjectID();
	return $self;
}

1;