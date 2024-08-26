use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use CommonUtil;

package RootContainerViewModel;

=pod
=head2 RootContainerViewModel constructor
Parameters  : None
Returns     : RootContainerViewModel instance
Description : Creates instance of RootContainerViewModel class
			  This class represents RootContainerViews model object
=cut
sub new{
	my($class,$rootContainerModel) = @_;
	my $self = {
		key => 'view',
		contentMode => 'scaleToFill',
		id => undef,
		userLabel => undef,
		rect => {
			key => undef,
			x => undef,
			y => undef,
			width => undef,
			height => undef
		},
		autoresizingMask => {
			key => 'autoresizingMask',
			widthSizable => 'YES',
			heightSizable => 'YES'
		},
		subviews => {
			subviewViewModels => []
		},
		color => {
			key => undef,
			red => undef,
			green => undef,
			blue => undef,
			alpha => undef,
			colorSpace => undef,
			customColorSpace => undef
		},
		constraints => {
			constraint => undef
		},
		viewLayoutGuide => {
			key => undef,
			id => undef
		}
	};
	bless $self, $class;
	initializeViewModel($self,$rootContainerModel);
	return $self;
}

=pod
=head2 initializeViewModel
Parameters  : None
Returns     : None
Description : Initialises rootContainerViewModel object
			  Sets the rootContainerViewModel with rootContainerModel object
=cut
sub initializeViewModel{
	my($self,$rootContainerModel) = @_;
	setId($self,$rootContainerModel->{storyboardIdentifier});
	setUserLabel($self,$rootContainerModel->{platformIdentifier});
	setRect($self,$rootContainerModel->{sizeModel}->{frame});
	setSubviewViewModels($self,$rootContainerModel);
	setColor($self,$rootContainerModel->{skinModel}->{rgbaList});
	setConstraints($self,$rootContainerModel->{sizeModel}->{constraints});
	setViewLayoutGuide($self);
}

#****************GETTER'S/SETTER'S****************#

sub setId{
	my($self,$id) = @_;
	$self->{id} = $id;
}

sub setUserLabel{
	my($self,$id) = @_;
	$self->{userLabel} = $id;
}

sub setRect{
	my($self,$frame) = @_;
	$self->{rect}->{key} = "frame";
	$self->{rect}->{x} = $frame->{x};
	$self->{rect}->{y} = $frame->{y};
	$self->{rect}->{width} = $frame->{width};
	$self->{rect}->{height} = $frame->{height};
}

sub setSubviewViewModels{
	my($self,$rootContainerModel) = @_;
	my $subviewViewModelsList = $self->{subviews}->{subviewViewModels};
	
	my $childrenModelsList = $rootContainerModel->{childrenModels};
	for my $childModel (@$childrenModelsList){
		my $childViewModel = $childModel->getViewModel();
        push @{$subviewViewModelsList},$childViewModel;
	}
}

sub setColor{
	my($self,$rgbaList) = @_;
	my $colorObject = $self->{color};
	$colorObject->{key} = "backgroundColor";
	$colorObject->{red} = @$rgbaList[0];
	$colorObject->{green} = @$rgbaList[1];
	$colorObject->{blue} = @$rgbaList[2];
	$colorObject->{alpha} = @$rgbaList[3];
	$colorObject->{colorSpace} = "custom";
	$colorObject->{customColorSpace} = "sRGB";
}

sub setConstraints{
	my($self,$constraints) = @_;
	$self->{constraints}->{constraint} = $constraints;
}

sub setViewLayoutGuide{
	my($self) = @_;
	$self->{viewLayoutGuide}->{key} = "safeArea";
	$self->{viewLayoutGuide}->{id} = CommonUtil::getUniqueXcodeObjectID();
}

1;