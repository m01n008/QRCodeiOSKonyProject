use strict;
use warnings;

use lib '../../LaunchStoryboardGen';
use CommonUtil;

package LabelViewModel;

=pod
=head2 LabelViewModel constructor
Parameters  : None
Returns     : LabelViewModel instance
Description : Creates instance of LabelViewModel class
			  This class represents LabelViews model object
=cut
sub new{
	my($class,$labelModel) = @_;
	my $self = {
		hidden => "NO",
		opaque => 'NO',
		userInteractionEnabled => 'NO',
		contentMode => 'center',
		horizontalHuggingPriority => '251',
		verticalHuggingPriority => '251',
		text => undef,
		textAlignment => undef,
		lineBreakMode => 'tailTruncation',
		baselineAdjustment => 'alignBaselines',
		adjustsFontSizeToFit => 'NO',
		translatesAutoresizingMaskIntoConstraints => 'NO',
		id => undef,
		userLabel => undef,
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
		fontDescription => {
			key => undef,
			type => undef,
			pointSize => undef
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
	initializeViewModel($self,$labelModel);
	return $self;
}

=pod
=head2 initializeViewModel
Parameters  : None
Returns     : None
Description : Initialises labelViewModel object
			  Sets the labelViewModel with labelModel object
=cut
sub initializeViewModel{
	my($self,$labelModel) = @_;
	setHidden($self,$labelModel->{visible});
	setText($self,$labelModel->{text});
	setTextAlignment($self,$labelModel->{alignment});
	setId($self,$labelModel->{storyboardIdentifier});
	setUserLabel($self,$labelModel->{platformIdentifier});
	setRect($self,$labelModel->{sizeModel}->{frame});
	setConstraints($self,$labelModel->{sizeModel}->{constraints});
	setFontDescription($self,$labelModel);
	setColor($self,$labelModel->{fontColor});
}

#****************GETTER'S/SETTER'S****************#

sub setHidden{
	my($self,$visible) = @_;
	if($visible == 1){
		$self->{hidden} = "NO";
	}elsif($visible == 0){
		$self->{hidden} = "YES";
	}
}

sub setText{
	my($self,$text) = @_;
	$self->{text} = $text;
}

sub setTextAlignment{
	my($self,$textAlignment) = @_;
	$self->{textAlignment} = $textAlignment;
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

sub setConstraints{
	my($self,$constraints) = @_;
	$self->{constraints}->{constraint} = $constraints;
}

sub setFontDescription{
	my ($self,$labelModel) = @_;
	$self->{fontDescription}->{key} = 'fontDescription';
	$self->{fontDescription}->{type} = $labelModel->{fontName};
	$self->{fontDescription}->{pointSize} = $labelModel->{fontSize};
}

sub setColor{
	my($self,$rgbaList) = @_;
	my $colorObject = $self->{color};
	$colorObject->{key} = "textColor";
	$colorObject->{red} = @$rgbaList[0];
	$colorObject->{green} = @$rgbaList[1];
	$colorObject->{blue} = @$rgbaList[2];
	$colorObject->{alpha} = @$rgbaList[3];
	$colorObject->{colorSpace} = "custom";
	$colorObject->{customColorSpace} = "sRGB";
}

1;