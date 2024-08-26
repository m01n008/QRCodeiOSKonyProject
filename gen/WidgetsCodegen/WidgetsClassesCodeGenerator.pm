use strict;
use warnings;

use XML::LibXML;
use lib '../../gen';
use JSONParser;

package WidgetsClassesCodeGenerator;


sub generateWidgetsClassesCode{
	my ($self, $widgetsDirPath, $widgetsMetaJSON) = @_;
	
	my $widgets = $widgetsMetaJSON->{widgets};
	
	for my $eachWidget (@$widgets) {
		
		my $widgetClassCode = getWidgetClassCode($self, $eachWidget);
		writeWidgetClassCode($self, $widgetsDirPath, $eachWidget->{widgetDir}, $widgetClassCode);
		
#		Add this class file to target
    
	    my $widgetsProjectWidgetsAbsoluteDirPath = $self->{widgetsProjectWidgetsAbsoluteDirPath};
	    my %filePathHash =  ( $eachWidget->{widgetDir}.".swift" => $widgetsProjectWidgetsAbsoluteDirPath);
		push @{ $self->{filePathsHashArray} }, \%filePathHash;
	}
}

sub getWidgetClassCode{
	my ($self, $widgetClassMetadataJSON) = @_;
	
	my $widgetClassName = $widgetClassMetadataJSON->{widgetDir};
	my $widgetViewName = $widgetClassName."View";
	my $widgetID = $widgetClassMetadataJSON->{widgetID};
	my $widgetName = $widgetClassMetadataJSON->{widgetName};
	my $widgetDescription = $widgetClassMetadataJSON->{widgetDescription};
	my $widgetSupportedFamilies = getWidgetSupportedFamilies($self, $widgetClassMetadataJSON->{widgetSizes});
	
	$widgetViewName = $widgetViewName."(entry: entry)";

	my $widgetBundleSwiftCode = <<here_doc;  #{{{3
import WidgetKit
import SwiftUI
import KonyWidgetSource

struct $widgetClassName: Widget {
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: "$widgetID", provider: StaticTimelineProvider(widgetKind: "$widgetID")){ entry in
        	$widgetViewName
        }
        .configurationDisplayName("$widgetName")
        .description("$widgetDescription")
        .supportedFamilies($widgetSupportedFamilies)
    }
}
here_doc
# }}}
# ---

	return $widgetBundleSwiftCode;
}

sub writeWidgetClassCode{
	my ($self, $widgetsDirPath, $widgetClassName, $widgetClassCode) = @_;
	
	my $file = $widgetsDirPath."$widgetClassName.swift";

    open WIDGET_CLASS_FILE, ">$file" or die "can't create $file File...";
    print WIDGET_CLASS_FILE $widgetClassCode;
    close WIDGET_CLASS_FILE;
}

sub getWidgetSupportedFamilies{
	my ($self, $widgetSizes) = @_;
	my @widgetSizesArray = @$widgetSizes;
	
	my $widgetSupportsSmallSize = 0;
	my $widgetSupportsMediumSize = 0;
	my $widgetSupportsLargeSize = 0;
	
	my $widgetSupportedFamilies = "[";
	my $widgetSupportefFamiliesCount = scalar @widgetSizesArray;
	
	for(my $index = 0; $index lt $widgetSupportefFamiliesCount; $index++){
		my $size = $widgetSizesArray[$index];
		my $sizeOutputString = "";
		
		if($size eq "SMALL"){
			$sizeOutputString = ".systemSmall";
		}elsif($size eq "MEDIUM"){
			$sizeOutputString = ".systemMedium";
		}elsif($size eq "LARGE"){
			$sizeOutputString = ".systemLarge";
		}
		
		if($index eq $widgetSupportefFamiliesCount-1){
			$widgetSupportedFamilies = $widgetSupportedFamilies."$sizeOutputString";
		}else{
			$widgetSupportedFamilies = $widgetSupportedFamilies."$sizeOutputString,";
		}
	}
	
	$widgetSupportedFamilies = $widgetSupportedFamilies."]";
	
	return $widgetSupportedFamilies;
}

1;