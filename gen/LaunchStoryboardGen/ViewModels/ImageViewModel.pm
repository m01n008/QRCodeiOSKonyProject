use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use CommonUtil;

package ImageViewModel;

=pod
=head2 ImageViewModel constructor
Parameters  : None
Returns     : ImageViewModel instance
Description : Creates instance of ImageViewModel class
			  This class represents ImageViews model object
=cut
sub new{
	my($class,$imageModel) = @_;
	my $self = {
		hidden => "NO",
		clipsSubviews => 'YES',
		userInteractionEnabled => 'NO',
		contentMode => undef,
		horizontalHuggingPriority => '251',
		verticalHuggingPriority => '251',
		image => undef,
		translatesAutoresizingMaskIntoConstraints => 'NO',
		id => undef,
		rect => {
			key => undef,
			x => undef,
			y => undef,
			width => undef,
			height => undef
		},
		constraints => {
			constraint => undef
		},
		color => {
			key => undef,
			red => undef,
			green => undef,
			blue => undef,
			alpha => undef,
			colorSpace => undef,
			customColorSpace => undef
		}
	};
	bless $self, $class;
	initializeViewModel($self,$imageModel);
	return $self;
}

=pod
=head2 initializeViewModel
Parameters  : None
Returns     : None
Description : Initialises imageViewModel object
			  Sets the imageViewModel with imageModel object
=cut
sub initializeViewModel{
	my($self,$imageModel) = @_;
	setHidden($self,$imageModel->{visible});
	setContentMode($self,$imageModel->{contentMode});
	setImage($self,$imageModel->{'source'});
	setId($self,$imageModel->{storyboardIdentifier});
	setUserLabel($self,$imageModel->{platformIdentifier});
	setRect($self,$imageModel->{sizeModel}->{frame});
	setColor($self,$imageModel->{skinModel}->{rgbaList});
	setConstraints($self,$imageModel->{sizeModel}->{constraints});
}

#****************GETTER'S/SETTER'S****************#

sub getResources{
	my ($self) = @_;
	return $self->{image};
}

sub setHidden{
	my($self,$visible) = @_;
	if($visible == 1){
		$self->{hidden} = "NO";
	}elsif($visible == 0){
		$self->{hidden} = "YES";
	}
}

sub setContentMode{
	my($self,$contentMode) = @_;
	$self->{contentMode} = $contentMode;
}

sub setImage{
	my($self,$image) = @_;
	$self->{image} = $image;
}

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

1;