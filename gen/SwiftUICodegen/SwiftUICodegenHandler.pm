use strict;
use warnings;

use lib '../../gen';
use lib '../SwiftUICodegen';
use JSONParser;
use SwiftUIGenerator;

package SwiftUICodegenHandler;

sub generateSwiftUIView{
	my ($viewName, $viewJSON, $path) = @_;
	
	my $swiftGen = new SwiftUIGenerator($viewName, $viewJSON);
	$swiftGen->generateSwiftUIView($path);
}

1;