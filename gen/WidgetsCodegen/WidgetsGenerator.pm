use strict;
use warnings;

use XML::LibXML;
use lib '../../gen';
use lib '../WidgetsCodegen';
use JSONParser;
use WidgetsViewGenerator;
use WidgetsBundleCodeGenerator;
use WidgetsClassesCodeGenerator;
use WidgetsJSScriptsGenerator;

package WidgetsGenerator;


sub new {
	my ($class,$widgetsMetadataDir, $widgetsProjectDir) = @_;
    my $self = {
    	widgetsMetadataDirPath => $widgetsMetadataDir,
    	widgetsMetadataPropertiesJSONPath => $widgetsMetadataDir."widgetProperties.json",
    	widgetsProjectDirPath => $widgetsProjectDir,
    	widgetsProjectViewsDirPath => $widgetsProjectDir."Views/",
    	widgetsProjectBundleFilePath => $widgetsProjectDir."KonyWidgetBundle.swift",
    	widgetsProjectWidgetsDirPath => $widgetsProjectDir."Widgets/",
    	widgetsProjectJSScriptsPath => $widgetsProjectDir."JSScripts/",
    	widgetsProjectViewsAbsoluteDirPath => "KonyWidget/Views/",
    	widgetsProjectWidgetsAbsoluteDirPath => "KonyWidget/Widgets/"
    };
    
    cleanResources($self);
    
#   Array of Hash Map - KEYS:FILE_NAME VALUES:FILE_PATH
    $self->{filePathsHashArray} = [];
    
    
    if(not -d $self->{widgetsProjectViewsDirPath}){
    	mkdir $self->{widgetsProjectViewsDirPath};
    }
    
    if(not -d $self->{widgetsProjectWidgetsDirPath}){
    	mkdir $self->{widgetsProjectWidgetsDirPath};
    }
    
    if(not -d $self->{widgetsProjectJSScriptsPath}){
    	mkdir $self->{widgetsProjectJSScriptsPath};
    }
    
    loadWidgetsMetadataPropertiesJSON($self);
    loadWidgetsClasses($self);
    
    bless $self, $class;
    return $self;
}

sub cleanResources{
	my ($self) = @_;
	
	my $widgetViewsDir = $self->{widgetsProjectViewsDirPath};
	my $widgetClassesDir = $self->{widgetsProjectWidgetsDirPath};
	my $widgetJSScriptsDir = $self->{widgetsProjectJSScriptsPath};
	
	system "rm -rf $widgetViewsDir/*";
	system "rm -rf $widgetClassesDir/*";
	system "rm -rf $widgetJSScriptsDir/*";
	
}

sub loadWidgetsMetadataPropertiesJSON{
	my ($self) = @_;
	my $widgetsMetadataPropertiesJSONPath = $self->{widgetsMetadataPropertiesJSONPath};
	my $FILE_HANDLE = undef;
	
	if(-f $widgetsMetadataPropertiesJSONPath){
		open $FILE_HANDLE, "<$widgetsMetadataPropertiesJSONPath" or die "WidgetsGenerator - loadWidgetsMetadataPropertiesJSON : widgetProperties.json file read failed\n";
	}else{
		$FILE_HANDLE = undef;
	}
	
	if(defined $FILE_HANDLE){
		my $parser = new JSONParser();
		my $widgetsMetadataPropertiesJSON = $parser->parseJSONFileToHash($FILE_HANDLE);

		close $FILE_HANDLE;
	
		if(defined $widgetsMetadataPropertiesJSON){
			$self->{widgetsMetadataPropertiesJSON} = $widgetsMetadataPropertiesJSON;
		}else{
			return undef;
		}
	}else{
		return undef;
	}
}

sub loadWidgetsClasses{
	my ($self) = @_;
	
	my @widgetsClasses = ();
	my $widgets = $self->{widgetsMetadataPropertiesJSON}->{widgets};
	
	if (defined $widgets) {
		for my $eachWidget (@$widgets) {
			my $widgetClass = $eachWidget->{widgetDir};
			push @widgetsClasses, $widgetClass
		}
	}
	
	$self->{widgetsClasses} = \@widgetsClasses;
}

sub generateWidgets{
	my ($self) = @_;
	
	
#	S1 : generate widget views as these are needed in S3
	generateWidgetsViews($self);
	
#	S2 : generate widgets bundle with all widgets
	generateWidgetsBundleFile($self);

#	S3 : generate individual widget files 
	generateWidgetClassFiles($self);

#	S4 : generate widget JSscripts
	generateWidgetJSScripts($self);
	
}

sub generateWidgetsViews{
	my ($self) = @_;
	
	WidgetsViewGenerator::generateWidgetsViews($self, $self->{widgetsProjectViewsDirPath}, $self->{widgetsMetadataDirPath}, $self->{widgetsMetadataPropertiesJSON});
}

sub generateWidgetsBundleFile{
	my ($self) = @_;
	
	WidgetsBundleCodeGenerator::generateWidgetsBundleCode($self, $self->{widgetsProjectBundleFilePath}, $self->{widgetsClasses});
}

sub generateWidgetClassFiles{
	my ($self) = @_;
	
	WidgetsClassesCodeGenerator::generateWidgetsClassesCode($self, $self->{widgetsProjectWidgetsDirPath}, $self->{widgetsMetadataPropertiesJSON});
}

sub generateWidgetJSScripts{
	my ($self) = @_;
	
	WidgetsJSScriptsGenerator::generateWidgetsJSScripts($self, $self->{widgetsMetadataDirPath}, $self->{widgetsProjectJSScriptsPath}, $self->{widgetsMetadataPropertiesJSON});
}

sub getGeneratedFilePathHashArray{
	my ($self) = @_;
	return $self->{filePathsHashArray};
}

1;