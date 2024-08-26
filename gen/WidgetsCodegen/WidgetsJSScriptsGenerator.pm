use strict;
use warnings;

use XML::LibXML;
use lib '../../gen';
use JSONParser;
use File::Copy;

package WidgetsJSScriptsGenerator;


sub generateWidgetsJSScripts{
	my ($self, $widgetsMetaDirPath, $widgetsProjectJSScriptsPath, $widgetsMetaJSON) = @_;
	
	generateApplicationWidgetsJSScripts($widgetsMetaDirPath, $widgetsProjectJSScriptsPath, $widgetsMetaJSON);
	generateWidgetsCommonJSScripts($widgetsMetaDirPath, $widgetsProjectJSScriptsPath, $widgetsMetaJSON);
}

sub generateApplicationWidgetsJSScripts{
	my ($widgetsMetaDirPath, $widgetsProjectJSScriptsPath, $widgetsMetaJSON) = @_;
	my $widgets = $widgetsMetaJSON->{widgets};
	
	for my $eachWidget (@$widgets) {
#		Create widgetDIR in Project JSScripts
		my $widgetDirName = $eachWidget->{widgetDir};
		my $widgetsProjectJSScriptsDir = $widgetsProjectJSScriptsPath.$widgetDirName;
		my $widgetsMetaJSScriptsDir = $widgetsMetaDirPath.$widgetDirName;
		
		mkdir $widgetsProjectJSScriptsDir;

#		Copy widgets JSScripts
		my $eachWidgetJSScriptsMetaDir = $widgetsMetaJSScriptsDir."/JSScripts/";
		
		my @jsScriptFiles = glob($eachWidgetJSScriptsMetaDir."*.js");
		
		for my $jsScript (@jsScriptFiles){
			system "cp -f $jsScript $widgetsProjectJSScriptsDir/"
		}
	}
}

sub generateWidgetsCommonJSScripts{
	my ($widgetsMetaDirPath, $widgetsProjectJSScriptsPath, $widgetsMetaJSON) = @_;
	
	my $widgetsProjectCommonJSDir = $widgetsProjectJSScriptsPath."CommonJS";
	mkdir $widgetsProjectCommonJSDir;
	
	my $widgetMetaCommonJSScriptsDir = $widgetsMetaDirPath."CommonJSScripts/";
	
	my @commonJSScriptFiles = glob($widgetMetaCommonJSScriptsDir."*.js");
		
	for my $jsScript (@commonJSScriptFiles){
		system "cp -f $jsScript $widgetsProjectCommonJSDir"
	}
}

1;