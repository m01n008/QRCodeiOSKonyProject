use strict;
use warnings;

use lib '../../gen';
use lib '../WidgetsCodegen';
use JSONParser;
use WidgetsGenerator;

package WidgetsCodegenHandler;

my $konyappunzipdir = "WidgetsCodegen/../konyappunzipped/";
my $widgetsMetadataDir = $konyappunzipdir."KonyWidgets/";
my $widgetsProjectDir = "WidgetsCodegen/../../KonyWidget/";


sub new {
	my ($class) = @_;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub generateWidgets{
	my ($self) = @_;
	my $widgetsGenerator = new WidgetsGenerator($widgetsMetadataDir, $widgetsProjectDir);
	$widgetsGenerator->generateWidgets();
	
	$self->{widgetGeneratorInstance} = $widgetsGenerator;
}

sub addImagesToKonyWidgets{
	my ($self) = @_;
	
	my @images = ();
	
	my $imagesSourceDIR = $widgetsMetadataDir."Images/";
	my $imagesDestinationDIR = $widgetsProjectDir."Images/";
	
	system "rm -rf $imagesDestinationDIR/*";
	
	if(-d $imagesSourceDIR){
		opendir(my $imagesDIR, $imagesSourceDIR) || die "can't opendir $imagesSourceDIR: $!";
	    my @files = readdir($imagesDIR);
	    
	    if(not -d $imagesDestinationDIR){
	    	mkdir $imagesDestinationDIR;
	    }
	
	   	foreach my $image (@files)
	    {
	    	if(-f "$imagesSourceDIR/$image" && ($image =~ /(\.png|\.jpg|\.jpeg)$/)) {
	        	my $sourceImage = $imagesSourceDIR.$image;
	        	my $targetImage = $imagesDestinationDIR.$image;
	        	
	            system "cp $sourceImage $targetImage";
	            
	            push @images, $image;
	        }
	    }
	
	    closedir($imagesDIR);
	    $self->{IMAGES_LIST} = \@images;
	}else{
		return;
	}
		
}

sub getGeneratedFilePathHashArray{
	my ($self) = @_;
	
	my $generatorInstance = $self->{widgetGeneratorInstance};
	return $generatorInstance->getGeneratedFilePathHashArray();
}

sub getImagesList{
	my ($self) = @_; 
	
	return $self->{IMAGES_LIST};
}

1;