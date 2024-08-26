use strict;
use warnings;

use lib '../../gen';
use JSONParser;
use lib '../SwiftUICodegen';
use lib '../SwiftUICodegen/Views';
use lib '../SwiftUICodegen/Models';
use SwiftUIViewModel;
use FlexUIViewModel;
use TextUIViewModel;
use ImageUIViewModel;


package SwiftUIModelFactory;

sub generateSwiftUIModel{
	my ($self, $viewClassName, $viewJSON) = @_;
	my $swiftUIViewModel = new SwiftUIViewModel($viewClassName);
	$swiftUIViewModel->{VIEW_MODEL} =  generateSwiftUIViewModel($viewJSON);

	$swiftUIViewModel->{VIEW_MODEL}->{IS_ROOT_FLEX} = 1;
	return $swiftUIViewModel;
}

sub generateSwiftUIViewModel{
	my ($viewJSON) = @_;
	
	if($viewJSON->{wType} eq "FlexContainer"){
		my $flexViewModel = FlexUIViewModel::getModelForJSON($viewJSON);
		
		my $viewChildrenRef = $viewJSON->{children};
		for my $eachChild (@$viewChildrenRef) {
			my $childViewModel = generateSwiftUIViewModel($eachChild);

			if(defined($childViewModel)){
				push @{ $flexViewModel->{CHILDREN} }, $childViewModel;
			}
		}
		
		return $flexViewModel;
	}elsif($viewJSON->{wType} eq "Label"){
		return TextUIViewModel::getModelForJSON($viewJSON);
		
	}elsif($viewJSON->{wType} eq "Image"){
		return ImageUIViewModel::getModelForJSON($viewJSON);
	}else{
		return undef;
	}
}


1;