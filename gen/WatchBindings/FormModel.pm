#!/usr/bin/perl -w

package FormModel;

use ContainerModel;

our @ISA = qw(ContainerModel);    # inherits from ContainerModel

# use Readonly;
# 
# Readonly my $APPFORM => 'AppForm';
# Readonly my $GLANCE => 'Glance';
# Readonly my $NOTIFICATION => 'Notification';
# Readonly my $UNKNOWN => 'Unknown';

# use constant {
#     $APPFORM => 'AppForm',
#     $GLANCE => 'Glance',
#     $NOTIFICATION => 'Notification',
#     $UNKNOWN => 'Unknown',
# };

my $formType = "Unknown";

# Override constructor of ContainerModel
sub new {
	my ($class, %dataHash, $fType) = @_;
    # Call the constructor of the parent class, ContainerModel.
    my $self = $class->SUPER::new(%dataHash);
    $self->{"templateImports"} = {};
    $self->{"startup"} = 0;
    if ($fType) {
		$formType = $fType;
	}
    return $self;
}

sub setFormType {
	my ($self, $fType) = @_;
	if ($fType) {
		$formType = $fType;
	}
}

sub getFormType {
	my ($self) = @_;
	return $fType;
}

sub setStartupForm {
	my ($self) = @_;
	$self->{"startup"} = 1;
}

sub isStartupForm {
	my ($self) = @_;
	$startup = 0;
	if ($self->{"startup"} == 1) {
		$startup = 1;
	}
	return $startup;
}

sub setTemplateImportsForForm {
	my ($self, $rowTemplateId) = @_;
	my $importsHashRef = $self->{"templateImports"};
	if (exists $importsHashRef->{$rowTemplateId}) {
		# Don't add duplicate import headers here.
	} else {
		$importsHashRef->{$rowTemplateId} = 1;
	}
}

sub getTemplateImportsForForm {
	my ($self) = @_;
	return $self->{"templateImports"};
}

1;







