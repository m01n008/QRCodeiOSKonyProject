use strict;
use warnings;

use XML::LibXML;
use lib '../../gen';
use lib '../SwiftUICodegen';
use JSONParser;
use SwiftUICodegenHandler;
use XCProjectEditor;

my $skinHash = undef;

package WidgetsViewGenerator;

sub generateWidgetsViews{
	my ($self, $viewsDirPath, $widgetMetadataDir, $widgetsMetaJSON) = @_;
	
	my $widgets = $widgetsMetaJSON->{widgets};
	
	for my $eachWidget (@$widgets) {
		
		my $widgetMetadataViewsDir = $widgetMetadataDir.$eachWidget->{widgetDir}."/Views/";
		
		my $widgetSmallFormName = (defined($eachWidget->{widgetViews}->{SMALL}) && ($eachWidget->{widgetViews}->{SMALL} ne "")) ? $eachWidget->{widgetViews}->{SMALL} : undef;
		my $widgetMediumFormName = (defined($eachWidget->{widgetViews}->{MEDIUM}) && ($eachWidget->{widgetViews}->{MEDIUM} ne "")) ? $eachWidget->{widgetViews}->{MEDIUM} : undef;
		my $widgetLargeFormName = (defined($eachWidget->{widgetViews}->{LARGE}) && ($eachWidget->{widgetViews}->{LARGE} ne "")) ? $eachWidget->{widgetViews}->{LARGE} : undef;
		
		my $widgetDirPath = $viewsDirPath.$eachWidget->{widgetDir}."/";
		
		if(not -d $widgetDirPath){
    		mkdir $widgetDirPath;
    	}
    	
    	if(defined($widgetSmallFormName) && (not -f $widgetMetadataViewsDir.$widgetSmallFormName)){
    		my $path = $widgetMetadataViewsDir.$widgetSmallFormName;
    		generateCompositeJsonView($widgetSmallFormName, $path, $widgetMetadataDir, $widgetMetadataViewsDir);
    	}
    	
    	if(defined($widgetMediumFormName) && (not -f $widgetMetadataViewsDir.$widgetMediumFormName)){
    		my $path = $widgetMetadataViewsDir.$widgetMediumFormName;
    		generateCompositeJsonView($widgetMediumFormName, $path, $widgetMetadataDir, $widgetMetadataViewsDir);
    	}
    	
    	if(defined($widgetLargeFormName) && (not -f $widgetMetadataViewsDir.$widgetLargeFormName)){
    		my $path = $widgetMetadataViewsDir.$widgetLargeFormName;
    		generateCompositeJsonView($widgetLargeFormName, $path, $widgetMetadataDir, $widgetMetadataViewsDir);
    	}
    	
    	generateWidgetView($self, $eachWidget->{widgetDir}, $widgetSmallFormName, $widgetMediumFormName, $widgetLargeFormName, $eachWidget->{widgetURL}, $widgetDirPath);
		
		if(defined($widgetSmallFormName)){
			generateWidgetSwiftUIView($self, $eachWidget->{widgetDir}, $eachWidget->{widgetDir}."SmallView", getWidgetViewJSON($widgetMetadataViewsDir.$widgetSmallFormName), $widgetDirPath);	
		}
		
		if(defined($widgetMediumFormName)){
			generateWidgetSwiftUIView($self, $eachWidget->{widgetDir}, $eachWidget->{widgetDir}."MediumView", getWidgetViewJSON($widgetMetadataViewsDir.$widgetMediumFormName), $widgetDirPath);	
		}
		
		if(defined($widgetLargeFormName)){
			generateWidgetSwiftUIView($self, $eachWidget->{widgetDir}, $eachWidget->{widgetDir}."LargeView", getWidgetViewJSON($widgetMetadataViewsDir.$widgetLargeFormName), $widgetDirPath);	
		}
	}
}

sub generateWidgetView{
#	code generation with conditional of environmental variables and add small medium and large widgets views
	my ($self, $widgetDir, $widgetSmallFormName, $widgetMediumFormName, $widgetLargeFormName, $widgetURL, $path) = @_;
	
	my $widgetViewName = $widgetDir."View";
	my $widgetViewCode = <<here_doc;  #{{{3
import SwiftUI
import WidgetKit
import KonyWidgetSource

struct $widgetViewName : View {
    var entry: StaticTimelineEntry
    
    \@Environment(\\.widgetFamily) var widgetFamily
    
    var body: some View {
here_doc
# }}}
# ---

	if(defined($widgetSmallFormName)){
		my $widgetSmallViewName = $widgetDir."SmallView";
		$widgetViewCode = $widgetViewCode.<<here_doc;  #{{{3
        if(widgetFamily == .systemSmall){
            $widgetSmallViewName(model: entry.model)
                .widgetURL(URL(string: "$widgetURL"))
        }
        
here_doc
# }}}
# ---
	}
	
	if(defined($widgetMediumFormName)){
		my $widgetMediumViewName = $widgetDir."MediumView";
		$widgetViewCode = $widgetViewCode.<<here_doc;  #{{{3
        if(widgetFamily == .systemMedium){
            $widgetMediumViewName(model: entry.model)
                .widgetURL(URL(string: "$widgetURL"))
        }
        
here_doc
# }}}
# ---
	}
	
	if(defined($widgetLargeFormName)){
		my $widgetLargeViewName = $widgetDir."LargeView";
		$widgetViewCode = $widgetViewCode.<<here_doc;  #{{{3
        if(widgetFamily == .systemLarge){
            $widgetLargeViewName(model: entry.model)
                .widgetURL(URL(string: "$widgetURL"))
        }
        
here_doc
# }}}
# ---
	}
	
		$widgetViewCode = $widgetViewCode.<<here_doc;  #{{{3
    }
}
here_doc
# }}}
# ---

#	Save widget view
	my $widgetViewFileName = $widgetViewName.".swift";
	open WIDGET_VIEW_FILE, ">$path/$widgetViewFileName" or die "can't open $path File...";
    print WIDGET_VIEW_FILE $widgetViewCode;
    close WIDGET_VIEW_FILE;
    
    #   Add widget view to target
    
	my $widgetsProjectViewsAbsoluteDirPath = $self->{widgetsProjectViewsAbsoluteDirPath};
    my %filePathHash =  ($widgetViewName.".swift" => $widgetsProjectViewsAbsoluteDirPath.$widgetDir);
	push @{ $self->{filePathsHashArray} }, \%filePathHash;
    
}

sub generateWidgetSwiftUIView{
	my ($self, $widgetDir, $viewName, $viewJSON, $genPath) = @_;
	
	SwiftUICodegenHandler::generateSwiftUIView($viewName, $viewJSON, $genPath);
	
	my $widgetsProjectViewsAbsoluteDirPath = $self->{widgetsProjectViewsAbsoluteDirPath};
    my %filePathHash =  ($viewName.".swift" => $widgetsProjectViewsAbsoluteDirPath.$widgetDir);
	push @{ $self->{filePathsHashArray} }, \%filePathHash;
}

sub getWidgetViewJSON{
	my ($widgetViewMetaJSONPath) = @_;
	
	my $FILE_HANDLE = undef;
	
	if(-f $widgetViewMetaJSONPath){
		open $FILE_HANDLE, "<$widgetViewMetaJSONPath" or die "WidgetsViewGenerator - loading widget view meta JSON : $widgetViewMetaJSONPath failed\n";
	}else{
		$FILE_HANDLE = undef;
	}
	
	if(defined $FILE_HANDLE){
		my $parser = new JSONParser();
		my $widgetsViewJSON = $parser->parseJSONFileToHash($FILE_HANDLE);

		close $FILE_HANDLE;
	
		if(defined $widgetsViewJSON){
			return $widgetsViewJSON;
		}else{
			return undef;
		}
	}else{
		return undef;
	}
}

sub generateCompositeJsonView{
	my ($widgetFormName, $path, $widgetMetadataDir, $widgetMetadataViewsDir) = @_;
	
	my $formName = substr($widgetFormName, 0, -5);
	my $formFolderPath = $widgetMetadataViewsDir.$formName.".sm/";
	my $formJsonPath = $formFolderPath.$formName.".json";
	
	my $formJsonValue = generateCompositeView($widgetMetadataDir, $formFolderPath, $formName.".json");
	
	use JSON;
	my $contentsJSONFilePath = $widgetMetadataViewsDir.$formName.".json";
    my $contentsJSON = to_json($formJsonValue, {pretty => 1});
 	open my $fh, '>', $contentsJSONFilePath;
 	print $fh $contentsJSON;
 	close $fh;
}

sub generateCompositeView{
	my ($widgetMetadataDir, $formFolderPath, $jsonName) = @_;
	
	my $jsonValue = getWidgetViewJSON($formFolderPath.$jsonName);
	
	my @childrenJsonValue;
	
	my $jsonChildren = $jsonValue->{children};
	
	if(defined $jsonChildren){
		for my $child (@$jsonChildren){
			my $childJson = generateCompositeView($widgetMetadataDir, $formFolderPath, $child.".json");
			push @childrenJsonValue, $childJson;
		}
		
		$jsonValue->{children} = \@childrenJsonValue;
	}
	
#	Update skin
	my $skinID = $jsonValue->{_skin_};
	my $skinJSON = getSkinJSONForID($skinID, $widgetMetadataDir, $formFolderPath);
	$jsonValue->{_skin_} = $skinJSON;
	
	return $jsonValue;
}

sub getSkinJSONForID{
	my ($skinID, $widgetMetadataDir, $formFolderPath) = @_;
	
	if(not defined $skinHash){
		$skinHash = getThemesHashWithKUID($widgetMetadataDir, $formFolderPath);
	}
	
	return $skinHash->{$skinID}
}

sub getThemesHashWithKUID{
	my ($widgetMetadataDir, $formFolderPath) = @_;
	my $rootThemePath = $widgetMetadataDir."/themes/defaultTheme/";
	my $formThemePath = $formFolderPath."../themes/defaultTheme/";
	# Form theme path was initial implementation. Maintaining the same as default way
	my $themesPath = $formThemePath; 

	if(-d $rootThemePath){
		$themesPath = $rootThemePath;
	}
	
	if(-d $themesPath)
	{
		$skinHash = ();
		
		opendir my $dir, $themesPath or die "Cannot open directory: $!";
		my @files = readdir $dir;
		closedir $dir;
		
		for my $file (@files)
		{
			my $filePath = $themesPath."$file";
			
			if(-f $filePath){
				my $fileJson = getWidgetViewJSON($filePath);
				my $fileKUID = $fileJson->{kuid};
				$skinHash->{$fileKUID} = $fileJson;
			}
		}
	}
	
	return $skinHash;
}

1;