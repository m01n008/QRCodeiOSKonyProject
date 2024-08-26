use strict;
use warnings;

use XML::LibXML;
use lib '../../gen';
use JSONParser;

package WidgetsBundleCodeGenerator;


sub generateWidgetsBundleCode{
	my ($self, $widgetBundleFilePath, @widgetsClasses) = @_;
	
	my $widgetBundleCode = getWidgetBundleCode($self, @widgetsClasses);
	writeWidgetBundleCode($self, $widgetBundleFilePath, $widgetBundleCode);
}

sub writeWidgetBundleCode{
	my ($self, $widgetBundleFilePath, $widgetBundleCode) = @_;
	
	open WIDGET_BUNDLE_FILE, ">$widgetBundleFilePath" or die "can't open $widgetBundleFilePath File...";
    print WIDGET_BUNDLE_FILE $widgetBundleCode;
    close WIDGET_BUNDLE_FILE;
}

sub getWidgetBundleCode{
	my ($self, $widgetsClassesRef) = @_;
	
	my @widgetClasses = @$widgetsClassesRef;
	my $widgetClassesCode = "";
	
	for my $eachWidget (@widgetClasses) {
		$widgetClassesCode = $widgetClassesCode."\t\t$eachWidget()\n";
	}
	
	my $widgetBundleSwiftCode = <<here_doc;  #{{{3
import SwiftUI

\@main
struct KonyWidgetBundle: WidgetBundle {
    
    \@WidgetBundleBuilder
    var body: some Widget{
        
$widgetClassesCode
    }
}

here_doc
# }}}
# ---

	return $widgetBundleSwiftCode;
}

1;