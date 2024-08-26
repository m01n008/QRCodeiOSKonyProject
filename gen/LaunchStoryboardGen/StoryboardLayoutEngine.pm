use strict;
use warnings;

use Constants;
use lib 'Models';
use IndependentConstraintModel;
use DependentConstraintModel;

package StoryboardLayoutEngine;

=pod
=head2 StoryboardLayoutEngine constructor
Parameters  : None
Returns     : StoryboardLayoutEngine instance
Description : Creates instance of StoryboardLayoutEngine class
			  Initialises the storyboard device type and its frame
			  Currenlt using retina5_9 and its frame as default
=cut
sub new{
	my($class) = @_;
	my $self = {
		frame => {
			deviceID => undef,
			x => undef,
			y => undef,
			width => undef,
			height => undef
		}
	};
	bless $self, $class;
	setStoryboardFrame($self);
	return $self;
}

=pod
=head2 setStoryboardFrame
Parameters  : None
Returns     : None
Description : Sets initial storyboard frame
=cut
sub setStoryboardFrame(){
	my ($self) = @_;
	my $storyboardFrame = $self->{'frame'};
	$storyboardFrame->{'deviceID'} = 'retina5_9';
	$storyboardFrame->{'x'} = 0;
	$storyboardFrame->{'y'} = 0;
	$storyboardFrame->{'width'} = 375;
	$storyboardFrame->{'height'} = 812;
}

=pod
=head2 getStoryboardFrame
Parameters  : None
Returns     : None
Description : Getter for storyboard frame
=cut
sub getStoryboardFrame(){
	my ($self) = @_;
	return $self->{'frame'};
}

=pod
=head2 layoutRootContainerModel
Parameters  : rootContainerModel
Returns     : None
Description : layouts rootContainerModel
			  calculates the model objects frames and sets constraints
=cut
sub layoutRootContainerModel{
	my ($self,$rootContainerModel) = @_;
	
	my $rootContainerModelFrame = $rootContainerModel->{sizeModel}->{frame};
	$rootContainerModelFrame->{x} = $self->{frame}->{x};
	$rootContainerModelFrame->{y} = $self->{frame}->{y};
	$rootContainerModelFrame->{width} = $self->{frame}->{width};
	$rootContainerModelFrame->{height} = $self->{frame}->{height};
	
	my $childrenModelList = $rootContainerModel->{childrenModels};
	for my $childModel (@$childrenModelList) {
		layoutModelInContainerModel($childModel,$rootContainerModel);
	}
}

=pod
=head2 layoutModelInContainerModel
Parameters  : childModel(ImageModel,LabelModel) rootContainerModel
Returns     : None
Description : layouts childModel in rootContainerModel
			  calculates the childModel frame in containerModel
=cut
sub layoutModelInContainerModel{
	my ($childModel,$containerModel) = @_;
	
	my $childModelFrame = $childModel->{sizeModel}->{frame};
	my $containerModelFrame = $containerModel->{sizeModel}->{frame};
	
	my $childSizeFormattedModel = $childModel->{sizeModel}->{formattedModel};
	
#	layout requires all frame values computed

#	calculate frame - x,width
	layoutModelInContainerModelForXFrame($childModel,$containerModel);
#	calculate frame - y,height
	layoutModelInContainerModelForYFrame($childModel,$containerModel);
}

=pod
=head2 layoutModelInContainerModelForXFrame
Parameters  : childModel(ImageModel,LabelModel) rootContainerModel
Returns     : None
Description : layouts childModel in rootContainerModel for XFrame
			  xFrame calculates the x position value and width value
=cut
sub layoutModelInContainerModelForXFrame{
	my ($childModel,$containerModel) = @_;
	
	my $rectXValue=0;
	my $rectWidthValue=0;
	
	my $childModelFrame = $childModel->{sizeModel}->{frame};
	my $containerModelFrame = $containerModel->{sizeModel}->{frame};
	
	my $childSizeFormattedModel = $childModel->{sizeModel}->{formattedModel};
	
	my $childModelWidth = $childModel->{sizeModel}->{width};
	my $centerXValue = $childSizeFormattedModel->{centerXValue};
	my $centerXPercentage = $childSizeFormattedModel->{centerXPercentage};
	my $leftValue = $childSizeFormattedModel->{leftValue};
	my $leftPercentage = $childSizeFormattedModel->{leftPercentage};
	my $rightValue = $childSizeFormattedModel->{rightValue};
	my $rightPercentage = $childSizeFormattedModel->{rightPercentage};
	
#	CASE:WIDTH DEFINED
	if(defined $childModelWidth){
		my $widthValue = $childSizeFormattedModel->{widthValue};
		my $widthPercentage = $childSizeFormattedModel->{widthPercentage};
		
#		CASE:WIDTH DEFINED IN DP
#		If width is defined in DP,create independent constraint for childModel alone
		if(defined $widthValue){
			my $widthConstraint = new IndependentConstraintModel(Constraints::WIDTH_CONSTRAINT,$widthValue);
            push @{$childModel->{sizeModel}->{constraints}},$widthConstraint;
			$rectWidthValue = $widthValue;
			
		}
#		CASE:WIDTH DEFINED IN %
#		If width is defined in %,create dependent constraint for childModel and parentModel
#		This width relation between childModel and parentModel is width proportional
		elsif($widthPercentage){
			my $widthProportionConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::WIDTH_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::WIDTH_CONSTRAINT, ($widthPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$widthProportionConstraint;
			$rectWidthValue = ($containerModel->{sizeModel}->{frame}->{width} * ($widthPercentage/100));
		}
		
#		CASE:WIDTH(DP/%)-CENTERX(DP)
		if(defined $centerXValue){
			my $centerXConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, 0.0001,$centerXValue);
            push @{$containerModel->{sizeModel}->{constraints}},$centerXConstraint;
			
			my $halfWidthValue = $rectWidthValue/2;
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($centerXValue-$halfWidthValue);
		}
#		CASE:WIDTH(DP/%)-CENTERX(%)
		elsif(defined $centerXPercentage){
			my $centerXPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, ($centerXPercentage*0.02),0);
            push @{$containerModel->{sizeModel}->{constraints}},$centerXPercentageConstraint;
			
			my $halfWidthValue = $rectWidthValue/2;
			my $centerXPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($centerXPercentage/100);
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($centerXPercentageValue-$halfWidthValue);
		}
#		CASE:WIDTH(DP/%)-LEFT(DP)
		elsif(defined $leftValue){
			my $leadingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, 1,$leftValue);
            push @{$containerModel->{sizeModel}->{constraints}},$leadingConstraint;
			
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftValue;
		}
#		CASE:WIDTH(DP/%)-LEFT(%)
		elsif(defined $leftPercentage){
			my $leadingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, ($leftPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$leadingPercentageConstraint;
			
			my $leftPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($leftPercentage/100);
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftPercentageValue;
		}
#		CASE:WIDTH(DP/%)-RIGHT(DP)
		elsif(defined $rightValue){
			my $trailingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, 1,(-1*$rightValue));
            push @{$containerModel->{sizeModel}->{constraints}},$trailingConstraint;
			
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($containerModel->{sizeModel}->{frame}->{width} - ($rectWidthValue + $rightValue));
		}
#		CASE:WIDTH(DP/%)-RIGHT(%)
		elsif(defined $rightPercentage){
			my $trailingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, (1-($rightPercentage/100)),0);
            push @{$containerModel->{sizeModel}->{constraints}},$trailingPercentageConstraint;
			
			my $rightPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($rightPercentage/100);
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($containerModel->{sizeModel}->{frame}->{width} - ($rectWidthValue + $rightPercentageValue));
		}
	}
#	CASE:WIDTH UNDEFINED
	else{
#		CASE:LEFT(DP/%)-CENTERX(DP/%)
#		LAYOUT POSSBILE ONLY IF LEFT(DP/%) < CENTERX(DP/%)

#		CASE:LEFT(DP)-CENTERX(DP)
		if(defined $leftValue && defined $centerXValue){
			if($leftValue < $centerXValue){
				my $leadingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, 1,$leftValue);
                push @{$containerModel->{sizeModel}->{constraints}},$leadingConstraint;
				
				my $centerXConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, 0.0001,$centerXValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXConstraint;
				
				my $halfWidthValue = $centerXValue-$leftValue;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftValue;
				$rectWidthValue = $halfWidthValue*2;
			}
		}
#		CASE:LEFT(DP)-CENTERX(%)
		elsif(defined $leftValue && defined $centerXPercentage){
			my $centerXPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($centerXPercentage/100);
			if($leftValue < $centerXPercentageValue){
				my $leadingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, 1,$leftValue);
                push @{$containerModel->{sizeModel}->{constraints}},$leadingConstraint;
				
				my $centerXPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, ($centerXPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXPercentageConstraint;
				
				my $halfWidthValue = $centerXPercentageValue-$leftValue;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftValue;
				$rectWidthValue = $halfWidthValue*2;
			}
		}
#		CASE:LEFT(%)-CENTERX(DP)
		elsif(defined $leftPercentage && defined $centerXValue){
			my $leftPercentageValue = $containerModel->{sizeModel}->{frame}->{width}*($leftPercentage/100);
			if($leftPercentageValue < $centerXValue){
				my $leadingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, ($leftPercentage/100),0);
                push @{$containerModel->{sizeModel}->{constraints}},$leadingPercentageConstraint;
				
				my $centerXConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, 0.0001,$centerXValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXConstraint;
				
				my $halfWidthValue = $centerXValue-$leftPercentageValue;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftPercentageValue;
				$rectWidthValue = $halfWidthValue*2;
			}
		}
#		CASE:LEFT(%)-CENTERX(%)
		elsif(defined $leftPercentage && defined $centerXPercentage){
			my $leftPercentageValue = $containerModel->{sizeModel}->{frame}->{width}*($leftPercentage/100);
			my $centerXPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($centerXPercentage/100);
			if($leftPercentageValue < $centerXPercentageValue){
				my $leadingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, ($leftPercentage/100),0);
                push @{$containerModel->{sizeModel}->{constraints}},$leadingPercentageConstraint;
				
				my $centerXPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, ($centerXPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXPercentageConstraint;
				
				my $halfWidthValue = $centerXPercentageValue-$leftPercentageValue;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftPercentageValue;
				$rectWidthValue = $halfWidthValue*2;
			}
		}
#		CASE:RIGHT(DP/%)-CENTERX(DP/%)
#		LAYOUT POSSBILE ONLY IF CENTERX(DP/%) < RIGHT(DP/%)

#		CASE:RIGHT(DP)-CENTERX(DP)
		elsif(defined $rightValue && defined $centerXValue){
			my $rightCoordinateValue = $containerModel->{sizeModel}->{frame}->{width} - $rightValue;
			if($centerXValue < $rightCoordinateValue){
				my $centerXConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, 0.0001,$centerXValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXConstraint;
				
				my $trailingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, 1,(-1*$rightValue));
                push @{$containerModel->{sizeModel}->{constraints}},$trailingConstraint;
				
				my $halfWidthValue = $rightCoordinateValue - $centerXValue;
				my $fullWidthValue = $halfWidthValue * 2;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($rightCoordinateValue - $fullWidthValue);
				$rectWidthValue = $fullWidthValue;
			}
		}
#		CASE:RIGHT(DP)-CENTERX(%)
		elsif(defined $rightValue && defined $centerXPercentage){
			my $centerXPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($centerXPercentage/100);
			my $rightCoordinateValue = $containerModel->{sizeModel}->{frame}->{width} - $rightValue;
			if($centerXPercentageValue < $rightCoordinateValue){
				my $centerXPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, ($centerXPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXPercentageConstraint;
				
				my $trailingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, 1,(-1*$rightValue));
                push @{$containerModel->{sizeModel}->{constraints}},$trailingConstraint;
				
				my $halfWidthValue = $rightCoordinateValue - $centerXPercentageValue;
				my $fullWidthValue = $halfWidthValue * 2;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($rightCoordinateValue - $fullWidthValue);
				$rectWidthValue = $fullWidthValue;
			}
		}
#		CASE:RIGHT(%)-CENTERX(DP)
		elsif(defined $rightPercentage && defined $centerXValue){
			my $rightPercentageValue = $containerModel->{sizeModel}->{frame}->{width}*($rightPercentage/100);
			my $rightCoordinateValue = $containerModel->{sizeModel}->{frame}->{width} - $rightPercentageValue;
			if($centerXValue < $rightCoordinateValue){
				my $centerXConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, 0.0001,$centerXValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXConstraint;
				
				my $trailingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, (1-($rightPercentage/100)),0);
                push @{$containerModel->{sizeModel}->{constraints}},$trailingPercentageConstraint;
				
				my $halfWidthValue = $rightCoordinateValue - $centerXValue;
				my $fullWidthValue = $halfWidthValue * 2;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($rightCoordinateValue - $fullWidthValue);
				$rectWidthValue = $fullWidthValue;
			}
		}
#		CASE:RIGHT(%)-CENTERX(%)
		elsif(defined $rightPercentage && defined $centerXPercentage){
			my $rightPercentageValue = $containerModel->{sizeModel}->{frame}->{width}*($rightPercentage/100);
			my $rightCoordinateValue = $containerModel->{sizeModel}->{frame}->{width} - $rightPercentageValue;
			my $centerXPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($centerXPercentage/100);
			if($centerXPercentageValue < $rightCoordinateValue){
				my $centerXPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERX_CONSTRAINT, ($centerXPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerXPercentageConstraint;
				
				my $trailingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, (1-($rightPercentage/100)),0);
                push @{$containerModel->{sizeModel}->{constraints}},$trailingPercentageConstraint;
				
				my $halfWidthValue = $rightPercentageValue - $centerXPercentageValue;
				my $fullWidthValue = $halfWidthValue * 2;
				$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + ($rightCoordinateValue - $fullWidthValue);
				$rectWidthValue = $fullWidthValue;
			}
		}
#		CASE:LEFT(DP)-RIGHT(DP)
		elsif(defined $leftValue && defined $rightValue){
			my $leadingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, 1,$leftValue);
            push @{$containerModel->{sizeModel}->{constraints}},$leadingConstraint;
			
			my $trailingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, 1,(-1*$rightValue));
            push @{$containerModel->{sizeModel}->{constraints}},$trailingConstraint;
			
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftValue;
			$rectWidthValue =  $containerModel->{sizeModel}->{frame}->{width} - ($leftValue+$rightValue);
		
		}
#		CASE:LEFT(DP)-RIGHT(%)
		elsif(defined $leftValue && defined $rightPercentage){
			my $leadingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, 1,$leftValue);
            push @{$containerModel->{sizeModel}->{constraints}},$leadingConstraint;
			
			my $trailingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, (1-($rightPercentage/100)),0);
            push @{$containerModel->{sizeModel}->{constraints}},$trailingPercentageConstraint;
			
			my $rightPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($rightPercentage/100);
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftValue;
			$rectWidthValue = $containerModel->{sizeModel}->{frame}->{width} - ($leftValue+$rightPercentageValue);
			
		}
#		CASE:LEFT(%)-RIGHT(DP)
		elsif(defined $leftPercentage && defined $rightValue){
			my $leadingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, ($leftPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$leadingPercentageConstraint;
			
			my $trailingConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, 1,(-1*$rightValue));
            push @{$containerModel->{sizeModel}->{constraints}},$trailingConstraint;
			
			my $leftPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($leftPercentage/100);
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftPercentageValue;
			$rectWidthValue = $containerModel->{sizeModel}->{frame}->{width} - ($leftPercentageValue+$rightValue);
			
		}
#		CASE:LEFT(%)-RIGHT(%)
		elsif(defined $leftPercentage && defined $rightPercentage){
			my $leadingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::LEADING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, ($leftPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$leadingPercentageConstraint;
			
			my $trailingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TRAILING_CONSTRAINT, (1-($rightPercentage/100)),0);
            push @{$containerModel->{sizeModel}->{constraints}},$trailingPercentageConstraint;
			
			my $leftPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($leftPercentage/100);
			my $rightPercentageValue = $containerModel->{sizeModel}->{frame}->{width} * ($rightPercentage/100);
			$rectXValue = $containerModel->{sizeModel}->{frame}->{x} + $leftPercentageValue;
			$rectWidthValue = $containerModel->{sizeModel}->{frame}->{width} - ($leftPercentageValue+$rightPercentageValue);
		}
	}

	$childModelFrame->{x} = $rectXValue;
	$childModelFrame->{width} = $rectWidthValue;
}

=pod
=head2 layoutModelInContainerModelForYFrame
Parameters  : childModel(ImageModel,LabelModel) rootContainerModel
Returns     : None
Description : layouts childModel in rootContainerModel for YFrame
			  yFrame calculates the Y position value and height value
=cut
sub layoutModelInContainerModelForYFrame{
	my ($childModel,$containerModel) = @_;
	
	my $rectYValue=0;
	my $rectHeightValue=0;
	
	my $childModelFrame = $childModel->{sizeModel}->{frame};
	my $containerModelFrame = $containerModel->{sizeModel}->{frame};
	
	my $childSizeFormattedModel = $childModel->{sizeModel}->{formattedModel};
	
	my $childModelHeight = $childModel->{sizeModel}->{height};
	my $topValue = $childSizeFormattedModel->{topValue};
	my $topPercentage = $childSizeFormattedModel->{topPercentage};
	my $bottomValue = $childSizeFormattedModel->{bottomValue};
	my $bottomPercentage = $childSizeFormattedModel->{bottomPercentage};
	my $centerYValue = $childSizeFormattedModel->{centerYValue};
	my $centerYPercentage = $childSizeFormattedModel->{centerYPercentage};
	
#	CASE:HEIGHT DEFINED
	if(defined $childModelHeight){
		my $heightValue = $childSizeFormattedModel->{heightValue};
		my $heightPercentage = $childSizeFormattedModel->{heightPercentage};
		
#		CASE:HEIGHT DEFINED IN DP
#		If HEIGHT is defined in DP,create independent constraint for childModel alone
		if(defined $heightValue){
			my $heightConstraint = new IndependentConstraintModel(Constraints::HEIGHT_CONSTRAINT,$heightValue);
            push @{$childModel->{sizeModel}->{constraints}},$heightConstraint;
			$rectHeightValue = $heightValue;
			
		}
#		CASE:HEIGHT DEFINED IN %
#		If height is defined in %,create dependent constraint for childModel and parentModel
#		This height relation between childModel and parentModel is height proportional
		elsif($heightPercentage){
			my $heightProportionConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::HEIGHT_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::HEIGHT_CONSTRAINT, ($heightPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$heightProportionConstraint;
			$rectHeightValue = ($containerModel->{sizeModel}->{frame}->{height} * ($heightPercentage/100));
		}
		
#		CASE:HEIGHT(DP/%)-CENTERY(DP)
        if(defined $centerYValue){
			my $centerYConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, 0.0001,$centerYValue);
            push @{$containerModel->{sizeModel}->{constraints}},$centerYConstraint;
			
			my $halfHeightValue = $rectHeightValue/2;
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($centerYValue-$halfHeightValue);
		}
#		CASE:HEIGHT(DP/%)-CENTERY(%)
		elsif(defined $centerYPercentage){
			my $centerYPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, ($centerYPercentage*0.02),0);
            push @{$containerModel->{sizeModel}->{constraints}},$centerYPercentageConstraint;
			
			my $halfHeightValue = $rectHeightValue/2;
			my $centerYPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($centerYPercentage/100);
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($centerYPercentageValue-$halfHeightValue);
		}
#		CASE:HEIGHT(DP/%)-TOP(DP)
		elsif(defined $topValue){
			my $topConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, 1,$topValue);
            push @{$containerModel->{sizeModel}->{constraints}},$topConstraint;
			
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topValue;
		}
#		CASE:HEIGHT(DP/%)-TOP(%)
		elsif(defined $topPercentage){
			my $topPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, ($topPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$topPercentageConstraint;
			
			my $topPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($topPercentage/100);
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topPercentageValue;
		}
#		CASE:HEIGHT(DP/%)-BOTTOM(DP)
		elsif(defined $bottomValue){
			my $bottomConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, 1,(-1*$bottomValue));
            push @{$containerModel->{sizeModel}->{constraints}},$bottomConstraint;
			
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($containerModel->{sizeModel}->{frame}->{height} - ($rectHeightValue + $bottomValue));
		}
#		CASE:HEIGHT(DP/%)-BOTTOM(%)
		elsif(defined $bottomPercentage){
			my $bottomPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, (1-($bottomPercentage/100)),0);
            push @{$containerModel->{sizeModel}->{constraints}},$bottomPercentageConstraint;
			
			my $bottomPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($bottomPercentage/100);
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($containerModel->{sizeModel}->{frame}->{height} - ($rectHeightValue + $bottomPercentageValue));
		}
	}
#	CASE:HEIGHT UNDEFINED
	else{
#		CASE:TOP(DP/%)-CENTERY(DP/%)
#		LAYOUT POSSBILE ONLY IF TOP(DP/%) < CENTERY(DP/%)

#		CASE:TOP(DP)-CENTERY(DP)
		if(defined $topValue && defined $centerYValue){
			if($topValue < $centerYValue){
				my $topConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, 1,$topValue);
                push @{$containerModel->{sizeModel}->{constraints}},$topConstraint;
				
				my $centerYConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, 0.0001,$centerYValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYConstraint;
				
				my $halfHeightValue = $centerYValue-$topValue;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topValue;
				$rectHeightValue = $halfHeightValue*2;
			}
		}
#		CASE:TOP(DP)-CENTERY(%)
		elsif(defined $topValue && defined $centerYPercentage){
			my $centerYPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($centerYPercentage/100);
			if($topValue < $centerYPercentageValue){
				my $topConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, 1,$topValue);
                push @{$containerModel->{sizeModel}->{constraints}},$topConstraint;
				
				my $centerYPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, ($centerYPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYPercentageConstraint;
				
				my $halfHeightValue = $centerYPercentageValue-$topValue;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topValue;
				$rectHeightValue = $halfHeightValue*2;
			}
		}
#		CASE:TOP(%)-CENTERY(DP)
		elsif(defined $topPercentage && defined $centerYValue){
			my $topPercentageValue = $containerModel->{sizeModel}->{frame}->{height}*($topPercentage/100);
			if($topPercentageValue < $centerYValue){
				my $topPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, ($topPercentage/100),0);
                push @{$containerModel->{sizeModel}->{constraints}},$topPercentageConstraint;
				
				my $centerYConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, 0.0001,$centerYValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYConstraint;
				
				my $halfHeightValue = $centerYValue-$topPercentageValue;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topPercentageValue;
				$rectHeightValue = $halfHeightValue*2;
			}
		}
#		CASE:TOP(%)-CENTERY(%)
		elsif(defined $topPercentage && defined $centerYPercentage){
			my $topPercentageValue = $containerModel->{sizeModel}->{frame}->{height}*($topPercentage/100);
			my $centerYPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($centerYPercentage/100);
			if($topPercentageValue < $centerYPercentageValue){
				my $trailingPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, ($topPercentage/100),0);
                push @{$containerModel->{sizeModel}->{constraints}},$trailingPercentageConstraint;
				
				my $centerYPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, ($centerYPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYPercentageConstraint;
				
				my $halfHeightValue = $centerYPercentageValue-$topPercentageValue;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topPercentageValue;
				$rectHeightValue = $halfHeightValue*2;
			}
		}
		
#		CASE:BOTTOM(DP/%)-CENTERY(DP/%)
#		LAYOUT POSSBILE ONLY IF CENTERY(DP/%) < BOTTOM(DP/%)

#		CASE:BOTTOM(DP)-CENTERY(DP)
		elsif(defined $bottomValue && defined $centerYValue){
			my $bottomCoordinateValue = $containerModel->{sizeModel}->{frame}->{height} - $bottomValue;
			if($centerYValue < $bottomCoordinateValue){
				my $centerYConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, 0.0001,$centerYValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYConstraint;

                my $bottomConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, 1,(-1*$bottomValue));
                push @{$containerModel->{sizeModel}->{constraints}},$bottomConstraint;

				my $halfHeightValue = $bottomCoordinateValue - $centerYValue;
				my $fullHeightValue = $halfHeightValue * 2;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($bottomCoordinateValue - $fullHeightValue);
				$rectHeightValue = $fullHeightValue;
			}
		}
#		CASE:BOTTOM(DP)-CENTERY(%)
		elsif(defined $bottomValue && defined $centerYPercentage){
			my $centerYPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($centerYPercentage/100);
			my $bottomCoordinateValue = $containerModel->{sizeModel}->{frame}->{height} - $bottomValue;
			if($centerYPercentageValue < $bottomCoordinateValue){
				my $centerYPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, ($centerYPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYPercentageConstraint;

                my $bottomConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, 1,(-1*$bottomValue));
                push @{$containerModel->{sizeModel}->{constraints}},$bottomConstraint;

                my $halfHeightValue = $bottomCoordinateValue - $centerYPercentageValue;
				my $fullHeightValue = $halfHeightValue * 2;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($bottomCoordinateValue - $fullHeightValue);
				$rectHeightValue = $fullHeightValue;
			}
		}
#		CASE:BOTTOM(%)-CENTERY(DP)
		elsif(defined $bottomPercentage && defined $centerYValue){
			my $bottomPercentageValue = $containerModel->{sizeModel}->{frame}->{height}*($bottomPercentage/100);
			my $bottomCoordinateValue = $containerModel->{sizeModel}->{frame}->{height} - $bottomPercentageValue;
			if($centerYValue < $bottomCoordinateValue){
				my $centerYConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, 0.0001,$centerYValue);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYConstraint;
                
                my $bottomPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, (1-($bottomPercentage/100)),0);
                push @{$containerModel->{sizeModel}->{constraints}},$bottomPercentageConstraint;

				my $halfHeightValue = $bottomCoordinateValue - $centerYValue;
				my $fullHeightValue = $halfHeightValue * 2;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($bottomCoordinateValue - $fullHeightValue);
				$rectHeightValue = $fullHeightValue;
			}
		}
#		CASE:BOTTOM(%)-CENTERY(%)
		elsif(defined $bottomPercentage && defined $centerYPercentage){
			my $bottomPercentageValue = $containerModel->{sizeModel}->{frame}->{height}*($bottomPercentage/100);
			my $bottomCoordinateValue = $containerModel->{sizeModel}->{frame}->{height} - $bottomPercentageValue;
			my $centerYPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($centerYPercentage/100);
			if($centerYPercentageValue < $bottomCoordinateValue){
				my $centerYPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::CENTERY_CONSTRAINT, ($centerYPercentage*0.02),0);
                push @{$containerModel->{sizeModel}->{constraints}},$centerYPercentageConstraint;
				
				my $bottomPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, (1-($bottomPercentage/100)),0);
                push @{$containerModel->{sizeModel}->{constraints}},$bottomPercentageConstraint;
				
				my $halfHeightValue = $bottomCoordinateValue - $centerYPercentageValue;
				my $fullHeightValue = $halfHeightValue * 2;
				$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + ($bottomCoordinateValue - $fullHeightValue);
				$rectHeightValue = $fullHeightValue;
			}
		}
#		CASE:TOP(DP)-BOTTOM(DP)
		elsif(defined $topValue && defined $bottomValue){
			my $topConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, 1,$topValue);
            push @{$containerModel->{sizeModel}->{constraints}},$topConstraint;
			
			my $bottomConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, 1,(-1*$bottomValue));
            push @{$containerModel->{sizeModel}->{constraints}},$bottomConstraint;
			
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topValue;
			$rectHeightValue =  $containerModel->{sizeModel}->{frame}->{height} - ($topValue+$bottomValue);
		}
#		CASE:TOP(DP)-BOTTOM(%)
		elsif(defined $topValue && defined $bottomPercentage){
			my $topConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, 1,$topValue);
            push @{$containerModel->{sizeModel}->{constraints}},$topConstraint;
			
			my $bottomPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, (1-($bottomPercentage/100)),0);
            push @{$containerModel->{sizeModel}->{constraints}},$bottomPercentageConstraint;
			
			my $bottomPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($bottomPercentage/100);
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topValue;
			$rectHeightValue =  $containerModel->{sizeModel}->{frame}->{height} - ($topValue+$bottomPercentageValue);
		}
#		CASE:TOP(%)-BOTTOM(DP)
		elsif(defined $topPercentage && defined $bottomValue){
			my $topPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, ($topPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$topPercentageConstraint;
			
			my $bottomConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, 1,(-1*$bottomValue));
            push @{$containerModel->{sizeModel}->{constraints}},$bottomConstraint;
			
			my $topPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($topPercentage/100);
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topPercentageValue;
			$rectHeightValue =  $containerModel->{sizeModel}->{frame}->{height} - ($topPercentageValue+$bottomValue);
		}
#		CASE:TOP(%)-BOTTOM(%)
		elsif(defined $topPercentage && defined $bottomPercentage){
			my $topPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::TOP_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, ($topPercentage/100),0);
            push @{$containerModel->{sizeModel}->{constraints}},$topPercentageConstraint;
			
			my $bottomPercentageConstraint = new DependentConstraintModel($childModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, $containerModel->{storyboardIdentifier}, Constraints::BOTTOM_CONSTRAINT, (1-($bottomPercentage/100)),0);
            push @{$containerModel->{sizeModel}->{constraints}},$bottomPercentageConstraint;
			
			my $topPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($topPercentage/100);
			my $bottomPercentageValue = $containerModel->{sizeModel}->{frame}->{height} * ($bottomPercentage/100);
			$rectYValue = $containerModel->{sizeModel}->{frame}->{y} + $topPercentageValue;
			$rectHeightValue =  $containerModel->{sizeModel}->{frame}->{height} - ($topPercentageValue+$bottomPercentageValue);
		}
	}

	$childModelFrame->{y} = $rectYValue;
	$childModelFrame->{height} = $rectHeightValue;
}

1;
