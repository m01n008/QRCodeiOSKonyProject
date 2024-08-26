use strict;
use warnings;

use lib '../../gen';
use lib '../LaunchStoryboardGen';
use JSONParser;
use ModelFactory;

package LaunchStoryboardHandler;

my $konyappunzipdir = "LaunchStoryboardGen/../konyappunzipped";
my $konyLaunchStoryboardFile;
my $konyLaunchStoryboardIpadFile;
my $defaultStoryboardJSON = "LaunchStoryboardGen/Default/defaultStoryboard.json";
my $platformSplashScreenPropertiesJSON = $konyappunzipdir."/splashscreenproperties.json";

=pod
=head2 LaunchStoryboardHandler constructor
Parameters  : platformBuild #1-iphone #2-ipad #3-universal
Returns     : LaunchStoryboardHandler instance
Description : Creates instance of LaunchStoryboardHandler class
			  This is a handler class
			  Handles generation of launch storyboard
=cut
sub new {
	my ($class,$platformBuild, $rscHandler) = @_;
    my $self = {
    	PLATFORM_BUILD => $platformBuild,
        rscHandler => $rscHandler
    };
    
    $konyLaunchStoryboardFile = "LaunchStoryboardGen/../$rscHandler->{_LaunchStoryBoard}/KonyLaunch.storyboard";
    $konyLaunchStoryboardIpadFile = "LaunchStoryboardGen/../$rscHandler->{_LaunchStoryBoard}/KonyLaunchIpad.storyboard";
    
    bless $self, $class;
    resetKonyLaunchStoryboardToDefault($self);
    return $self;
}

=pod
=head2 generateLaunchStoryboard
Parameters  : None
Returns     : None
Description : Generates launch storyboard
=cut
sub generateLaunchStoryboard{
	my ($self) = @_;
	
	if($self->{PLATFORM_BUILD} eq 1){
		#generate storyboard for iphone build at KonyLaunch.storyboard
		my $platformIphoneStoryboardMetaJSON = getPlatformIphoneStoryboardMetaJSON($self);
		if(!defined $platformIphoneStoryboardMetaJSON){
			print "LaunchStoryboardHandler - Platform splashscreenproperties.json for iphone not packaged\n";
			print "LaunchStoryboardHandler - Default launch screen storyboard generated\n";
		}else{
			my $storyboardModel = getModelFromMetadata($self,$platformIphoneStoryboardMetaJSON);
			
			if(defined $storyboardModel){
				generateLaunchStoryboardWithModel($self,$storyboardModel,$konyLaunchStoryboardFile);
				print "LaunchStoryboardHandler - Launch screen storyboard generated\n";	
			}else{
				print "LaunchStoryboardHandler - getModelFromMetadata : Model undefined\n";
			}
		}
		
	}elsif($self->{PLATFORM_BUILD} eq 2){
		#generate storyboard for ipad build at KonyLaunch.storyboard
		my $platformIpadStoryboardMetaJSON = getPlatformIpadStoryboardMetaJSON($self);
		if(!defined $platformIpadStoryboardMetaJSON){
			print "LaunchStoryboardHandler - Platform splashscreenproperties.json for ipad not packaged\n";
			print "LaunchStoryboardHandler - Default launch screen storyboard generated\n";
		}else{
			my $storyboardModel = getModelFromMetadata($self,$platformIpadStoryboardMetaJSON);
			
			if(defined $storyboardModel){
				generateLaunchStoryboardWithModel($self,$storyboardModel,$konyLaunchStoryboardFile);
				print "LaunchStoryboardHandler - Launch screen storyboard generated\n";	
			}else{
				print "LaunchStoryboardHandler - getModelFromMetadata : Model undefined\n";
			}
		}
	}elsif($self->{PLATFORM_BUILD} eq 3){
		#generate storyboard for iphone build at KonyLaunch.storyboard
		#generate storyboard for ipad build at KonyLaunchIpad.storyboard
		my $platformIphoneStoryboardMetaJSON = getPlatformIphoneStoryboardMetaJSON($self);
		my $platformIpadStoryboardMetaJSON = getPlatformIpadStoryboardMetaJSON($self);
		if(!defined $platformIphoneStoryboardMetaJSON or !defined $platformIpadStoryboardMetaJSON){
			print "LaunchStoryboardHandler - Platform splashscreenproperties.json for iphone/ipad not packaged\n";
			print "LaunchStoryboardHandler - Default launch screen storyboard generated\n";
		}else{
			my $storyboardIphoneModel = getModelFromMetadata($self,$platformIphoneStoryboardMetaJSON);
			my $storyboardIpadModel = getModelFromMetadata($self,$platformIpadStoryboardMetaJSON);
			
			if(defined $storyboardIphoneModel and defined $storyboardIpadModel){
				generateLaunchStoryboardWithModel($self,$storyboardIphoneModel,$konyLaunchStoryboardFile);
				generateLaunchStoryboardWithModel($self,$storyboardIpadModel,$konyLaunchStoryboardIpadFile);
				print "LaunchStoryboardHandler - Launch screen storyboard generated\n";	
			}else{
				print "LaunchStoryboardHandler - getModelFromMetadata : Model undefined\n";
			}
		}
	}
	
	
}

#****************PRIVATE API'S****************#

=pod
=head2 generateLaunchStoryboardWithModel
Parameters  : StoryboardModel(RootContainerModel)
Returns     : None
Description : Uses the storyboard model object and generates KonyLaunch.storyboard
			  Handles generation of launch storyboard
=cut
sub generateLaunchStoryboardWithModel{
	my ($self,$storyboardModel,$storyboardLocation) = @_;
	my $storyboardLayoutEngine = new StoryboardLayoutEngine();
	$storyboardLayoutEngine->layoutRootContainerModel($storyboardModel);
	
	my $storyboardDeviceID = $storyboardLayoutEngine->getStoryboardFrame()->{deviceID};
	
    my $storyboardGenerator = new StoryboardGenerator($storyboardDeviceID,$self->{rscHandler});
	$storyboardGenerator->generateLaunchStoryboard($storyboardModel,$storyboardLocation);
}

=pod
=head2 resetKonyLaunchStoryboardToDefault
Parameters  : None
Returns     : None
Description : Uses default storyboard metadata JSON and generates storyboard
			  This storyboard has simple UIView with background color black 
=cut
sub resetKonyLaunchStoryboardToDefault{
	my ($self) = @_;
	my $defaultStoryboardMetaJSON = getDefaultStoryboardMetaJSON();
	if(defined $defaultStoryboardMetaJSON){
		my $defaultStoryboardModel = getModelFromMetadata($self,$defaultStoryboardMetaJSON);
		generateLaunchStoryboardWithModel($self,$defaultStoryboardModel,$konyLaunchStoryboardFile);
		if($self->{PLATFORM_BUILD} eq 3){
			generateLaunchStoryboardWithModel($self,$defaultStoryboardModel,$konyLaunchStoryboardIpadFile);
		}
	}else{
		print "LaunchStoryboardHandler - resetKonyLaunchStoryboardToDefault : File read failed\n";
	}
}

=pod
=head2 getModelFromMetadata
Parameters  : None
Returns     : StoryboardModel(RootContainerModel)
Description : Reads the storyboard meta JSON coming input from platform codegen
			  Uses this metadata and Model Factory class to create StoryboardModel
=cut
sub getModelFromMetadata{
	my ($self,$storyboardMetaJSON) = @_;
	my $storyboardModel = ModelFactory::createModelWithStorybaordMetaJSON($storyboardMetaJSON);
	if(defined $storyboardModel){
		return $storyboardModel;	
	}else{
		print "LaunchStoryboardHandler - getModelFromMetadata : Model factory returning undefined\n";
	}
	return undef;
}

=pod
=head2 getDefaultStoryboardMetaJSON
Parameters  : LaunchStoryboardHandler Instance
Returns     : returns default storyboardMetadata json
Description : Reads the default storyboardMetaJSON file and returns the default splash config
=cut
sub getDefaultStoryboardMetaJSON{
	my ($self) = @_;
	my $path = $defaultStoryboardJSON;
	my $FILE_HANDLE;
	
	if(-f $path){
		open $FILE_HANDLE, "<$path" or die "LaunchStoryboardHandler - getDefaultStoryboardMetaJSON : StoryboardMetaJson file read failed\n";
	}else{
		return undef;
	}
	
	my $parser = new JSONParser();
	my $storyboardMetaJSON = $parser->parseJSONFileToHash($FILE_HANDLE);
	close $FILE_HANDLE;
	
	return $storyboardMetaJSON;
}

=pod
=head2 getPlatformIphoneStoryboardMetaJSON
Parameters  : LaunchStoryboardHandler Instance
Returns     : iphone splashConfig JSON object containing platfrom storyboardMetadata  
Description : Reads the generated splashscreenproperties.json file and returns iphone splash config
=cut
sub getPlatformIphoneStoryboardMetaJSON{
	my ($self) = @_;
	my $splashJSONPath = $platformSplashScreenPropertiesJSON;
	my $FILE_HANDLE = undef;
	
	if(-f $splashJSONPath){
		open $FILE_HANDLE, "<$splashJSONPath" or die "LaunchStoryboardHandler - getPlatformIphoneStoryboardMetaJSON : splashscreenproperties.json file read failed\n";
	}else{
		$FILE_HANDLE = undef;
	}
	
	if(defined $FILE_HANDLE){
		my $parser = new JSONParser();
		my $splashMetaJSON = $parser->parseJSONFileToHash($FILE_HANDLE);
		my $splashConfig = undef;
		
		if(defined $splashMetaJSON->{splashScreen}->{mobile}->{iphone}->{splashConfig}){
			$splashConfig = $splashMetaJSON->{splashScreen}->{mobile}->{iphone}->{splashConfig};
		}

		close $FILE_HANDLE;
	
		if(defined $splashConfig){
			return $splashConfig;
		}else{
			return undef;
		}
	}else{
		return undef;
	}
}

=pod
=head2 getPlatformIpadStoryboardMetaJSON
Parameters  : LaunchStoryboardHandler Instance
Returns     : ipad splashConfig JSON object containing platfrom storyboardMetadata  
Description : Reads the generated splashscreenproperties.json file and returns ipad splash config
=cut
sub getPlatformIpadStoryboardMetaJSON{
	my ($self) = @_;
	my $splashJSONPath = $platformSplashScreenPropertiesJSON;
	my $FILE_HANDLE = undef;
	
	if(-f $splashJSONPath){
		open $FILE_HANDLE, "<$splashJSONPath" or die "LaunchStoryboardHandler - getPlatformIpadStoryboardMetaJSON : splashscreenproperties.json file read failed\n";
	}else{
		$FILE_HANDLE = undef;
	}
	
	if(defined $FILE_HANDLE){
		my $parser = new JSONParser();
		my $splashMetaJSON = $parser->parseJSONFileToHash($FILE_HANDLE);
		my $splashConfig = undef;
		
		if(defined $splashMetaJSON->{splashScreen}->{tablet}->{ipad}->{splashConfig}){
			$splashConfig = $splashMetaJSON->{splashScreen}->{tablet}->{ipad}->{splashConfig};
		}
		
		close $FILE_HANDLE;
	
		if(defined $splashConfig){
			return $splashConfig;
		}else{
			return undef;
		}
	}else{
		return undef;
	}
}

1;
