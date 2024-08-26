#!/usr/bin/perl -w

package WatchAppHandler;

use strict;
use lib '../../gen';
use JSONParser;
use GlobalModel;
use WidgetDataProcessor;
use StoryBoardGenerator;
use CodeGenerator;
use Data::Dumper;
use Log::Log4perl;
use Logger;
Logger::init();

my %FormHashes;				# holds all the form's hashes created from JSON files using JSON parser module. FormID is the key & formHash id the value.
my %TemplateHashes;    		# holds all the template's hashes. TemplateID is the key and templateHash is the value.
my @generatedFiles = ("Interface.storyboard");

my $logger = Log::Log4perl->get_logger("WatchAppHandler");

sub new
{
    my ($class) = @_;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub setSkinsTheme
{
	my ($self, $skinJSONPath) = @_;
	
	my $parser = new JSONParser();
	open my $FILE_HANDLE, "<$skinJSONPath" or die "can't open widget JSON File...";
	my $skinHashRef = $parser->parseJSONFileToHash($FILE_HANDLE);
	#print Dumper $skinHashRef;
	$self->{"skinsHash"} = $skinHashRef;
}

sub setWatchStartupForm {
	my ($self, $sartupForm) = @_;
	$self->{"watchStartupForm"} = $sartupForm;
}

sub updateContentsJSONForAppIcons {
	my ($self, $watchAppIconsImagesNameHashRef) = @_;

	my $parser = new JSONParser();
	my $contentsJSONPath = "../KWatchOS2/Assets.xcassets/AppIcon.appiconset/Contents.json";
	
	open my $FILE_HANDLE, "<$contentsJSONPath" or die "can't open Contents JSON File...";
	my $contentsFileHashRef = $parser->parseJSONFileToHash($FILE_HANDLE);
	close $FILE_HANDLE;
	
	my $imagesArrayRef = $contentsFileHashRef->{"images"};
	
	for my $imageInfoHashRef (@$imagesArrayRef) {
		
		my $imageName;

		if($imageInfoHashRef->{"role"}){
			if ($imageInfoHashRef->{"role"} eq "notificationCenter") {
				if ( $imageInfoHashRef->{"subtype"} eq "38mm" && defined $watchAppIconsImagesNameHashRef->{"notificationCenter38mm"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"notificationCenter38mm"};
				} elsif ( $imageInfoHashRef->{"subtype"} eq "42mm" && defined $watchAppIconsImagesNameHashRef->{"notificationCenter42mm"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"notificationCenter42mm"};
				}
			} elsif ($imageInfoHashRef->{"role"} eq "appLauncher") {
				if ( defined $imageInfoHashRef->{"subtype"} && $imageInfoHashRef->{"subtype"} eq "38mm" && defined $watchAppIconsImagesNameHashRef->{"appLauncher38mm"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"appLauncher38mm"};
                }elsif ( defined $imageInfoHashRef->{"subtype"} && $imageInfoHashRef->{"subtype"} eq "40mm" && defined $watchAppIconsImagesNameHashRef->{"appLauncher42mm"} ) {
                        $imageName = $watchAppIconsImagesNameHashRef->{"appLauncher42mm"};
                }elsif ( defined $imageInfoHashRef->{"subtype"} && $imageInfoHashRef->{"subtype"} eq "44mm" && defined $watchAppIconsImagesNameHashRef->{"appLauncher44mm"} ) {
                        $imageName = $watchAppIconsImagesNameHashRef->{"appLauncher44mm"};
                }
			} elsif ($imageInfoHashRef->{"role"} eq "longLook") {
				if ( $imageInfoHashRef->{"subtype"} eq "42mm" && defined $watchAppIconsImagesNameHashRef->{"longLook42mm"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"longLook42mm"};
				} 
			} elsif ($imageInfoHashRef->{"role"} eq "quickLook") {
				if ( $imageInfoHashRef->{"subtype"} eq "38mm" && defined $watchAppIconsImagesNameHashRef->{"quickLook38mm"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"quickLook38mm"};
				} elsif ( $imageInfoHashRef->{"subtype"} eq "42mm" && defined $watchAppIconsImagesNameHashRef->{"quickLook42mm"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"quickLook42mm"};
                } elsif ( $imageInfoHashRef->{"subtype"} eq "44mm" && defined $watchAppIconsImagesNameHashRef->{"quickLook44mm"} ) {
                    $imageName = $watchAppIconsImagesNameHashRef->{"quickLook44mm"};
                }
			}elsif ($imageInfoHashRef->{"role"} eq "companionSettings") {
				if ( $imageInfoHashRef->{"scale"} eq "2x" && defined $watchAppIconsImagesNameHashRef->{"companionSettings2x29"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"companionSettings2x29"};
				} elsif ( $imageInfoHashRef->{"scale"} eq "3x" && defined $watchAppIconsImagesNameHashRef->{"companionSettings3x29"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"companionSettings3x29"};
				}
			}
		}

		if($imageInfoHashRef->{"idiom"}){
			if ($imageInfoHashRef->{"idiom"} eq "watch-marketing") {
				if ( $imageInfoHashRef->{"scale"} eq "1x" && defined $watchAppIconsImagesNameHashRef->{"watchMarketing1x"} ) {
					$imageName = $watchAppIconsImagesNameHashRef->{"watchMarketing1x"};
				}
			}
		}

		if (defined $imageName) {
			$imageInfoHashRef->{"filename"} = $imageName;
		} else {
			delete $imageInfoHashRef->{"filename"};
		}
	}
	
	use JSON;
    my $contentsJSON = to_json($contentsFileHashRef, {pretty => 1});
 	open my $fh, '>', $contentsJSONPath;
 	print $fh $contentsJSON;
 	close $fh;
}

sub getStaticInternationalisationHash {
	my ($self) = @_;
	my $iterator = new WidgetDataProcessor($self->{"skinsHash"});
	return $iterator->getStaticI18nHash();
}

sub prepareWidgetHierarchy {
	my ($containerHashRef, $directoryPath) = @_;

 	if(exists($containerHashRef->{'children'})) {
 		my $childrenRef = $containerHashRef->{'children'};
		
		## Iterate through the children array and replace each widgetID with the corresponding widget hash.
		my $parser = new JSONParser();
		my @hashedChildren;
		for my $childID (@$childrenRef) {
			my $childJSONPath = $directoryPath."/$childID.json";			
			open my $FILE_HANDLE, "<$childJSONPath" or die "can't open widget JSON File...";
			my $childHashRef = $parser->parseJSONFileToHash($FILE_HANDLE);
			push(@hashedChildren, $childHashRef);
			
			## Recursively call for the subWidget's widget hierarchy preparation...
 			prepareWidgetHierarchy($childHashRef, $directoryPath);
		}
		
		$containerHashRef->{'children'} = \@hashedChildren;	
 	}
}


sub convertJSONFilesIntoFormHashes {
	my ($containerPath, $containerDirectoryPath) = @_;
	
	my $parser = new JSONParser();
	open my $FILE_HANDLE, "<$containerPath" or die "can't open widget JSON File...";
	my $containerHashRef = $parser->parseJSONFileToHash($FILE_HANDLE);
	prepareWidgetHierarchy($containerHashRef, $containerDirectoryPath);

	## Save the container hash ref in the appropriate data structure.
	my $containerType = $containerHashRef->{"wType"};
	my $containerId = $containerHashRef->{"id"};
	my $wType = $containerHashRef->{"wType"};
	if ($wType eq "WatchDynamicNotificationForm") {
		## since both static and dynamic notifications forms share the same form id.
		$containerId = $containerId."Dynamic";
	}
	
	if ($containerType eq "Template") {
		$TemplateHashes{$containerId} = $containerHashRef;
	} else {
		$FormHashes{$containerId} = $containerHashRef;
	}
}

# It converts all the json files to hashes

sub convertJSONFilesIntoFormHashesUtil {
	my ($directoryPath) = @_;

	open DIR, "ls $directoryPath |" or die 'Can not open watch JSON directory';
    chomp(my @subDirectoryList = <DIR>);
    close DIR;
    
    for my $subDirectory (@subDirectoryList) {
    	my $subDirectoryPath = $directoryPath."/".$subDirectory;
		if (-d $subDirectoryPath) {
			if ($subDirectory =~ /.sm/) {
				my ($containerName, $dump) = split(/\./, $subDirectory);
				my $containerPath = $subDirectoryPath."/$containerName.json";
				
				## Check for dynamic Notification directory...
				my $dynamicNotificationDirPath = $subDirectoryPath."/dynamic";
				if (-d $dynamicNotificationDirPath) {
					my $dynamicNotificationFormPath = $dynamicNotificationDirPath."/$containerName.json";
					convertJSONFilesIntoFormHashes($dynamicNotificationFormPath, $dynamicNotificationDirPath);
				}
				
				convertJSONFilesIntoFormHashes($containerPath, $subDirectoryPath);
			} else {
				convertJSONFilesIntoFormHashesUtil($subDirectoryPath);
			}
		}
	}
}	


## Get the watch models created from hashes in GlobalModelStore...

sub createModelsFromHashes {
	my $globalModel = new GlobalModel();
	$globalModel->convertWidgetHashesToModels(\%FormHashes, \%TemplateHashes);
}

## Iterate through the models created in global model store and send events back to the watchAppHandler...

sub processModels {
	my ($self) = @_;
	$logger->debug( Dumper $self->{"skinsHash"} );
	my $processor = new WidgetDataProcessor($self->{"skinsHash"});
	$processor->processModelsInGlobalModelStore($self);
}

sub passTemplateModelHashToStoryboardGenerator {
	my ($self, $templateId, $templateModelHashRef) = @_;
	my $SBGenerator = StoryBoardGenerator->getInstance();
	$SBGenerator->saveTemplateModelHash($templateId, $templateModelHashRef);
}

sub passFormModelHashToStoryboardGenerator {
	my ($self, $formId, $formModelHashRef) = @_;
	my $SBGenerator = StoryBoardGenerator->getInstance();
	$SBGenerator->saveFormModelHash($formId, $formModelHashRef);
}

sub preProcessingEvent {
	## May be required later..
}

sub postProcessingEvent {
	my $SBGenerator = StoryBoardGenerator->getInstance();
	$SBGenerator->generate();
}

## Handles the events created by the Iterator class...
## This subroutine calls the Story board generator and code behind generator to get the required files generated...

sub handleEventForContainerModel {
	my ($self, $containerModel) = @_;
	my @containerModelArray;
	push @containerModelArray, $containerModel;
	
	# check for startup form and set it.
	if ($self->{"watchStartupForm"} eq $containerModel->getFormattedValueForKey("identifier")) {
		$containerModel->setStartupForm();
	}
	
	if ($containerModel->{"wType"} ne "Template") {
		my $SBGenerator = StoryBoardGenerator->getInstance();
		$SBGenerator->addForms(@containerModelArray);
	}
	
	my $codeGenerator = new CodeGenerator();
	my $containerType = $containerModel->getFormattedValueForKey("wType");
	## Controller code need not be generated for static notification..
	if ($containerType ne "WatchStaticNotificationForm") {
		push @generatedFiles, $codeGenerator->generateCodeBehindForFormModel($containerModel);
	}
}


## Takes JSON files as input from extract.pl script and returns an array of generated file names...

sub getWatchAppFilesUsingJSONFiles {
	my ($self, $watchDirectoryPath) = @_;
	
	open DIR, "ls $watchDirectoryPath/ |" or die 'Can not open watch forms directory';
	chomp(my @watchSubDirectoryList = <DIR>);
	close DIR;
	
	for my $watchSubDirectory (@watchSubDirectoryList) {
		my $watchSubDirectoryPath = $watchDirectoryPath."/".$watchSubDirectory;
		convertJSONFilesIntoFormHashesUtil($watchSubDirectoryPath);
	}

 	createModelsFromHashes();
 	$self->processModels();

 	return @generatedFiles;
}

sub addHeaderImportsToObjCBridgingHeader{
	my ($self, @genFilesNamesArray) = @_;
	my $objCBridgingHeader = "../KWatchOS2\ Extension/KWatchOS2\ Extension-Bridging-Header.h";
	
	open FILE_HANDLE, ">$objCBridgingHeader" or die "can't open widget JSON File...";	
	print FILE_HANDLE "//\
//  Use this file to import your target's public headers that you would like to expose to Swift.\
//\
";
	for my $genFile (@genFilesNamesArray){
		if($genFile =~ /\.h$/){
			print FILE_HANDLE "\n#import \"$genFile\"";
		}
	}
	close FILE_HANDLE;
}

1;



