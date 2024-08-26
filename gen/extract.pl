#!/usr/bin/perl -w
use strict;
use warnings;
use lib '.';
use XML::LibXML;
use extractModule;
use Getopt::Long;
use LWP::Simple;
use Fcntl;
use POSIX;
use Encode;
use Data::Dumper;
use Storable;
use File::Basename;
use File::Find;
use lib 'WatchBindings';
use WatchAppHandler;
use JSONParser;
use JSON_PLIST;
use JSON;
use File::Spec::Functions 'catfile';
use XCProjectEditor;
use PlistUtil;
use UniversalApp;
use AppClipHandler;
use lib 'AppIconHelper';
use AppIconHandler;
use Cwd qw(abs_path);
use NFIConfigurator;
use lib 'LaunchStoryboardGen';
use lib 'LaunchStoryboardGen/Formatters';
use lib 'LaunchStoryboardGen/Models';
use lib 'LaunchStoryboardGen/ViewModels';
use LaunchStoryboardHandler;
use lib 'SwiftUICodegen';
use lib 'SwiftUICodegen/Models';
use lib 'SwiftUICodegen/Views';
use SwiftUICodegenHandler;
use lib 'WidgetsCodegen';
use WidgetsCodegenHandler;
############################################
# variable declaration section
############################################
# FFI Bindings info
my @ffibindings_APIs = ();
my @ffixmlfiles = ();
my @cwiJSbinding_Classes = ();
my @cwixmlfiles = ();

my $native = 0;
my $sqlcipher = 0;
my $sqlcipherver;
my $libBinaryProtectionNeeded = 0;
my $minify = 0;
my $needsBackgroundFetchHandler = "NO";
my @loadmodules = ();
my $swiftSupport = 0;
my $arxanProtectionNeeded = 0;
my $nativecallbacksfilename ="ApplicationNativeCallbacks.m";
my $watchEnabled = 0;
my $watchEnabledOpt;
my $devAutomationMode = 0;
my $FriendlyWidgetDisabled = 0;
my $cleanJSLibs = 0;
my $cleanJSLibsOpt;
my $watchCompatabilityMode = 0;
my %pluginVersionsPropHash;
my $studioPluginVersion = 0;
my $dev = 0;
my $devOpt;
my $nfiTpOpt = 0;
my $nfiDebugOpt;
my $formsPath;
my @watchGeneratedFileNamesArray;
my @watchSwiftFileNamesArray;
my $webDirName = "web";
my @hash;
my $awsEnabled = 0;
my @selfsufficientModulesForVM = ();#list containing the frameworks to be filled by reading "selfSufficientModules" in application.properties
my $WBCGrR = "R";
my $launchImageFile;
my $associatedDomains;
my $pushcertificatetype;
my $dataProtectionValue;
my @applicationGroups;
my $capabilitiesEnabled = 0;
my %projectCapabilities = ();
my $nfiVersion = '1.0';


my @targets;
my @watchTargets;
my @jsTargets;
my %existing_frameworks_Hash;

my $offset = 0;
my $extractDevSpecificObj;

my $enableMobileFirstAPIs = 0;
my @selfsufficientmoduleNames = ();
my $enableSelfSufficientModules = 0;
my $enableVideoWidget = 0;
my $enableJSBindings = 0;
my $enableCordova = 0;
my $cordovaGlobal = 1;
my $cordovaVersion = "-1";
my $cordovaPath = 'cordova';
my $DefaultLocale;
my $isLibraryBuild = 0;
my $protectenabled = 0;
my $copyDynamicFrameworksForLibraryBuild = 0;
my @nativeBindingFrameworks = ();
my $SSMCONFIGFILE = './nativebinding/mastersConf.conf';
my $enableReactNative = 0;

my $kbfZipData = "";
my $kbfSrc = "";
my $kbfData = "";
my $konyappunzipdir = "konyappunzipped";
my $protectedkar = "NO";
my $skpath="";
my $dotOFile = "";
my $jsmode = "no";
my $appPropFile = "";

my @filesForCodegen = ();


my $systemFrameworksPath;
my @globalSystemFrameworks = ();

my @appsplashmetadata;

my $iphone2x20 = "platform.iphone.icons.2x_20";
my $iphone3x20 = "platform.iphone.icons.3x_20";
my $iphone2x29 = "platform.iphone.icons.2x_29";
my $iphone3x29 = "platform.iphone.icons.3x_29";
my $iphone2x40 = "platform.iphone.icons.2x_40";
my $iphone3x40 = "platform.iphone.icons.3x_40";
my $iphone2x60 = "platform.iphone.icons.2x_60";
my $iphone3x60 = "platform.iphone.icons.3x_60";


my $ipad1x20 = "platform.ipad.icons.1x_20";
my $ipad2x20 = "platform.ipad.icons.2x_20";
my $ipad1x29 = "platform.ipad.icons.1x_29";
my $ipad2x29 = "platform.ipad.icons.2x_29";
my $ipad1x40 = "platform.ipad.icons.1x_40";
my $ipad2x40 = "platform.ipad.icons.2x_40";
my $ipad1x76 = "platform.ipad.icons.1x_76";
my $ipad2x76 = "platform.ipad.icons.2x_76";
my $ipad2x83_5 = "platform.ipad.icons.2x_83.5";

my $ios1024 = "platform.iOS.icons.1x_1024";

my $sltk = join ("", (localtime));
#Bugfix:72335 intializing value for initVector with random value
my @now = localtime();
# rearrange the following to suit your stamping needs.
# it currently generates YYYYMMDDhhmmss
my $timeStamp = sprintf("%04d%02d%02d%02d%02d%02d%02d",$now[5]+1900, $now[4]+1, $now[3],$now[2], $now[1], $now[0], $now[0]);
my $ival = $timeStamp;

my %localeDirs = ();
my %rscLocales = ();
my %ffiRscLocales = ();
my @globalRscFiles = ();
my @mainBundleRscFiles = ();
my @customFontFiles = ();
my %localeDirCreatedDueToFFILocale = ();
my $infoPlistConfigurationFilePath = $konyappunzipdir."/"."infoplist_configuration.json";

my %watchLocaleDirs = ();
my %watchRscLocales = ();
my @watchGlobalRscFiles = ();
my @watchCustomFontFiles = ();
my %watchLocaleStringsFilePathHash;
my %watchLocalizableStringsHashForLocales;

my @filesForFFI = ();
my @ffiHeaderFiles = ();
my %ffiDirectories = ();
my @cwiHeaderFiles = ();
my %cwiDirectories = ();
my @frameworksForFFI = ();
my %modDirectories = ();

#application.properties file values..
my ($vmMajor, $vmMinor, $vmPatch, $vmBuild);
my ($appMajor, $appMinor, $appPatch);
my $appName = "KApplication";
my $vendor = "Kony Solutions";
my ($entry, $appID, $logoRscID);

my ($appLaunchMode, $bundleID);
my $targetDeviceFamily = 1;
my $appIconGlossyEffect = "";
my @supportedOrientations = ();

my %appMetaDataForSplash = ();
my $watchStartupForm;
my $automationEnabled = 0;

# MVC variables..
my $isMVCModeEnabled = 0;
my @startupFiles = ();
my @ipadStartupFiles = ();

# iPhone and iPad App Icons Hash
my %iphoneIpadAppIconsImagesNameHash;
# Watch App Icons Hash.
my %watchAppIconsImagesNameHash;
my %watchGlobalRscSrcDestHash;		## Watch resources to be copied to the proper folders.

my @filetype;
my $CWIDirName = "CustomWidgets";
my @userWidgetJSFilesPath;
my $platformName = 'iphone';
my $srcDir;
my @srcFiles;

my $xmlfilename = 'konyappunzipped/Settings.properties.xml';
my $ffigenscriptname = '';
my $appFileName = '';
my $swizzleFunction = "";
my $startupFilesArrayString = "";

my $extensionNameVar = undef;

my $appExtenionPath = "$konyappunzipdir/app-extensions";
my $enableSelfSufficientModulesExtension = 0;

my @excludedNativeBindingFrameworks= ();
my @arrScheme = ("KProtected","KRelease","KWatchOS2 - Debug","KWatchOS2 - Protected","KWatchOS2 (Dynamic Notification)","KWatchOS2 (Glance)","KWatchOS2 (Static Notification)","KWatchOS2","Preview","KWatchOS2 (Notification)","KWatchOS2(Dynamic Notification)","KWatchOS2(Glance)","KWatchOS2(Static Notification)", "KonyWidgetExtension");

my $existingSchemedir = "../VMAppWithKonylib.xcodeproj/xcshareddata/xcschemes";

my $projectFilePath = undef;
my $hasDynamicFrameworks = 0;
my $universalApp = 0;
my $swiftVersion = "4.0";
my $iosdeploymenttarget = "9.0";
my $watchosdeploymenttarget = "2.0";
# Disabling Launch screen storyboard by default
my $enableLaunchScreenStoryBoard = 1;
$appMetaDataForSplash{"splashstoryboardenabled"} = "true";

#decodeAppName defined in infoplist_configuration.json
#decodeAppNameFlag false used default appName
#decodeAppNameFlag true uses decoded appName
my $decodeAppNameFlag = 0;

#unicodeAppNameFlag defined in infoplist_configuration.json
#unicodeAppNameConfigurationFlag false used default appName
#unicodeAppNameConfigurationFlag true uses unicode decimal encoded appName
my $unicodeAppNameConfigurationFlag = 0;
my $unicodeAppName = undef;

my $appClip = undef;

my $displayName;
my %parentAppConfig = ();

my $rscHandler;

my $gen_absolute_path = `pwd`;

chomp($gen_absolute_path);

my( $gen, $luavmiphone_absolute_path) = fileparse($gen_absolute_path);

#widgetEnabled flag decides to enable/disable widgets
my $widgetEnabled = 0;

#Variables related to Third party perl scripts details which can be included into raw folder.
my $customPerlScriptsFolder = "CustomBuild";
my $customPerlScriptsMainFileName = "CustomScripts.pl"; # this is the only file we should be executing inside the $customPerlScriptsFolder folder.


$extractModule::isCompositeApp = 0;
############################################
# Subroutines definitions section
############################################

# to Trim the strings
sub trim($)
{
	my $string = shift;
	$string =~ s/^\s+//;
	$string =~ s/\s+$//;
	return $string;
}

# Function to clean up the folder containing all JS Binding libs
sub cleanupJSBindings
{
	if(-d "./SSMLibs")
	{
		`rm -rf ./SSMLibs`; # remove cache
	}
}

# This function moved here as we use this to clean FFI directory
sub makeCleanRscDir {
	my $dir = shift @_;
	if (-d "$dir") {
#        print "[makeCleanRscDir] Cleaning : $dir/\n";
		system "rm -rf $dir/*";
	} else {
		mkdir "$dir";
#        if(-d "$dir"){
#            print "[makeCleanRscDir] Creating : $dir\n";
#        }
	}
}

sub makeCleanLprojDirForWatch {
	my $watchLprojdir = shift @_;

	my $extLprojDirPath = "../KWatchOS2\ Extension/$watchLprojdir";
	my $appLprojDirPath = "../KWatchOS2/$watchLprojdir";

	if (-d $extLprojDirPath) {
		system "rm -rf \"$extLprojDirPath\"/*";
	} else {
		mkdir $extLprojDirPath;
	}

	if (-d $appLprojDirPath) {
		system "rm -rf \"$appLprojDirPath\"/*";
	} else {
		mkdir $appLprojDirPath;
	}
}

#This function create file for Swift Bridge Header
sub createSwiftBridgeHeader {

	my $appProductName = shift @_;
	my $fileName = $appProductName."-Bridging-Header.h";

	unless(open HEADER_FILE, '>'.$fileName) {
		# Die with error message
		# if we can't open it.
		die "Unable to create $fileName";
	}

	my $HEADER_FILE_CONTENT = "\n";
	$HEADER_FILE_CONTENT .= <<'_EOC33_';
//
//  Automatically generated by Kony
//
//  This is a generated file. Do not modify this file.
//  Copyright 2014 Kony Labs. All rights reserved.
//

_EOC33_

	print HEADER_FILE $HEADER_FILE_CONTENT;
	close HEADER_FILE;

	system "cp '$fileName' $rscHandler->{_FFI}/";
}

#This fnction check if swift is supported or not
sub checkIfSwiftSupportIsRequired {
    my $path = $konyappunzipdir."/".shift;
	my @files = ();
    find(
        sub { push @files, $File::Find::name unless -d; },
        $path
    );

	for my $fileName (@files) {

		if ($fileName =~ /\.swift$/) {
			$swiftSupport = 1;
			last;
		}
	}
	#print Dumper(\@files);
}

sub replaceStringInFile{
    my ($FindString, $ReplaceString, $FileName) = @_;
    `sed -i '' 's:$FindString:$ReplaceString:g' $FileName`;
}


# When KBF was initially introduced, all strings which are shorter than the designated
# length are padded with zeros (for the ease of native dev).  If these strings are used
# to construct other strings using interpolation, the resulting string is truncated
# at the first occurrence of '\0'.
# This function is called with each string value to avoid this behavior.
sub cleanStr {
	my $str = shift @_;

	$str =~ s/\0*//g;
	return $str;
}

sub cleanKWatchOS2Folder {
    my $kWatchOS2DirPath = "../KWatchOS2";

	open KWatchOS2Dir, "ls \"$kWatchOS2DirPath\"/ |" or die 'Can not open KWatchOS2 directory';
	my @resourcesList;
	chomp(@resourcesList = <KWatchOS2Dir>);
	close KWatchOS2Dir;

	for my $resource (@resourcesList) {
 		my $resourcePath = $kWatchOS2DirPath."/".$resource;
		if ($resource ne "Base.lproj" && $resource ne "Assets.xcassets" && $resource ne "Info.plist") {
			system "rm -rf \"$resourcePath\"";
		}
	}
}

sub cleanKWatchOS2ExtensionFolder {

    # delete SwiftSources
    my $folderPath = "../KWatchOS2\ Extension/SwiftSources";
    open SwiftSourcesDir, "ls \"$folderPath\"/ |" or die 'Can not open $folderPath directory';
	my @resourcesList;
    chomp(@resourcesList = <SwiftSourcesDir>);
    close SwiftSourcesDir;
    for my $resource (@resourcesList) {
        my $resourcePath = $folderPath."/".$resource;
        system "rm -rf \"$resourcePath\"";
    }

    # delete Sources
    $folderPath = "../KWatchOS2\ Extension/Sources";
    open SourcesDir, "ls \"$folderPath\"/ |" or die 'Can not open $folderPath directory';
    chomp(@resourcesList = <SourcesDir>);
    close SourcesDir;
    for my $resource (@resourcesList) {
        my $resourcePath = $folderPath."/".$resource;
        system "rm -rf \"$resourcePath\"";
    }

    # clean ObjcBridging Header
    my $objCBridgingHeader = "../KWatchOS2\ Extension/KWatchOS2\ Extension-Bridging-Header.h";
    open FILE_HANDLE, ">$objCBridgingHeader" or die "can't open $objCBridgingHeader File...";
    print FILE_HANDLE "//\
//  Use this file to import your target's public headers that you would like to expose to Swift.\
//\
    ";
}

sub processResources {
	my ($resourcesListRef, $resourcesDirPath, $destinationChannel) = @_;

	# even lproj directories will be inside Resources directory...
	for my $resource (@$resourcesListRef) {
        #print $resource;
        my @retVals = extractModule::moveFilesToResourcesForGivenDirName($resourcesDirPath, $resource, "raw", $rscHandler);
        if ($#retVals >= 0 )
        {
        	for my $temp (@retVals) {
        		push(@globalRscFiles, basename($temp));
        	}
        }
        @retVals = extractModule::moveFilesToResourcesForGivenDirName($resourcesDirPath, $resource, "mainbundle", $rscHandler);
        if ($#retVals >= 0 )
        {
        	for my $temp (@retVals) {
        		push(@mainBundleRscFiles, basename($temp));
        	}
        }
        if (-f $resourcesDirPath."/".$resource) {
            my $resourceFilePath = $resourcesDirPath."/".$resource;
            #print "Resource found : $resourceFilePath\n";
			if ($resourceFilePath =~ /\.(jpg|jpeg|gif|png|xib|wav|mov|ttf|otf|mp3|mp4|cer|m4v|avi|3gp|p12|pkcs12|dae|heif|heic)$/) {
				#print "Resource found : $resourceFilePath\n";
				if ($destinationChannel eq "iphone" or $destinationChannel eq "ipad") {
					system "mv '$resourceFilePath' $rscHandler->{_NLResources}/";
					push(@globalRscFiles, basename($resourceFilePath));
					push(@customFontFiles, basename($resourceFilePath)) if ($resourceFilePath =~ /\.(ttf|otf)$/); # Add extensions of font files here.
				} elsif ($destinationChannel eq "watch") {
					if ($resourceFilePath =~ /\.(ttf|otf)$/) {
						push(@watchCustomFontFiles, basename($resourceFilePath));
					} else {
						push(@watchGlobalRscFiles, basename($resourceFilePath));
					}
					my $destPath = "../KWatchOS2";
					$watchGlobalRscSrcDestHash{$resource} = {"srcPath" => $resourceFilePath , "destPath" => $destPath};
					## delaying the resources copy to Watch App folder until it is made sure that this resource is localised or not..
					## system "cp '$resourceFilePath' \"$destPath\" ";
				}
            }elsif ($resourceFilePath =~ "S4C970V89DS9W"|| $resourceFilePath =~ "A4C970V89DS9W" || $resourceFilePath =~ "S4C640V89DS9W"){
                if ($destinationChannel eq "iphone" or $destinationChannel eq "ipad") {
                    system "mv '$resourceFilePath' $rscHandler->{_NLResources}/";
                    push(@globalRscFiles, basename($resourceFilePath));
                }
            }
		}
		else { # lproj processing
			my $lprojDir = $resourcesDirPath."/".$resource;
			if ( $lprojDir =~ /\.lproj$/ ) { # process the lproj directory
				#print "lproj found $lprojDir in KAR resources\n";
				my $locale = basename $lprojDir;
				$locale =~ s/\.lproj//g;

				if ($destinationChannel eq "iphone" or $destinationChannel eq "ipad") {
					if (!exists($localeDirs{$locale})) {
                        makeCleanRscDir($rscHandler->{_LocalizedResources}."/$locale.lproj");
						$localeDirs{$locale} = 1;
					}
				} elsif ($destinationChannel eq "watch") {
					if (!exists($watchLocaleDirs{$locale})) {
						my $watchOSLocale = $locale;
 						makeCleanLprojDirForWatch("$watchOSLocale.lproj");
						$watchLocaleDirs{$locale} = 1;
					}
				}

				# Find all the localized resource files
				open LocalizedResourceDIR, "find  $lprojDir -type f -print|";
				my @localizedResourcesList;
				chomp(@localizedResourcesList = <LocalizedResourceDIR>);
				close LocalizedResourceDIR;

				for my $localizedResourceFile (@localizedResourcesList) {
					if ($destinationChannel eq "iphone" or $destinationChannel eq "ipad") {
						if ($localizedResourceFile =~ /\.(jpg|jpeg|gif|png|wav|mov|mp3|mp4|cer|m4v|avi|3gp|strings|p12|pkcs12|heic|heif)$/) {
							if (-s $localizedResourceFile) {
								system "cp '$localizedResourceFile' $rscHandler->{_LocalizedResources}/$locale'.'lproj/";
								if (!exists($rscLocales{basename($localizedResourceFile)})) {
									$rscLocales{basename($localizedResourceFile)} = [ $locale ];
								} else {
									push(@{$rscLocales{basename($localizedResourceFile)}}, $locale);
								}
							}
						}
					} elsif ($destinationChannel eq "watch") {
						# Making localeName iOS-compatible.
						my $watchOSLocale = $locale;
						if (basename($localizedResourceFile) eq "Localizable.strings") {
							# Put this path as an entry in watchLocaleStringsFilePathHash with localeName as key.
							$watchLocaleStringsFilePathHash{$watchOSLocale} = $localizedResourceFile;
						} elsif ($localizedResourceFile =~ /\.(jpg|jpeg|gif|png|wav|mov|mp3|mp4|cer|m4v|avi|3gp|p12|pkcs12)$/) {
							if (-s $localizedResourceFile) {
								if (!exists($watchRscLocales{basename($localizedResourceFile)})) {
									$watchRscLocales{basename($localizedResourceFile)} = [ $locale ];
								} else {
									push(@{$watchRscLocales{basename($localizedResourceFile)}}, $locale);
								}
								my $appLprojDirPath = "../KWatchOS2/$watchOSLocale.lproj";
								system "cp '$localizedResourceFile' \"$appLprojDirPath\" ";
							}
						}
					}
				}
			} # End of - if .lproj
			elsif($lprojDir =~ /.*\/certs$/ and $destinationChannel ne "watch") {
                encryptCertsFilesInFolder($lprojDir);
                encryptJSONKeysInFolder($lprojDir);
				system "cp -R '$lprojDir' $rscHandler->{_NLResources}/";
				push(@globalRscFiles, basename('certs'));
			}
            elsif($lprojDir =~ /.*\/client_certs$/ and $destinationChannel ne "watch") {
                system "cp -R '$lprojDir' $rscHandler->{_NLResources}/";
                push(@globalRscFiles, basename('client_certs'));
            }
		}
	} # End of for resource in resourcesList of Resources directory
}
sub buildCheckSumXcodeApp{
    my $checkSumApp = "CheckSumXcodeApp/CheckSum.xcodeproj";
    if(-d $checkSumApp){
    system "clang -framework Foundation CheckSumXcodeApp/CheckSum/CheckSum.m CheckSumXcodeApp/CheckSum/main.m -o CheckSum"
    }
    else
    {
        print "Checksum : Not in Source Mode\n"
    }
}
sub encryptJSONKeysInFolder{
    my $_jsonFolderPath = $_[0];
    opendir my $dirHandle, $_jsonFolderPath or die "Could not open '$_jsonFolderPath' for reading: $!\n";
    if($dirHandle)
    {
        my $checkSumFile = "jsoncheckSumFile.txt";
        unlink $checkSumFile;
        if(-e "CheckSum")
        {
            system "./CheckSum -d $_jsonFolderPath -ext json -encAlg sha256 -o $checkSumFile";
            closedir $dirHandle;
            my $finalCheckSumFile = $_jsonFolderPath."\/"."jsonfinalCheckSumFile.txt";
            unlink $finalCheckSumFile;
            system "cat '$checkSumFile' > '$finalCheckSumFile'";
            my $ck = getCK();
            my $zipFileName = $_jsonFolderPath."\/"."NOS3T5R18E20C19SJ";
            
            my $srcFile = "certZip.zip";
            unlink $srcFile;
            my $startupJSfiles = $_jsonFolderPath."\/"."jsonfinalCheckSumFile.txt";
            system "zip -j -u $srcFile $startupJSfiles > /dev/null";
            
            
            if($protectedkar eq "NO"){
                print "Non-Protected mode\n";
                system "./crypt -e -k $ck -i $srcFile -o $zipFileName -c $ival";
            }else{
                print "Protected mode\n";
                system "java -jar EncryptJS.jar 2 $skpath $srcFile  $zipFileName";
            }
            unlink $finalCheckSumFile;
        }
        else
        {
            print "Checksum : Checksum Module not found\n"
        }
    }
    else
    {
        print "No Certs available\n"
    }
}
sub encryptCertsFilesInFolder{
#    buildCheckSumXcodeApp();
    my $_certsFolderPath = $_[0];
    opendir my $dirHandle, $_certsFolderPath or die "Could not open '$_certsFolderPath' for reading: $!\n";
    if($dirHandle)
    {
        my $checkSumFile = "checkSumFile.txt";
        unlink $checkSumFile;
        if(-e "CheckSum")
        {
            system "./CheckSum -d $_certsFolderPath -ext der -encAlg sha256 -o $checkSumFile";
            closedir $dirHandle;
            my $finalCheckSumFile = $_certsFolderPath."\/"."finalCheckSumFile.txt";
            unlink $finalCheckSumFile;
            system "cat '$checkSumFile' > '$finalCheckSumFile'";
            my $ck = getCK();
            my $zipFileName = $_certsFolderPath."\/"."S3T5R18E20C19";
            
            my $srcFile = "certZip.zip";
            unlink $srcFile;
            my $startupJSfiles = $_certsFolderPath."\/"."finalCheckSumFile.txt";
            system "zip -j -u $srcFile $startupJSfiles > /dev/null";
            
            
            if($protectedkar eq "NO"){
                print "Non-Protected mode\n";
                system "./crypt -e -k $ck -i $srcFile -o $zipFileName -c $ival";
            }else{
                print "Protected mode\n";
                system "java -jar EncryptJS.jar 2 $skpath $srcFile  $zipFileName";
            }
            unlink $finalCheckSumFile;
        }
        else
        {
            print "Checksum : Checksum Module not found\n"
        }
    }
    else
    {
        print "No Certs available\n"
    }
}
# returns the absolute path of all the user widget scripts in an array..
sub getUserWidgetFilesPath {
    my ($dirPath) = @_;
    
    open UserWidgetDIR, "ls $dirPath/ |" or die 'Can not open $dir directory';
    chomp(my @uwFilesList = <UserWidgetDIR>);
    close UserWidgetDIR;
    
    for my $uwFile (@uwFilesList) {
        my $uwFilePath = $dirPath."/".$uwFile;

        if (-d $uwFilePath) {
            getUserWidgetFilesPath($uwFilePath);
        }else {
            push @userWidgetJSFilesPath, $uwFilePath;
        }
    }
}

#This subroutine ensures javascript folder structure compatibility as per 7.3 structure.
sub ensureJSFolderStructureCompatibility {
    my $iPhoneiPadDir = $konyappunzipdir."/javascript/iphone";
    my $startupDir = $iPhoneiPadDir."/startup";
    
    if (-d $iPhoneiPadDir) {
        ## iPhone KAR.
    }else {
        ## iPad KAR.
        $iPhoneiPadDir = $konyappunzipdir."/javascript/ipad";
        $startupDir = $iPhoneiPadDir."/startup";
    }
    
    if (-d $startupDir) {
        ## the KAR strcuture already handles startup directory mandated in iOS 7.3 and above.
    }else {
        ## move everything form $iPhoneiPadDir to $startupDir.
        system "mkdir $startupDir" unless(-e $startupDir);
        system "mv -f $iPhoneiPadDir/*.js $startupDir";
    }
}

sub extract_quantum_nitro_configurationJSON{
    my $filename = $konyappunzipdir.'/resources/quantum_nitro_configuration.json';
    if(!(-e $filename)){
        return ;
    }
    my $nitro_config = do {
        open my $fh, '<', $filename;
        local $/;
        decode_json(<$fh>);
    };
    if($nitro_config){
        print "quantum_nitro_configuration.json file found\n";
    }
    else{
        return ;
    }
    my $iOSPlatformProp = $nitro_config->{iOS};
    if($iOSPlatformProp){
        while((my $targetKey,my $targetProp) = each %{$iOSPlatformProp}){
            if($targetProp){
                my $capabilitesConfig = $targetProp -> {Capabilites};
                if($capabilitesConfig){
                    $capabilitiesEnabled = 1;
                    while((my $capabilityKey, my $capabilityValue) = each %{$capabilitesConfig}){
                        my $capabilityType = XCProjectEditor::getMappedCapabilityNamespace($capabilityKey);
                        $projectCapabilities{$capabilityType} = $capabilityValue;
                    }
                }
            }
        }
    }
}
sub getCK {

	my $applicationName = "KApplication";
	my $appIdentifier = "default";
	my $bundleIdentifier = "com.default";
	my $platformVersion = "4.0";
	my $applicationVersion = "1.0";
	my $vendorName = "K";
	my $bundleVersion = "1.0";
	# Process the application.propeties file to get necessary info
	my $appProperties = "konyappunzip/application.properties";
	if ($appProperties !~ /^$/) {
		open FILE, "<$appPropFile";
		while (my $line = <FILE>) {
			next if $line =~ /^#/;
			if ( $line !~ /^\s*$/ ) {
				chomp $line;
				#$line =~ s/\s//g;
				my ($propName, $propValue) = split(/=/, $line);
				$propName =~ s/\s//g;
				if ($propName eq "appid") {
					$appIdentifier = $propValue if ($propValue !~ /^$/);
				} elsif ($propName eq "app.name") {
					if($decodeAppNameFlag == 1){
						my $decodedAppName = decode('UTF-8',$propValue);
						$applicationName= $decodedAppName;
					}else{
						if($unicodeAppNameConfigurationFlag == 1){
	                        my $decodedAppName = decode('UTF-8',$propValue);
	                        $applicationName= $decodedAppName;
                    	}
	                    else{
	                        $applicationName = $propValue if ($propValue !~ /^$/);
	                    }
					}
				} elsif ($propName eq "bundle.identifier") {
					$bundleIdentifier = $propValue if ($propValue !~ /^$/);
				} elsif ($propName eq "platform.version") {
					$platformVersion= $propValue if ($propValue !~ /^$/);
				} elsif ($propName eq "app.version") {
					$applicationVersion= $propValue if ($propValue !~ /^$/);
				} elsif ($propName eq "vendor.name") {
					$vendorName = $propValue if ($propValue !~ /^$/);
				} elsif ($propName eq "bundle.version") {
					$bundleVersion = $propValue if ($propValue !~ /^$/);
				}elsif ($propName eq "associated-domains") {
                    $associatedDomains = $propValue if ($propValue !~ /^$/);
					if($associatedDomains){
                        my @domainsFromIDE = split(',',  $associatedDomains);
                        my @domainsFromIDEWithApplinks;
                        foreach my $domain(@domainsFromIDE){
                            $domain = 'applinks:'.$domain;
                            push(@domainsFromIDEWithApplinks,$domain);
                        }
                        $projectCapabilities{'com.apple.developer.associated-domains'} = \@domainsFromIDEWithApplinks;
						$capabilitiesEnabled = 1;
                    }else{
                        $projectCapabilities{'com.apple.developer.associated-domains'} = '';
                    }
                }elsif ($propName eq "pushCertificateType") {
                    $pushcertificatetype = $propValue if ($propValue !~ /^$/);
                    if($pushcertificatetype){
                        if($pushcertificatetype eq "none"){
                            $projectCapabilities{'aps-environment'} = '';
                        }else{
                            $projectCapabilities{'aps-environment'} = $pushcertificatetype;
                            $capabilitiesEnabled = 1;
                        }
                    }
                }elsif ($propName eq "applicationGroups"){
                	my $applicationGroupsString = $propValue if ($propValue !~ /^$/);
                	if($applicationGroupsString){
                		my @groups = split /,/, $applicationGroupsString;
                		foreach my $group (@groups) { push @applicationGroups, trim($group)};
                		
                		$projectCapabilities{'com.apple.security.application-groups'} = \@applicationGroups;
                		$capabilitiesEnabled = 1;
                	}
                }
			}
		}
		close FILE;
	}

    #Extract information from quantum_nitro_configuration.json
    extract_quantum_nitro_configurationJSON();
    
	open FILE, "./crypt -g $sltk -n \"$applicationName\" -v \"$applicationVersion\" -a \"$appIdentifier\" -b \"$bundleIdentifier\" -s \"$bundleVersion\" -p \"$platformVersion\" -r \"$vendorName\"|";
	my @cks;
	chomp(@cks = <FILE>);
	close FILE;
	return quotemeta(join("\n",@cks));
}

my $bundleVersion = undef;
my $applicationVersion = undef;
# Process the application.propeties file
sub processAppPropertiesFile
{
	if ($appPropFile !~ /^$/) {
		open FILE, "<$appPropFile";
		while (my $line = <FILE>) {
			next if $line =~ /^#/;
			if ( $line !~ /^\s*$/ ) {
				chomp $line;
				#$line =~ s/\s//g;
				my ($propName, $propValue) = split(/=/, $line);

				$propName =~ s/\s//g;
				if ($propName eq "platform.version") {
					($vmMajor, $vmMinor, $vmPatch, $vmBuild) = split(/\./,$propValue);
				} elsif ($propName eq "app.name") {
					if($decodeAppNameFlag == 1){
						my $decodedAppName = decode('UTF-8',$propValue);
						$appName = $decodedAppName;
					}else{
						if($unicodeAppNameConfigurationFlag == 1){
	                        my $decodedAppName = decode('UTF-8',$propValue);
	                        $appName = $decodedAppName;
	                        $unicodeAppName = getUnicodeEncodedProductName($decodedAppName);
	                    }
	                    else{
	                        $appName = $propValue;
	                    }
					}
                    # Setting Parent's Display Name for the AppClip also.
                    # Branding should be same for AppClip and MainApp as both of them represent same company.
                    if($rscHandler->{_context} eq 'MainApp'){
                        $displayName = $appName;
                    }
				} elsif ($propName eq "app.version") {
                    $applicationVersion = $propValue;
					($appMajor, $appMinor, $appPatch) = split(/\./,$propValue);
				} elsif ($propName eq "app.launch.mode") {
					$appLaunchMode = $propValue;
					$appMetaDataForSplash{"applicationlaunchmode"} = trim($propValue);
				} elsif ($propName eq "app.supportedorientations") {
					# make array from the comma-seperated orientaitons
                    my @orientations = split(/\,/,trim($propValue));
					for my $orientation (@orientations) {
						push(@supportedOrientations,$orientation);
					}
				} elsif ($propName eq "logo.id") {
					$logoRscID = $propValue;
                } elsif ($propName eq "app.icon.glossyeffect") {
					$appIconGlossyEffect = $propValue;
				} elsif ($propName eq "bundle.identifier") {
					$bundleID = $propValue;
                    # Saving Bundle ID of Main App as AppClip entitlements should contain bundle ID of Main App.
                    #(key,value) in Entitlements : (com.apple.developer.parent-application-identifiers, $(AppIdentifierPrefix)<Main App Bundle ID>)
                    if($rscHandler->{_context} eq "MainApp"){
                        $parentAppConfig{'CFBundleIdentifier'} = $bundleID;
                    }
				} elsif ($propName eq "bundle.version") {
					$bundleVersion = $propValue;
				} elsif ($propName eq "vendor.name") {
					$vendor = $propValue;
				} elsif ($propName eq "entrypoint") {
					$entry = $propValue;
				} elsif ($propName eq "appid") {
					$appID = $propValue;
                } elsif ($propName eq "splash.image" && $propValue ne '') {
                    $appMetaDataForSplash{"splashimage"} = $propValue;
                    push(@appsplashmetadata,$propValue);
                }elsif ($propName eq "splash.image~ipad" && $propValue ne '') {
                    $appMetaDataForSplash{"splashimageipad"} = trim($propValue);
                    push(@appsplashmetadata,trim($propValue));
                } elsif ($propName eq "splash.video" && $propValue ne '') {
					$appMetaDataForSplash{"splashvideo"} = $propValue;
                    push(@appsplashmetadata,$propValue);
                    my ($videoName,$extension) = split (/(\.[^.]+)$/,$propValue);
                    $videoName = $videoName.'-2x1'.$extension;
                    push(@appsplashmetadata,$videoName);
                }elsif ($propName eq "splash.video~ipad" && $propValue ne '') {
                    $appMetaDataForSplash{"splashvideoipad"} = trim($propValue);
                    push(@appsplashmetadata,trim($propValue));
                } elsif ($propName eq "splash.video.interruptable") {
					$appMetaDataForSplash{"splashvideointerruptible"} = $propValue;
                } elsif ($propName eq "splash.video.interruptable~ipad") {
                    $appMetaDataForSplash{"splashvideointerruptibleipad"} = trim($propValue);
                } elsif ($propName eq "splash.animation.duration") {
					$appMetaDataForSplash{"splashanimationduration"} = $propValue;
                } elsif ($propName eq "splash.animation.duration~ipad") {
                    $appMetaDataForSplash{"splashanimationdurationipad"} = trim($propValue);
                } elsif ($propName eq "splash.animation.images") {
					# make array from the comma-seperated filenames
					my @images = split(/\,/,$propValue);
					$appMetaDataForSplash{"splashanimationimages"} = \@images;
                    push(@appsplashmetadata,@images);
                }elsif ($propName eq "splash.animation.images~ipad") {
                    # make array from the comma-seperated filenames
                    my @images = split(/\,/,trim($propValue));
                    $appMetaDataForSplash{"splashanimationimagesipad"} = \@images;
                    push(@appsplashmetadata,@images);
                } elsif ($propName eq "splash.loading.indicator") {
					$appMetaDataForSplash{"splashindicator"} = $propValue;
				} elsif ($propName eq "splash.image.landscape" && $propValue ne '') {
					$appMetaDataForSplash{"splashlandscapeimage"} = trim($propValue);
                    push(@appsplashmetadata,trim($propValue));
                } elsif ($propName eq "splash.video.landscape" && $propValue ne '') {
					$appMetaDataForSplash{"splashlandscapevideo"} = trim($propValue);
                    push(@appsplashmetadata,trim($propValue));
				} elsif ($propName eq "splash.video.interruptable.landscape") {
					$appMetaDataForSplash{"splashlandscapevideointerruptible"} = trim($propValue);
				} elsif ($propName eq "splash.animation.duration.landscape") {
					$appMetaDataForSplash{"splashlandscapeanimationduration"} = trim($propValue);
				} elsif ($propName eq "splash.animation.images.landscape") {
					# make array from the comma-seperated filenames
					my @images = split(/\,/,trim($propValue));
					$appMetaDataForSplash{"splashlandscapeanimationimages"} = \@images;
				} elsif ($propName eq "splash.loading.indicator.landscape") {
					$appMetaDataForSplash{"splashlandscapeindicator"} = trim($propValue);
				} elsif ($propName eq "konyapp.o.type") { # iphone 1, ipad 2, universal 3
					$targetDeviceFamily = $propValue;
                    if($targetDeviceFamily == 3){
                        $universalApp = 1;
                    }
                } elsif ($propName eq "iosdeploymenttarget") {
                    my $name = trim($propValue);
                    if($rscHandler->{_context} eq "AppClip"){
                        $iosdeploymenttarget = "14.0";
                        if(($name ne "") && ($name > 14.0)){
                            $iosdeploymenttarget = $name;
                        }
                    }else{
                        if(($name ne "") && ($name > 9.0)){
                            $iosdeploymenttarget = $name;
                        }
                    }
                } elsif ($propName eq "watchosdeploymenttarget") {
                    my $name = trim($propValue);
                    if($name ne ""){
                        $watchosdeploymenttarget = $name;
                    }
                } elsif ($propName eq "swiftversion") {
                    my $name = trim($propValue);
                    if($name ne ""){
                        $swiftVersion = $name;
                    }
                } elsif (lc $propName eq lc "watchEnabled") {
					if ($propValue =~ /true/) {
						$watchEnabled = 1;
					}
				} elsif ($propName eq "watchcompatabilitymode") {
					if ($propValue =~ /true/) {
						$watchCompatabilityMode = 1;
					}
				} elsif ($propName eq "platform.lib.metrics.thirdparty") {
					my @appPropModules = split(/,/, $propValue);
					my %union;
					foreach my $e (@loadmodules) { $union{$e} = 1 };
					foreach my $e (@appPropModules) { $union{$e} = 1 };
					@loadmodules = keys %union;
				} elsif ($propName eq "enableMobileFirstAPIs") {
					if ($propValue =~ /true/) {
#                        $enableMobileFirstAPIs = 1;
#                        This has been removed from version 8.0. Users has to manually add these bindings from the IDE.
					}
                } elsif ($propName eq "platform.watch.startupform") {
					$watchStartupForm = $propValue;
				} elsif ($propName eq "platform.watch.icons.notificationcentericon.38mm") {
					$watchAppIconsImagesNameHash{"notificationCenter38mm"} = $propValue;
				} elsif ($propName eq "platform.watch.icons.notificationcentericon.42mm") {
					$watchAppIconsImagesNameHash{"notificationCenter42mm"} = $propValue;
				} elsif ($propName eq "platform.watch.icons.homescreenicon.38mm") {
					$watchAppIconsImagesNameHash{"appLauncher38mm"} = $propValue;
				} elsif ($propName eq "platform.watch.icons.longlooknotificationicon.42mm") {
					$watchAppIconsImagesNameHash{"longLook42mm"} = $propValue;
				} elsif ($propName eq "platform.watch.icons.shortlooknotificationicon.38mm") {
					$watchAppIconsImagesNameHash{"quickLook38mm"} = $propValue;
				} elsif ($propName eq "platform.watch.icons.shortlooknotificationicon.42mm") {
					$watchAppIconsImagesNameHash{"quickLook42mm"} = $propValue;
				}elsif ($propName eq "platform.watch.icons.companionSettings2x29") {
					$watchAppIconsImagesNameHash{"companionSettings2x29"} = $propValue;
                }elsif ($propName eq "platform.watch.icons.companionSettings3x29") {
					$watchAppIconsImagesNameHash{"companionSettings3x29"} = $propValue;
                }elsif ($propName eq "platform.watch.icons.homescreenicon.42mm") {
					$watchAppIconsImagesNameHash{"appLauncher42mm"} = $propValue;
                }elsif ($propName eq "platform.watch.icons.watchMarketing1x") {
					$watchAppIconsImagesNameHash{"watchMarketing1x"} = $propValue;
                }elsif ($propName eq "platform.watch.icons.homescreenicon.44mm") {
                    $watchAppIconsImagesNameHash{"appLauncher44mm"} = $propValue;
                }elsif ($propName eq "platform.watch.icons.shortlooknotificationicon.44mm") {
                    $watchAppIconsImagesNameHash{"quickLook44mm"} = $propValue;
                }

                # iphone AppIcon Images
                elsif ($propName eq $iphone2x20){
                    $iphoneIpadAppIconsImagesNameHash{"iphone2x20"} = $propValue;
                }
                elsif ($propName eq $iphone3x20){
                    $iphoneIpadAppIconsImagesNameHash{"iphone3x20"} = $propValue;
                }
                elsif ($propName eq $iphone2x29){
                    $iphoneIpadAppIconsImagesNameHash{"iphone2x29"} = $propValue;
                }
                elsif ($propName eq $iphone3x29){
                    $iphoneIpadAppIconsImagesNameHash{"iphone3x29"} = $propValue;
                }
                elsif ($propName eq $iphone2x40){
                    $iphoneIpadAppIconsImagesNameHash{"iphone2x40"} = $propValue;
                }
                elsif ($propName eq $iphone3x40){
                    $iphoneIpadAppIconsImagesNameHash{"iphone3x40"} = $propValue;
                }
                elsif ($propName eq $iphone2x60){
                    $iphoneIpadAppIconsImagesNameHash{"iphone2x60"} = $propValue;
                }
                elsif ($propName eq $iphone3x60){
                    $iphoneIpadAppIconsImagesNameHash{"iphone3x60"} = $propValue;
                }
                
                # ipad AppIcon Images
                elsif ($propName eq $ipad1x20){
                    $iphoneIpadAppIconsImagesNameHash{"ipad1x20"} = $propValue;
                }
                elsif ($propName eq $ipad2x20){
                    $iphoneIpadAppIconsImagesNameHash{"ipad2x20"} = $propValue;
                }
                elsif ($propName eq $ipad1x29){
                    $iphoneIpadAppIconsImagesNameHash{"ipad1x29"} = $propValue;
                }
                elsif ($propName eq $ipad2x29){
                    $iphoneIpadAppIconsImagesNameHash{"ipad2x29"} = $propValue;
                }
                elsif ($propName eq $ipad1x40){
                    $iphoneIpadAppIconsImagesNameHash{"ipad1x40"} = $propValue;
                }
                elsif ($propName eq $ipad2x40){
                    $iphoneIpadAppIconsImagesNameHash{"ipad2x40"} = $propValue;
                }
                elsif ($propName eq $ipad1x76){
                    $iphoneIpadAppIconsImagesNameHash{"ipad1x76"} = $propValue;
                }
                elsif ($propName eq $ipad2x76){
                    $iphoneIpadAppIconsImagesNameHash{"ipad2x76"} = $propValue;
                }
                elsif ($propName eq $ipad2x83_5){
                    $iphoneIpadAppIconsImagesNameHash{"ipad2x83_5"} = $propValue;
                }
                # App-store Images
                elsif ($propName eq $ios1024){
                    $iphoneIpadAppIconsImagesNameHash{"ios1024"} = $propValue;
                }

                elsif ($propName eq "usesvideo") {
                	if ($propValue =~ /true/) {
                    $enableVideoWidget = 1;
                }
                } elsif ($propName eq "selfsufficientmodules") {
                    if ($propValue ne '') {
                        $enableSelfSufficientModules = 1;
                        @selfsufficientModulesForVM = split(/\,/,$propValue);
                    }
				} elsif ($propName eq "enableCordova") {
                    if ($propValue =~ /true/) {
                        $enableCordova = 1;
                    }
                } elsif ($propName eq "enableawssdk") {
                    if ($propValue =~ /true/) {
                        $awsEnabled = 1;
                    }
                }elsif ($propName eq "enableReactNative") {
                    if ($propValue =~ /true/) {
                        $enableReactNative = 1;
                    }
                }elsif ($propName eq "cordovaglobal") {
                    if ($propValue =~ /false/) {
                        $cordovaGlobal = 0;
                    }
                } elsif ($propName eq "cordovaversion") {
                    $cordovaVersion = $propValue;
                } elsif ($propName eq "cordovapath") {
                        $cordovaPath = $propValue;
                        if($propValue eq ''){
                            $cordovaPath = "cordova";
                        }
                        else{
                            $cordovaPath = "$cordovaPath/cordova";
                        }
                } elsif ($propName eq "DefaultLocale") {
                    $DefaultLocale = $propValue;
                } elsif ($propName eq "isLibraryBuild") {
                    if ($propValue =~ /true/) {
                        $isLibraryBuild = 1;
                        if(-e "../VMAppWithKonylib.xcodeproj"){
                            $copyDynamicFrameworksForLibraryBuild = 1;
                            system "mkdir -p ModuleDependencies/FFIDynamicFrameworks";
                            system "mkdir -p ModuleDependencies/PlatformDependencies/Release";
                            system "mkdir -p ModuleDependencies/PlatformDependencies/Protected";
                        }
                    }
                } elsif($propName eq "enableAutomation"){
                    if ($propValue =~ /true/) {
                        $automationEnabled = 1;
                    }
                } elsif ($propName eq "protectenabled") {
                    if ($propValue =~ /true/) {
                        $protectenabled = 1;
                    }
                } elsif ($propName eq "NFIVersion") {
                    $nfiVersion = $propValue;
                    if ($propValue eq "2.0" or $propValue eq "3.0") {
                        $nfiTpOpt = 1;
                    }
                } elsif ($propName eq "enableiOSNativeWidgets") {
                    if ($propValue =~ /true/) {
						$widgetEnabled = 1;
					}
                } elsif ($propName eq "isCompositeApp") {
                    if ($propValue =~ /true/) {
                        $extractModule::isCompositeApp = 1;
                    }
                } else { # Not defined.
				}
			}
		}
        
        if($enableCordova == 1){
            
            if($cordovaGlobal == 1){
                $cordovaPath = "cordova";
            }

            my $cordovaInstalled = system "$cordovaPath --version";
            if($cordovaInstalled == -1) {
                print "**Cordova CLI is not installed at path $cordovaPath!!**\n";
                print ("Cordova is disabled\n");
                $enableCordova = 0;
            }
            else{
				my $cordovaVer = `$cordovaPath --version`;
                $cordovaVer= (split(' ',$cordovaVer))[0];
				chomp $cordovaVer;
				$cordovaVersion = $cordovaVer;
                print ("Cordova is enabled\n");
            }
        }
        $enableJSBindings  = $enableMobileFirstAPIs || $enableSelfSufficientModules || $enableVideoWidget;

        # If JSBindings is disabled or clean option set, delete all the JSBinding libs that are cached
        if($cleanJSLibs)
        {
            cleanupJSBindings();
        }

		if ($appLaunchMode && $appLaunchMode =~ /landscape/) {
			if ($appMetaDataForSplash{"splashlandscapeimage"} && $appMetaDataForSplash{"splashlandscapeimage"} !~ /^$/) {
				my $splashLandscapeImage = $appMetaDataForSplash{"splashlandscapeimage"};
				my $srcImg = "$rscHandler->{_NLResources}/$splashLandscapeImage";
				if ($appMetaDataForSplash{"splashimage"} && $appMetaDataForSplash{"splashimage"} !~ /^$/) {
					$splashLandscapeImage = $appMetaDataForSplash{"splashimage"};
				}
				$splashLandscapeImage =~ s/\.png$//g;
				my $trgImg = "$rscHandler->{_NLResources}/$splashLandscapeImage"."-Landscape".".png";
				if(-f $srcImg){
					system "cp $srcImg $trgImg";
                    push(@appsplashmetadata,"$splashLandscapeImage"."-Landscape".".png");
					push(@globalRscFiles, "$splashLandscapeImage"."-Landscape".".png");
				}
				if (-f "$rscHandler->{_NLResources}/$splashLandscapeImage"."\@2x.png") {
					$trgImg = "$rscHandler->{_NLResources}/$splashLandscapeImage"."-Landscape"."\@2x.png";
					$srcImg = "$rscHandler->{_NLResources}/$splashLandscapeImage\@2x.png";
					system "cp $srcImg $trgImg";
                    push(@appsplashmetadata,"$splashLandscapeImage"."-Landscape\@2x".".png");
					push(@globalRscFiles, "$splashLandscapeImage"."-Landscape\@2x".".png");
				}
			}
		}
		if ($appLaunchMode && $appLaunchMode =~ /both/) {
            my $splashPortraitImage;
            if($universalApp)
            {
                $splashPortraitImage = $appMetaDataForSplash{"splashimageipad"};
            }
            else
            {
                $splashPortraitImage = $appMetaDataForSplash{"splashimage"};
            }
			my $splashLandscapeImage = $appMetaDataForSplash{"splashlandscapeimage"};
			if ($splashPortraitImage && $splashPortraitImage !~ /^$/ && $splashLandscapeImage && $splashLandscapeImage !~ /^$/) {
			$splashPortraitImage =~ s/\.png$//g;
			$splashLandscapeImage =~ s/\.png$//g;

			my $srcImg = "$rscHandler->{_NLResources}/$splashLandscapeImage.png";
			my $trgImg = "$rscHandler->{_NLResources}/$splashPortraitImage"."-Landscape".".png";
			if(-f $srcImg){
				system "cp $srcImg $trgImg";
                push(@appsplashmetadata,"$splashPortraitImage"."-Landscape".".png");
				push(@globalRscFiles, "$splashPortraitImage"."-Landscape".".png");
			}
			if (-f "$rscHandler->{_NLResources}/$splashLandscapeImage"."\@2x.png") {
						$trgImg = "$rscHandler->{_NLResources}/$splashPortraitImage"."-Landscape"."\@2x.png";
						$srcImg = "$rscHandler->{_NLResources}/$splashLandscapeImage\@2x.png";
						system "cp $srcImg $trgImg";
						push(@globalRscFiles, "$splashPortraitImage"."-Landscape\@2x".".png");
			}
			}
			}
		close FILE;
	}
}

sub createHashWithLocalizableString {
	my ($localeStringsFilePath) = @_;

	open FILE, "<$localeStringsFilePath" or die "Can't open $localeStringsFilePath";
	my %localeStringHash;
	while (my $line = <FILE>) {
		next if $line =~ /^#/;
		if ( $line !~ /^\s*$/ ) {
			chomp $line;
			my ($i18nKey, $i18nValue);
			my ($key, $value) = split(/=/, $line);
			chomp $key;
			chomp $value;

			if ($key =~ m/(")(.*)(")/) {
				$i18nKey = $2;
			}

			if ($value =~ m/(")(.*)(")/) {
				$i18nValue = $2;
			}

			if (defined $i18nKey && defined $i18nValue) {
				$localeStringHash{$i18nKey} = $i18nValue;
			}
		}
	}

	close FILE;
	return \%localeStringHash;
}

sub textCategoryEntry {
	my ($i18nHashRef, $localizableStringsHashRef) = @_;

	return "\
\
/\* Class = \"$i18nHashRef->{\"Class\"}\"\; ".
"text = \"$i18nHashRef->{\"text\"}\"\; ".
"ObjectID = \"$i18nHashRef->{\"ObjectID\"}\"; \*/\
\"$i18nHashRef->{\"ObjectID\"}\.text\" = \"$localizableStringsHashRef->{$i18nHashRef->{i18nKey}}\"\;";

}

sub titleCategoryEntry {
	my ($i18nHashRef, $localizableStringsHashRef) = @_;

	return "\
\
/\* Class = \"$i18nHashRef->{\"Class\"}\"\; ".
"title = \"$i18nHashRef->{\"title\"}\"\; ".
"ObjectID = \"$i18nHashRef->{\"ObjectID\"}\"; \*/\
\"$i18nHashRef->{\"ObjectID\"}\.title\" = \"$localizableStringsHashRef->{$i18nHashRef->{i18nKey}}\"\;";

}

sub createAndAddInterfaceDotStringsFile {
	my ($watchAppHandler) = @_;
	my $staticI18nHashRef = $watchAppHandler->getStaticInternationalisationHash();

	while( my ($localeName, $localeStringsFilePath) = each %watchLocaleStringsFilePathHash ) {
		my $localizableHashRef = createHashWithLocalizableString($localeStringsFilePath);
		$watchLocalizableStringsHashForLocales{$localeName} = $localizableHashRef;
	}

  	while( my ($localeName, $localizableStringsHashRef) = each %watchLocalizableStringsHashForLocales ) {
  		my $lprojDirPath = "../KWatchOS2/$localeName\.lproj";

  		# Create and add the Interface.strings file to the directory created.
  		open FILE, ">$lprojDirPath/Interface.strings" or die "Can't open Interface.strings file.";

  		my $stringEntry = "";
  		while( my ($hashCategory, $i18nHashArrayRef) = each %$staticI18nHashRef ) {
  			if ($hashCategory eq "TextCategoryHashes") {
  				for my $i18nHashRef (@$i18nHashArrayRef) {
  					$stringEntry .= textCategoryEntry($i18nHashRef, $localizableStringsHashRef);
  				}
  			} elsif ($hashCategory eq "TitleCategoryHashes") {
  				for my $i18nHashRef (@$i18nHashArrayRef) {
  					$stringEntry .= titleCategoryEntry($i18nHashRef, $localizableStringsHashRef);
  				}
  			}
  		}

  		print FILE $stringEntry;
  		close FILE;
  	}
}

sub extractSelfSufficientModules
{
	my $srcDir = shift;
	my $SSMDir = $konyappunzipdir."/".$srcDir;
	my @SSMDirFiles = ();

        # Process the source files.
        open SelfSufficientModuleDir, "find $SSMDir -type f -print|" or die 'Can not open SSM directory';
        chomp(@SSMDirFiles = <SelfSufficientModuleDir>);
        close SelfSufficientModuleDir;

	for my $srcFile (@SSMDirFiles) {
		if ($srcFile =~ /\.zip$/) {
			my $unzipDirName = basename $srcFile;
			$unzipDirName =~ s/\.zip//g;
			((system "unzip '$srcFile' -d $konyappunzipdir/$srcDir > /dev/null") <= 2) or die "Unable to extract the Self Sufficient Module zip $srcFile";
			#system "rm -rf '$srcFile'";
			push(@selfsufficientmoduleNames,$unzipDirName);
			$enableSelfSufficientModules = 1;
		}

        }
    }

sub createMasterFromSelfSufficientModules
{
    my $modules = join(' ',@_);#previously "selfsufficientmoduleNames" was used which could also contain extension related frameworks
    my $parameters = "$enableMobileFirstAPIs $enableVideoWidget $modules" ;
	system ("./nativebinding/createMasters.sh device $parameters" );
	system("sh ./nativebinding/copyMasterToGeneratedJSBindings.sh Device");
	if (isSupportedForSimulators())
	{
		system ("./nativebinding/createMasters.sh simulator $parameters" );
		system("sh ./nativebinding/copyMasterToGeneratedJSBindings.sh Simulator");
	}
}

sub copyMasterToGeneratedJSBindings
{
	system("sh ./nativebinding/copyMasterToGeneratedJSBindings.sh "."_device");
	system("sh ./nativebinding/copyMasterToGeneratedJSBindings.sh "."_simulator");
    }

sub copyThirdPartyFilesFromSelfSufficientModules
{
	my $modules = join(' ',@selfsufficientmoduleNames);
	my $parameters = "enableMobileFirstAPIs $enableVideoWidget $modules" ;
	system ("./nativebinding/copyThirdParty.sh " .$parameters );
}

#=============================================================================
# getLibraryName
# To get library name from mastersConf.conf file
# Takes no argument
# Returns library name as srting from masterconf.conf file if exists else ''
#=============================================================================

sub getLibraryName
{
	my $filename = $SSMCONFIGFILE;
	my $libraryName = '';
	$libraryName = `grep '^libraryName:' $filename`;
	if ($libraryName ne '')
	{
		$libraryName = (split /:/,$libraryName)[1];
	}
	return $libraryName;
}

#=============================================================================
# errorLog
# Logs any runtime error that cause scipt to fail/stop in error.txt
# argument 1 - takes message as srtring
# Result - Script will be stopped after writing given message to error.txt
#=============================================================================

sub errorLog
{
	print "error: check error.txt\n";
	open(logFile,">>error.txt") or die "Can't open file \n";
	my @months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
	my @days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

	my ($sec,$min,$hour,$mday,$mon,$year,$wday,,$isdst) = localtime(time);
	print logFile "\n****$days[$wday] $mday $months[$mon] $year $hour:$min:$sec $isdst\n";
	print logFile "\n";
	print logFile $_[0];
	close(logFile);
	`rm ./err.txt`;
	exit -1;
}



#=============================================================================
# isAvailableInCache
# Checks whether library is already generated in JSLibs directory
# argument 1 - libraray name as string
# Result - returns  1 if already exists else 0
#=============================================================================

sub isAvailableInCache
{
	my $flag = 0;
	if(-d './SSMLibs')
	{
		opendir my $dir, "./SSMLibs" or die "Cannot open directory: $!";
		my @files = readdir $dir;
		closedir $dir;
		my @new = split /-/, trim($_[0]);
		for my $i (@files)
		{
			if ( ($_[0] eq $i) && (-e "./SSMLibs/$i/libKonyUnifiedBindings.a"))
			{
                $flag = 1;
				last;
			}
		}
	}
	return $flag;
}

sub getFrameworkList
{
	 my $fwlist = `egrep 'frameworksList' $SSMCONFIGFILE`;
	 @nativeBindingFrameworks = split /,/, $fwlist;
}

sub getHash
{
	@nativeBindingFrameworks = sort @nativeBindingFrameworks;
	my $data = join('', @nativeBindingFrameworks);
	use Digest::MD5 qw(md5_hex);
	return md5_hex($data);
}

    # Takes Frameworks list as input and return a boolean indicating frameworks supported for simulator.
sub isSupportedForSimulators
{
    my $ModulesStr = join(' ', @selfsufficientmoduleNames);
    if ((index($ModulesStr, 'MetalKit-iOS') == -1 && index($ModulesStr, 'MetalPerformanceShaders-iOS') == -1))
    {
        return 1;
    }
    return 0;
}
    #Copies .a and .framework files/folders to native binding folder for third party native function apis support
sub addNativeThirdpartyLibsToNativeBindingLibs
{
    my $libraries = `find ./konyappunzipped/selfsufficientmodules -name "*.a" -o -name "*.framework"`;
    my $libraries1 = `find ./konyappunzipped/selfsufficientmodules -name "*.xcframework"`;
    $libraries = $libraries.$libraries1;
    my @nativeThirdPartyLibraryList = split('\n',$libraries);
    #print Dumper(\@nativeThirdPartyLibraryList);
    my $lib;
    for $lib (@nativeThirdPartyLibraryList)
    {
        chomp($lib);
        if( $lib =~ m/.xcframework./ && $lib =~ m/.framework$/)
        {
            #printf "nativeThirdPartyLibraryList current Lib Skip\n";
            next;
        }
        if( $lib =~ m/.a$/ && $lib =~ m/.xcframework$/)
        {
            #printf "nativeThirdPartyLibraryList current Lib Skip a\n";
            next;
        }
        if(-d $lib ){
            #copying frameworks
            `cp -r $lib ../nativebinding/Libraries`;
        }
        else{
            `cp $lib ../nativebinding/Libraries`;
        }

    }
}

sub isDynamicFramework
{
    my $FWPath = shift;
    my $retVal = 0;
    if($FWPath =~ m/.xcframework/)
    {
        my $listOfFW = `find $FWPath -name "*.framework"`;
        if(length($listOfFW)){
            # print "Adding Thirdparty extract.pl isDynamicFramework YES ".basename($FWPath). "\n";
            return 1;
        }
        else{
            # print("Adding Thirdparty extract.pl isDynamicFramework NO ".basename($FWPath)." $listOfFW ". "\n");
            return 0;
        }
    }
    my $frameworkName = (split(/\//,$FWPath))[-1];
    my $frameworkNameWithoutExt = (split('\.',$frameworkName))[0];
    my $fileInfo = `file $FWPath/$frameworkNameWithoutExt`;
    my $searchStr = "dynamically";
    if(index($fileInfo, $searchStr)!=-1)
    {
        $retVal = 1;
    }
    return $retVal;
}

# Adding FFI files with PBXGroups
# Create child group pbx entry
sub processDirectoryFromDataHash {
    my $ffiSrcDir = shift @_;
    my %value = %{shift @_};
    my $parentDirPath = shift @_;
#    print "current dir ",$ffiSrcDir,"\n";
    my $currentDirPath = $parentDirPath."/$ffiSrcDir";
    my $groupPathFromRoot = $currentDirPath;
#    print "$groupPathFromRoot****\n";
#    print Dumper(%value);
	while (my ($childKey,$childValue) = each (%value)) {
#    print "childKey : '$childKey ' \n";
#    print "childValue :  \n";
#    print Dumper($childValue);
    if ($childKey eq ":?_files") {
      #print ("Handle the files\n");
      my @ffiSrcFiles = @{$childValue};
      #print Dumper (\@ffiSrcFiles);
      for my $ffiSrcFile (@ffiSrcFiles) {
	if ($ffiSrcFile !~ /^\..*/) { # if the file not starting with '.', ignoring hidden files

      if ($ffiSrcFile eq "buildsettings.xml")
      {
          require XML::Parser;
          require XML::Parser::EasyTree;

          $XML::Parser::EasyTree::Noempty=1;
          $XML::Parser::EasyTree::Noempty=1; #Adding this extra line to suppress warnings.
          my $p=new XML::Parser(Style=>'EasyTree',NoLWP=>1);
          my $xmldatatree=$p->parsefile($currentDirPath."/".$ffiSrcFile);

          if ($$xmldatatree[0]->{'name'} eq "buildsettings" )
          {
              my $buildsettings = $$xmldatatree[0]->{'content'};

              for my $buildsetting (@{$buildsettings})
              {

                  if ($buildsetting->{'name'} eq 'buildphase')
                  {

                      my $buildphasetype = "";
                      my $buildphaseposition = "";

                      my $buildPhaseContents = $buildsetting->{'content'};

                      for my $buildphaseconentnode (@{$buildPhaseContents})
                      {
                          if ($buildphaseconentnode->{'name'} eq 'type')
                          {
                              $buildphasetype = $buildphaseconentnode->{'content'}[0]->{'content'};
                          } elsif ($buildphaseconentnode->{'name'} eq 'position')
                          {
                              $buildphaseposition = $buildphaseconentnode->{'content'}[0]->{'content'};
                          }
                      }


                      if($buildphasetype eq 'RunScript')
                      {

                          my $runscriptPath = "";
                          my $runscriptContent = "";

                          my $runScriptBuildPhaseContents = $buildsetting->{'content'};

                          for my $buildphaseconentnode (@{$runScriptBuildPhaseContents})
                          {
                              if ($buildphaseconentnode->{'name'} eq 'executablepath')
                              {
                                  $runscriptPath = $buildphaseconentnode->{'content'}[0]->{'content'};
                                  if ($runscriptPath !~ /^\//)
                                  {

                                      $currentDirPath =~ /(FFI\/.*)/;
                                      $runscriptPath = $1."/".$runscriptPath;
                                  }
                              } elsif ($buildphaseconentnode->{'name'} eq 'scriptcontent')
                              {

                                  $runscriptContent = $buildphaseconentnode->{'content'}[0]->{'content'} if defined($buildphaseconentnode->{'content'}[0]);

                              }
                          }
						  #add shellscript build phase...
						  foreach my $targetName (@targets)
						  {
							  XCProjectEditor::addBuildPhaseToTarget(makePBXShellScriptBuildPhase($runscriptPath, $runscriptContent), $targetName);
						  }
                      }
                  }
              }
          }
      }
      else
      {
		  # .h,.m,.c,.mm,.cpp file, add it to sources build phase section
		  # Library archive file, add it to frameworks build phase section
		  # Resource file, add it to resources section
		  	$groupPathFromRoot =~ s/\.\.\///g;
          # For VM Project existing libLoggerAbstraction.a,libLoggerAbstraction.h are replaced with same files obtained from KAR file.
            my $konyLoggerLibPath = "$rscHandler->{_FFI}/konyLogger/libLoggerAbstraction.a";
            my $konyLoggerHeaderPath = "$rscHandler->{_FFI}/konyLogger/LoggerAbstraction.h";
            if(($projectFilePath !~ /VMAppWithKonylib/) && ($ffiSrcFile =~ /libLoggerAbstraction.a/) && (-e $konyLoggerLibPath)){
                my $loggerLibraryRef = XCProjectEditor::getPBXFileRefWithPathFromRoot("$groupPathFromRoot/$ffiSrcFile", "SOURCE_ROOT");
                if(not defined $loggerLibraryRef){
                    $loggerLibraryRef = XCProjectEditor::makePBXFileReference(basename($ffiSrcFile), "<group>");
                }
	    		system "rm -rf $konyLoggerLibPath";
                system "cp $konyappunzipdir/konyLogger/$ffiSrcFile $konyLoggerLibPath";
			    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
			        $loggerLibraryRef,
                    "$rscHandler->{_FFIGroupPath}/konyLogger/",
			        undef,
			        undef,
			        \@jsTargets
			    );
            }elsif(($projectFilePath !~ /VMAppWithKonylib/) && ($ffiSrcFile =~ /LoggerAbstraction.h/) && (-e $konyLoggerHeaderPath)){
              system "rm -rf $konyLoggerHeaderPath";
              system "cp $konyappunzipdir/konyLogger/$ffiSrcFile $konyLoggerHeaderPath";
            }elsif ($ffiSrcFile =~ /\.(jpg|jpeg|gif|png|xib|wav|mov|mp3|mp4|cer|m4v|avi|3gp|p12|pkcs12|ttf|ndf|storyboard)$/) {
                #print "Resource found : $ffiSrcFile\n";
                if($isLibraryBuild){
                    XCProjectEditor::addFileToGroupAndTargets($ffiSrcFile, "<group>", $groupPathFromRoot, \@jsTargets);
                }else{
                    XCProjectEditor::addFileToGroupAndTargets($ffiSrcFile, "<group>", $groupPathFromRoot, \@targets);
                }
            }else{
                if ($ffiSrcFile =~ /\.(m|mm)$/)
                {
                    my %buildsetings = ('COMPILER_FLAGS' => "-fno-objc-arc");
                    XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets($ffiSrcFile, "<group>", $groupPathFromRoot, \%buildsetings, undef, \@jsTargets);
                }
                elsif ($ffiSrcFile =~ /\.(c|h|hpp|cpp|swift|a)$/)
                {
                    XCProjectEditor::addFileToGroupAndTargets($ffiSrcFile, "<group>", $groupPathFromRoot, \@jsTargets);
                }else
                {
                    if($isLibraryBuild){
                        XCProjectEditor::addFileToGroupAndTargets($ffiSrcFile, "<group>", $groupPathFromRoot, \@jsTargets);
                    }else{
                        XCProjectEditor::addFileToGroupAndTargets($ffiSrcFile, "<group>", $groupPathFromRoot, \@targets);
                    }
                }
          }
      }
	}
      }
    }
    elsif ($childKey =~ /^\..*/ || $childKey eq "__MACOSX") {
      # Ignore all the files with names starting with . # .git .svn etc
        print "Ignoring $childKey in $ffiSrcDir\n";
    }
    elsif ($childKey =~ /\.(bundle|framework|xcframework|xcassets)$/) {
        # For VM Project existing KonyLogger.framework is being replaced with KonyLogger.framework obtained from KAR file.
        #print "IAMHERE***********\n",$childKey;
        if ( ($currentDirPath =~ /\.xcframework/ ) && ($currentDirPath =~ /\.framework$/))
        {
            #we have to skip it
        }
        else
        {
        my $konyLoggerFrameworkPath = "$rscHandler->{_FFI}/konyLogger/KonyLogger.xcframework";# add if else condition to support both frmk & XCfrmk
        if(($projectFilePath !~ /VMAppWithKonylib/) && ($childKey =~ /KonyLogger.framework/ || $childKey =~ /KonyLogger.xcframework/ || $childKey =~ /LoggerAbstraction.xcframework/) && (-e $konyLoggerFrameworkPath)){
            if($childKey =~ /KonyLogger.xcframework/){
                
                # printf("Copying KonyLogger.xcframework\n");
                my $konyLoggerFrameworkPath = "$rscHandler->{_FFI}/konyLogger/KonyLogger.xcframework";
                system "rm -rf $konyLoggerFrameworkPath";
                system "cp -R $konyappunzipdir/konyLogger/$childKey $konyLoggerFrameworkPath";
                
                my $fileRef = XCProjectEditor::makePBXFileReference(basename("KonyLogger.xcframework"), "<group>");
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_FFIGroupPath}/konyLogger/", undef, undef, \@targets);
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_FFIGroupPath}/konyLogger/", undef, undef, \@jsTargets);
                my %builSettings =  (
                "ATTRIBUTES" => ["CodeSignOnCopy"]
                );
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_FFIGroupPath}/konyLogger/", \%builSettings, "Embed Frameworks", \@targets);
                
            }
            elsif($childKey =~ /KonyLogger.framework/)
            {
                # printf("Copying KonyLogger.framework\n");
                my $konyLoggerFrameworkPath = "$rscHandler->{_FFI}/konyLogger/KonyLogger.framework";
                system "rm -rf $konyLoggerFrameworkPath";
                system "cp -R $konyappunzipdir/konyLogger/$childKey $konyLoggerFrameworkPath";
                my $fileRef = XCProjectEditor::makePBXFileReference(basename($childKey), "<group>");
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_FFIGroupPath}/konyLogger/", undef, undef, \@targets);
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_FFIGroupPath}/konyLogger/", undef, undef, \@jsTargets);
                my %builSettings =  (
                "ATTRIBUTES" => ["CodeSignOnCopy"]
                );
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_FFIGroupPath}/konyLogger/", \%builSettings, "Embed Frameworks", \@targets);
            }
            elsif($childKey =~ /LoggerAbstraction.xcframework/){
            	my $ffiSrcFile = $childKey;
            	my $konyLoggerXCFrameworkPath = "$rscHandler->{_FFI}/konyLogger/LoggerAbstraction.xcframework";
            	system "rm -rf $konyLoggerXCFrameworkPath";
    			system "cp -r $konyappunzipdir/konyLogger/$ffiSrcFile $konyLoggerXCFrameworkPath";
    			
    			my $loggerLibraryRef = XCProjectEditor::getPBXFileRefWithPathFromRoot("$rscHandler->{_FFIGroupPath}/konyLogger/$ffiSrcFile", "SOURCE_ROOT");
                
                if(not defined $loggerLibraryRef){
                    $loggerLibraryRef = XCProjectEditor::makePBXFileReference(basename($childKey), "<group>");
                }
                
				XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
				    $loggerLibraryRef,
                    "$rscHandler->{_FFIGroupPath}/konyLogger/",
				    undef,
				    undef,
				    \@jsTargets
				);
            }
            else{
                
            }
            
        }else{
      	my $ffiSrcFile = $childKey;
      	$groupPathFromRoot =~ s/\.\.\///g;
		XCProjectEditor::addFileToGroupAndTargets($ffiSrcFile, "<group>", $groupPathFromRoot, \@jsTargets);
        if (isDynamicFramework($currentDirPath."/".$ffiSrcFile))
        {
            #print $currentDirPath."/".$ffiSrcFile."\n";
            if($copyDynamicFrameworksForLibraryBuild){
                my $dynamicFramework = $currentDirPath."/".$ffiSrcFile;
                system "cp -rf $dynamicFramework ModuleDependencies/FFIDynamicFrameworks/"
            }
            my $PBXFileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot($groupPathFromRoot."/".$ffiSrcFile);
            my %builSettings =  (
            "ATTRIBUTES" => ["CodeSignOnCopy"]
            );
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($PBXFileRef, undef, undef, undef, \@targets);
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($PBXFileRef, undef, \%builSettings, "Embed Frameworks", \@targets);
        }
        }
        }
    }
    elsif ($childKey =~ /\.lproj$/) {
      my $locale = $childKey;
      $locale =~ s/\.lproj//g;
      #print Dumper (\%{$childValue});
	  my ($lprojChildKey, $lprojChildValue) = undef;
      while (($lprojChildKey,$lprojChildValue) = each (%{$childValue})) {
	if ($lprojChildKey eq ":?_files") { # only handling files - no subdirectories in lproj
	  #print ("Handle the lproj files in $currentDirPath/$childKey\n");
	  my $lprojDirPath = $currentDirPath."/".$childKey;
	  my @ffiSrcFiles = @{$lprojChildValue};
	  #print Dumper (\@ffiSrcFiles);
	  for my $rscID (@ffiSrcFiles) {
        #print ("Creating softlink for \"$gen_absolute_path/$lprojDirPath/$rscID\" \"$gen_absolute_path/$rscHandler->{_LocalizedResources}/$childKey/$rscID\"\n");
	    system "ln -s \"$gen_absolute_path/$lprojDirPath/$rscID\" \"$gen_absolute_path/$rscHandler->{_LocalizedResources}/$childKey/$rscID\" ";

	    if (!exists($ffiRscLocales{$rscID})) {
	      $ffiRscLocales{$rscID} = [ $locale ];
	    } else {
	      	if ($rscID eq "Localizable.strings" && !exists($localeDirCreatedDueToFFILocale{$locale})) {
	      		# Open the new string file in read mode...
	      		open FILEREAD, "<$lprojDirPath/$rscID" or die "Can not open Localizable.string file to read!";

	      		# Open the existing string file in append mode...
	      		# We are referring to the lproj directory created while iterating through the KAR Resources directory...
	      		open FILEAPPEND, ">>$rscHandler->{_LocalizedResources}/$childKey/Localizable.strings" or die "Can not open Localizable.string file to append!";

	      		#Append the new Localizable string file entries to the existing Localizable string file...
	      		print FILEAPPEND "\n\n\n";
	      		while (<FILEREAD>) {
					my $line = $_;
					print FILEAPPEND $line;
		  		}
		  		close FILEREAD;
		  		close FILEAPPEND;
	    	}

	      	#If the locale is already added as the value in rscLocales then don't add it again...
	      	my $found = 0;
	      	for my $localeEntry (@{$ffiRscLocales{$rscID}}) {
	      		if ($localeEntry eq $locale) {
	      			$found = 1;
	      			last;
	      		}
	      	}
	      	if ($found == 0) {
	      		push(@{$ffiRscLocales{$rscID}}, $locale);
	      	}
	    }
	  }
	}
      }
    }
    else {
      if ($childKey !~ /^$/) {
		processDirectoryFromDataHash($childKey,$childValue,$currentDirPath);
      }
    }
  }
}

#Add Corodva Frameworks to both Embed frameworks and Link Frameworks and Libraries if dynamic framework and to Link Frameworks and Libraries if static framework
sub addCordovaFrameworksToEmbeddedBinariesAndFramework{
    printf "addCordovaFrameworksToEmbeddedBinariesAndFramework\n";
    my $CordovaFrameworks = `find ../Plugins -name "*.framework"`;
    my $CordovaXCFrameworks = `find ../Plugins -name "*.xcframework"`;
    $CordovaFrameworks = $CordovaFrameworks.$CordovaXCFrameworks;
    my @CordovaFrameworksList = split('\n', $CordovaFrameworks);
    my $framework = undef;
    for $framework (@CordovaFrameworksList)
    {
        printf ("FWCordova ".$framework."\n");
        chomp($framework);
        if(index($framework,".framework") != -1 && index($framework,".xcframework") != -1){
            next;}
        my $fileRef = XCProjectEditor::makePBXFileReference(basename($framework), "<group>");
        my @trgts = @targets;
        push(@trgts,@jsTargets);
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "Plugins", undef, undef, \@trgts);
        if (-d $framework && (index($framework,".framework") != -1 || index($framework,".xcframework") != -1))
        {
            if(index($framework,".framework") != -1 && index($framework,".xcframework") != -1){
                next;}
            #check if farmework is dynamic. If dynamic add to "Embed Binaries".
            if(isDynamicFramework($framework))
            {
                $hasDynamicFrameworks = 1;
                my %builSettings =  (
                "ATTRIBUTES" => ["CodeSignOnCopy"]
                );
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, \%builSettings, "Embed Frameworks", \@targets);
            }
        }
    }
}

sub AddCordovaConfigXmlToProject {
    my $fileName ="config.xml";
	XCProjectEditor::addFileToGroupAndTargets($fileName, "<group>", "", \@jsTargets);
}

sub AddCordovaLibToProject {
    my $ProjectfileName ="CordovaLib.xcodeproj";
	XCProjectEditor::addSubProjectToProject("CordovaLib/$ProjectfileName", "");
    foreach my $targetName (@jsTargets)
    {
        XCProjectEditor::createTargetDependency("CordovaLib", $ProjectfileName, $targetName);
    }
	# Now add libCordova.a to "Build Phases->Link Binary With Library"
    XCProjectEditor::addSubProjectTargetAsBuildphaseInTargets($ProjectfileName, "CordovaLib", undef, undef, \@jsTargets);

    # read the cordova app name from config.xml in web/cordova/ directory
    my $extract_app_name_cmd = 'sed -ne \'/name/{s/.*<name>\(.*\)<\/name>.*/\1/p;q;}\' '.$rscHandler->{_Web}.'/cordova/config.xml';

	my $cordovaAppName = `$extract_app_name_cmd`;
	chomp($cordovaAppName);

    my $cordova_app_frameworks_file = "$cordovaAppName/platforms/ios/frameworks.json";
    my $framework_text_read_success = 1;

    my $framework_text = do {
        open(my $json_fh, "<:encoding(UTF-8)", $cordova_app_frameworks_file)
        or $framework_text_read_success = 0;
        local $/;
        if ($framework_text_read_success){
            <$json_fh>
        }
    };

	if ($framework_text_read_success){
		my $framework_data = decode_json($framework_text);

		foreach my $framework_key (keys %$framework_data) {
			print "Adding $framework_key\n";
			if (! exists $existing_frameworks_Hash{$framework_key})
			{
				XCProjectEditor::addFileToGroupAndTargets("System/Library/Frameworks/".$framework_key, "SDKROOT", "Frameworks", \@jsTargets);
				$existing_frameworks_Hash{$framework_key} = 1;
			}
		}
	}
	else{
		print("Can't open \"$cordova_app_frameworks_file\": $!\n");
	}
}

sub addWatchRelatedFilesToProject {

	for my $fileName (@watchGeneratedFileNamesArray) {
		XCProjectEditor::addFileToGroupAndTargets($fileName, "<group>", "KWatchOS2 Extension/Sources", ["KWatchOS2 Extension"]);
	}
	for my $fileName (@watchSwiftFileNamesArray) {
		XCProjectEditor::addFileToGroupAndTargets($fileName, "<group>", "KWatchOS2 Extension/SwiftSources", ["KWatchOS2 Extension"]);
	}
}

sub addWatchLocaleEntriesToFileRefSection {
	my @watchLocales = keys %watchLocalizableStringsHashForLocales;
	for my $watchLocale (@watchLocales) {
		XCProjectEditor::addFileToGroupAndTargets("$watchLocale.lproj/Interface.strings", "<group>", "KWatchOS2/Interface.storyboard", \@watchTargets);
	}
}

sub addWatchLocaleEntriesToProject {
	addWatchLocaleEntriesToFileRefSection();
}


#########
# Utility for removing duplicates in an array
sub uniqArrayHash { # Loss of original order ...
    return %{{ map { $_ => 1 } @_ }};
}

sub removeDuplicatesInArray {
    my %seen;
    grep !$seen{$_}++, @_;
}

sub addSystemFrameworksToTargets
{
    for my $systemFramework (@{$_[0]}) {
        $systemFramework = $systemFramework.".framework" if $systemFramework !~ /.framework$/;
        if(@globalSystemFrameworks){
            if(!(grep { $_ eq $systemFramework } @globalSystemFrameworks)){
                print "error: $systemFramework is not a valid System Framework. Please validate\n";
                exit -1;
            }
        }
        if (! exists $existing_frameworks_Hash{$systemFramework})
        {
            my %buildSettings = ('ATTRIBUTES' => ['Weak']);
            XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets("System/Library/Frameworks/".$systemFramework, "SDKROOT", "Frameworks", \%buildSettings, undef, \@{$_[1]});
            $existing_frameworks_Hash{$systemFramework} = 1;
            print "Added $systemFramework to Target\n";
        }
    }
}

sub addFrameworksToProject
{
    for my $nativeBindingFramework (@_) {
		if (! exists $existing_frameworks_Hash{$nativeBindingFramework})
		{
			XCProjectEditor::addFileToGroupAndTargets("System/Library/Frameworks/".$nativeBindingFramework, "SDKROOT", "Frameworks",
				\@targets);
			$existing_frameworks_Hash{$nativeBindingFramework} = 1;
		}
	}
}

sub addFrameworkDependenciesRecursively{
    my %dependenciesDict = %{$_[0]};
    my $framework = $_[1];
    my @requiredFrameworks = @{$_[2]};
    
    for my $dpndcy (@{$dependenciesDict{$framework}})
    {
        if(grep { $_ eq $dpndcy} @requiredFrameworks){
            # Dependency Framework is already added to the project
        }else{
            push(@requiredFrameworks,$dpndcy);
            addPlatformFrameworkToProject($dpndcy.'.xcframework');
            @requiredFrameworks = &addFrameworkDependenciesRecursively(\%dependenciesDict,$dpndcy,\@requiredFrameworks);
        }
    }
    @requiredFrameworks;
}

# Takes JSON file as input which consists a json object with key "frameworks" and value as array containing all the Frameworks that need to be added to the project
sub addPlatformFrameworksFromJSON{
    my $dependenciesJSONFileName = 'FrameworkDependencies.json';
    my $frameworksJSONFilePath = shift;
    
    my %dependenciesDict = JSON_PLIST::readJsonFileAndConvertToPerlDict($dependenciesJSONFileName);
    my %frameworksDict;
    my @systemFrameworks;
    
    # Frameworks which are added to the Project will be added to requiredFrameworks Array to avoid any duplicacy.
    my @requiredFrameworks;
    
    #Adding Mandatory Frameworks to the Project
    foreach (@{$dependenciesDict{'Mandatory'}})
    {
        push(@requiredFrameworks,$_);
        addPlatformFrameworkToProject($_.'.xcframework');
        #print $_."\n";
        @requiredFrameworks = &addFrameworkDependenciesRecursively(\%dependenciesDict,$_,\@requiredFrameworks);
    }
    
    delete $dependenciesDict{'Mandatory'};
    
    # If JSON file is not present in the KAR file ,all the Frameworks will be added to the project.
    # allFrameworks array is populated with the keys in FrameworkDependencies.json file.
    if(-e $frameworksJSONFilePath){
        %frameworksDict = JSON_PLIST::readJsonFileAndConvertToPerlDict($frameworksJSONFilePath);
        if(exists($frameworksDict{'systemframeworks'})){
            @systemFrameworks = @{$frameworksDict{'systemframeworks'}};
            addSystemFrameworksToTargets(\@systemFrameworks,\@jsTargets);
        }
    }
    
    if(!exists($frameworksDict{'frameworks'})){
        print "Adding All Frameworks to App Targets\n";
        my @allFrameworks = keys %dependenciesDict;
        #print Dumper(\@allFrameworks);
        $frameworksDict{'frameworks'} = \@allFrameworks;
        #print Dumper(\%frameworksDict);
    }

    if(exists($frameworksDict{'excludeFrameworks'})){
        my @excludeFrameworks = (@{$frameworksDict{'excludeFrameworks'}});
        foreach my $excludedFramework (@excludeFrameworks){
            print "Excluding framework adding to project: $excludedFramework\n";
            if(grep { $_ eq $excludedFramework} @{$frameworksDict{'frameworks'}}){
                my $index = 0;
                $index++ until $frameworksDict{'frameworks'}[$index] eq $excludedFramework;
                splice(@{$frameworksDict{'frameworks'}}, $index, 1);
            }
        }
    }
    
    foreach (@{$frameworksDict{'frameworks'}})
    {
        my $framework = $_;
        if(grep { $_ eq $framework} @requiredFrameworks){
            #Framework is Already Added to the Project
        }else{
            push(@requiredFrameworks,$framework);
            addPlatformFrameworkToProject($framework.'.xcframework');
        }
        #print $_."\n";
        @requiredFrameworks = &addFrameworkDependenciesRecursively(\%dependenciesDict,$framework,\@requiredFrameworks);
    }
}

#Adds Platform Frameworks to App Targets in Plugin Mode.
sub addPlatformFrameworkToProject
{
    if(-e "../VMAppWithKonylib.xcodeproj"){
        my $framework = shift;
#        system "echo 'Framework name:'$framework";
        chomp($framework);
        #print "Adding ".$framework." To App Targets\n";
        my $fileRef;
        my %builSettings =  (
            "ATTRIBUTES" => ["CodeSignOnCopy"]
        );
        
        if($protectenabled){
            #Adding Dynamic Framework to Link Binaries and Embedded Binaries sections of Protected Mode Targets
            my @protectedTargets = ('KProtected');
            
            if($rscHandler->{_context} eq "AppClip"){
                @protectedTargets = ( "KAppClip" );
            }
            
            my $protectedModeFrameworksPath = "PlatformFiles/Components/Protected/";
            if(($framework eq "PLSqlite.xcframework") && ($sqlcipher == 1)){
                $protectedModeFrameworksPath = "PlatformFiles/SQLCipher/$sqlcipherver/Protected/";
            }
            $fileRef = XCProjectEditor::makePBXFileReference($protectedModeFrameworksPath.$framework, "SOURCE_ROOT");
            if($framework eq "CoreComponent.xcframework"){
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, undef, undef, \@jsTargets);
            }
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, $protectedModeFrameworksPath, undef, undef, \@protectedTargets);
            #Pass "Embed Frameworks" as input if we want to embed the frameworks, else it should be set as "Frameworks"
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, \%builSettings, "Embed Frameworks", \@protectedTargets);
            
            if($copyDynamicFrameworksForLibraryBuild){
                system "cp -rf ../".$protectedModeFrameworksPath.$framework." ModuleDependencies/PlatformDependencies/Protected/";
            }
        }else{
            #Adding Dynamic Framework to Link Binaries and Embedded Binaries sections of Release Targets
            my @releaseTargets = ('KRelease');
            if($rscHandler->{_context} eq "AppClip"){
                @releaseTargets = ( "KAppClip" );
            }
            my $releaseModeFrameworksPath = "PlatformFiles/Components/Release/";
            my $debugModeFrameworksPath = "PlatformFiles/Components/Debug/";
            if(($framework eq "PLSqlite.xcframework") && ($sqlcipher == 1)){
                $releaseModeFrameworksPath = "PlatformFiles/SQLCipher/$sqlcipherver/Release/";
                $debugModeFrameworksPath = "PlatformFiles/SQLCipher/$sqlcipherver/Debug/";
            }
            $fileRef = XCProjectEditor::makePBXFileReference($releaseModeFrameworksPath.$framework, "SOURCE_ROOT");
            if(($framework eq "CoreComponent.xcframework") && ($protectenabled == 0)){
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, undef, undef, \@jsTargets);
            }
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, $releaseModeFrameworksPath, undef, undef, \@releaseTargets);
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, \%builSettings, "Embed Frameworks", \@releaseTargets);
            
            if($copyDynamicFrameworksForLibraryBuild){
                system "cp -rf ../".$releaseModeFrameworksPath.$framework." ModuleDependencies/PlatformDependencies/Release/";
            }
            # As Debug Mode is Achieved in plugin mode through Debug Mode Copy Phase, All the frameworks in ModuleDependencies/PlatformDependencies/Debug/ will be copied to .app
            if($rscHandler->{_context} eq "MainApp"){
                system "cp -rf ../".$debugModeFrameworksPath.$framework." ModuleDependencies/PlatformDependencies/Debug/";
            }
        }
    }
}

sub configureSQLCipherIfNeeded{
    if(! -e "../VMAppWithKonylib.xcodeproj"){
        my @configs = @{XCProjectEditor::listOfXCBuildConfigNames()};
        # print Dumper(\@configs);
        for my $config (@configs){
           		replaceStringInFile("-L\"\$(SRCROOT)/Libraries/libsqlcipher.*.xcframework/ios-arm64_i386_x86_64-simulator\" -lsqlcipher.*","-lsqlite3","../APIComponents/PLSqlite/BuildConfig/".$config.".xcconfig");
				replaceStringInFile("-L\"\$(SRCROOT)/Libraries/libsqlcipher.*.xcframework/ios-arm64_armv7_armv7s\" -lsqlcipher.*","-lsqlite3","../APIComponents/PLSqlite/BuildConfig/".$config.".xcconfig");
            if ($sqlcipher == 1) {
                if($config eq "Protected" or $config eq "PDebug"){
                    replaceStringInFile("sdk=iphonesimulator.*.-lsqlite3","sdk=iphonesimulator*] = \${ENSUREIT_KONY_LDFLAGS} -L\"\$(SRCROOT)/Libraries/libsqlcipher".$sqlcipherver.".xcframework/ios-arm64_i386_x86_64-simulator\" -lsqlcipher -framework Security","../APIComponents/PLSqlite/BuildConfig/".$config.".xcconfig");
                    replaceStringInFile("sdk=iphoneos.*.-lsqlite3","sdk=iphoneos*] = \${ENSUREIT_KONY_LDFLAGS} -L\"\$(SRCROOT)/Libraries/libsqlcipher".$sqlcipherver.".xcframework/ios-arm64_armv7_armv7s\" -lsqlcipher -framework Security","../APIComponents/PLSqlite/BuildConfig/".$config.".xcconfig");
                }else{
                    replaceStringInFile("sdk=iphonesimulator.*.-lsqlite3","sdk=iphonesimulator*] = -L\"\$(SRCROOT)/Libraries/libsqlcipher".$sqlcipherver.".xcframework/ios-arm64_i386_x86_64-simulator\" -lsqlcipher -framework Security","../APIComponents/PLSqlite/BuildConfig/".$config.".xcconfig");
                    replaceStringInFile("sdk=iphoneos.*.-lsqlite3","sdk=iphoneos*] = -L\"\$(SRCROOT)/Libraries/libsqlcipher".$sqlcipherver.".xcframework/ios-arm64_armv7_armv7s\" -lsqlcipher -framework Security","../APIComponents/PLSqlite/BuildConfig/".$config.".xcconfig");
                }
            }
        }
    }
}

# Updates product name found under XCBuildConfiguration section.
# Note that this update is cosmetic in nature.  It just changes
# the way the application name appears in Simulator/Device.
sub updateProductName {
	my $encodedAppName = $unicodeAppNameConfigurationFlag == 1 ? $unicodeAppName : $appName;
	my %KReleaseXCBuildConfig = ();
    my %KonyJSBuildConfig = ();
    $KReleaseXCBuildConfig{"KONY_PRODUCT_NAME"} = $encodedAppName;
    if($universalApp){
        $KReleaseXCBuildConfig{"TARGETED_DEVICE_FAMILY"} = "1,2";
    }
    else{
        $KReleaseXCBuildConfig{"TARGETED_DEVICE_FAMILY"} = $targetDeviceFamily;
    }
    
    #changing the deployment target to 9.0
    my $value =  $iosdeploymenttarget;
    $KReleaseXCBuildConfig{"ASSETCATALOG_COMPILER_APPICON_NAME"} = "AppIcon";
    $KonyJSBuildConfig{"ASSETCATALOG_COMPILER_APPICON_NAME"} = '';
    $KReleaseXCBuildConfig{"IPHONEOS_DEPLOYMENT_TARGET"} = $value;
    if ($swiftSupport =~ 1) {
        $KReleaseXCBuildConfig{"SWIFT_OBJC_BRIDGING_HEADER"} = "FFI/".$encodedAppName."-Bridging-Header.h";
    } else {
        $KReleaseXCBuildConfig{"SWIFT_OBJC_BRIDGING_HEADER"} = "";
    }
	$KReleaseXCBuildConfig{"SWIFT_OPTIMIZATION_LEVEL"}   = "-Onone";
	$value = "-lBinaryProtectionStub";
	if ($sqlcipher == 1) {
		$value = "-lBinaryProtection";
	}
	# $KReleaseXCBuildConfig{"PROTECTION_LIBRARY"} = $value;

	if($arxanProtectionNeeded == 1)
	{
		$value = "-ensureit-link -ensureit-objects-dir \\\"\${OBJECT_FILE_DIR}-\${CURRENT_VARIANT}/\${CURRENT_ARCH}\\\" -ensureit-built-product \\\"\${BUILT_PRODUCTS_DIR}/\${EXECUTABLE_PATH}\\\" -ensureit-archs \\\"\${ARCHS}\\\" -Wcompile-gs,gs.cpp";
	}
	else
	{
		$value = '""';
	}
	$KReleaseXCBuildConfig{"ARXAN_OTHERFLAGS"} = $value;
    $KReleaseXCBuildConfig{"SWIFT_VERSION"} = $swiftVersion;
    if($rscHandler->{_context} eq 'MainApp'){
        my $rootObject_ref = XCProjectEditor::getObjectRefWithId(XCProjectEditor::getVMProjectRef());
        foreach my $target_ref (@{$rootObject_ref->{'targets'}})
        {
            my $targetObj_ref = XCProjectEditor::getObjectRefWithId($target_ref);
    #        print "Target Name : ".$targetObj_ref->{'name'}."\n";
            if ($targetObj_ref->{'name'} !~ /^KWatchOS2$/ && $targetObj_ref->{'name'} !~ /^KWatchOS2 Extension$/ && $targetObj_ref->{'name'} !~ /^XCUITest$/ && $targetObj_ref->{'name'} !~ /^KonyWidgetExtension$/)
            {
                XCProjectEditor::updateBuildSettingsForTarget($targetObj_ref->{'name'}, \%KReleaseXCBuildConfig);
            }
        }
    }else{
        XCProjectEditor::updateBuildSettingsForTarget("KAppClip", \%KReleaseXCBuildConfig);
    }

	delete $KReleaseXCBuildConfig{"TARGETED_DEVICE_FAMILY"};
    # Removing SWIFT_VERSION for watch targets as they have already been updated
    $KReleaseXCBuildConfig{"SWIFT_VERSION"} = $swiftVersion;
	# Minimum deployment target for watch targets should be 8.2
	if (($watchEnabled || $watchCompatabilityMode)) {
		$value = "8.2";
	}
    
	$KReleaseXCBuildConfig{"IPHONEOS_DEPLOYMENT_TARGET"} = $iosdeploymenttarget;
    $KReleaseXCBuildConfig{"WATCHOS_DEPLOYMENT_TARGET"} = $watchosdeploymenttarget;
    $KonyJSBuildConfig{"IPHONEOS_DEPLOYMENT_TARGET"} = $iosdeploymenttarget;
    $KonyJSBuildConfig{"WATCHOS_DEPLOYMENT_TARGET"} = $watchosdeploymenttarget;
    $KonyJSBuildConfig{"SWIFT_VERSION"} = $swiftVersion;
    $KonyJSBuildConfig{"PRODUCT_NAME"} = $appID;
    $KonyJSBuildConfig{"APP_BUNDLE_IDENTIFIER"} = $bundleID;
    
	delete $KReleaseXCBuildConfig{"SWIFT_OBJC_BRIDGING_HEADER"};
    if($rscHandler->{_context} eq "MainApp"){
        XCProjectEditor::updateBuildSettingsForTarget("KWatchOS2", \%KReleaseXCBuildConfig);
        XCProjectEditor::updateBuildSettingsForTarget("KWatchOS2 Extension", \%KReleaseXCBuildConfig);
    }
    for my $jsTrgt (@jsTargets){
        XCProjectEditor::updateBuildSettingsForTarget($jsTrgt, \%KonyJSBuildConfig);
    }
    
    if($rscHandler->{_context} eq "AppClip"){
        my %buildSetting = (
            "PRODUCT_NAME" => $appName
        );
    
        for my $trgt (@targets){
            XCProjectEditor::updateBuildSettingsForTarget($trgt, \%buildSetting);
        }
    }

	if (XCProjectEditor::getTargetRefByName('XCUITest$'))
	{
		$KReleaseXCBuildConfig{"IPHONEOS_DEPLOYMENT_TARGET"} = 10.0;
		XCProjectEditor::updateBuildSettingsForTarget("XCUITest", \%KReleaseXCBuildConfig);
	}
}

sub minifyFiles{

	my @filesToMinify = @{$_[0]};

	foreach my $file (@filesToMinify){
		if(-e $file){
		system "java -jar yuicompressor-2.4.6.jar  $file -o $file";
		print '.';
		}
	}
	print '\n';
}

sub minifyJSFilesInDir{

	my $jsFilePath = $_[0];
	my @filesToMinify = glob "$jsFilePath";
	minifyFiles(\@filesToMinify);
}

#validates the functional module xml agains the schema document
sub validateFunctionalModuleXML{
	my $document = $_[0];
  	my $schema_file = 'functionalModules.xsd';

  	print "Validating functionalmodules.xml\n";
  	system ("xmllint --noout --schema $schema_file $document > /dev/null");
  	my $errorCode = $?;
	if ($errorCode == -1) {
	    print "failed to execute : $!\n";
	}
	elsif ($errorCode & 127) {
	    printf "child died with signal %d, %s coredump\n",
	    ($errorCode & 127),  ($errorCode & 128) ? 'with' : 'without';
	}
	elsif ( $errorCode ne 0){
		my %xmllinterrorcode = (1,'Unclassified',2,'Error in DTD',3,'Validation error',4,'Validation error',5,'Error in schema compilation',9,'Out of memory error');
		my $error = $errorCode >> 8;

	    if(exists $xmllinterrorcode{$error}){
	    	print "Invalid functionalModules.xml . error messsage :",$xmllinterrorcode{$error},"\n";
	    }else{
	    	print "Invalid functionalModules.xml \n";
	    }
	}
	if( $errorCode ne 0){
		die "Aborting the build...\n";
	}
}

# returns array of files mentioned under given element in xml file
sub filesInElement {
    my $funModuleElement = $_[0];
    my $sourceDir = $_[1];
    my @files = ();
    my $jsmoduleFiles = $funModuleElement->{'content'}[0]->{'content'};
    
    #split files if comma seperated
    if(defined  $jsmoduleFiles ne "") {
        my @jsFileNames = split(',',$jsmoduleFiles);
        for my $file (@jsFileNames){
        #add .js extension if not present
        if ($file =~ /\.js/) {
                push(@files,$sourceDir.trim($file));
            }
            else{
                push(@files,$sourceDir.trim($file).'.js');
            }
        }
    }
	return @files;
}

sub getVerifiedFileList{

    my @filesToVerify = @{$_[0]};
    my $shouldAbort = $_[1];
    my @expandedFiles = ();

    for my $file (@filesToVerify){
        if($file =~/workerthreads/){
                $file=~ s/javascript//;
            }
        if($file =~/\*/){
            my @files1 = glob $file;
            push(@expandedFiles,@files1);
        }else{
            push(@expandedFiles,$file);
        }
    }
    if((scalar @expandedFiles)>0){
        #Verify that all files included in module are present else abort the build for jsmodule files
        foreach my $fileToVerify (@expandedFiles) {
            unless (-e $fileToVerify) {
                #File not present ..ABORT.
                my $result = rindex($fileToVerify, '/');
                my $missingfilename = $fileToVerify;
                if($result ne -1){
                    $missingfilename = substr($fileToVerify,$result+1);
                }
                print "*** Warning *** File  $missingfilename specified in functionalmodules.xml does not exist.\n";
                if($shouldAbort eq "true"){
                    die "\n";
                }
                next;
            }
        }
    }

    return @expandedFiles;
}

sub addSourceFilesToProject{

	my $source_dir = shift @_;

	print "Adding files from $source_dir to project \n";
	opendir(my $DIR, $source_dir) || die "can't opendir $source_dir: $!";
	my @files = readdir($DIR);
	my $hasSwiftFiles = 0;
	foreach my $srcFile (@files)
	{
		if ($srcFile =~ /(\.h|\.m|\.mm|\.cpp|\.c|\.swift)$/){
			if($srcFile =~ /\.swift$/)
			{
				$hasSwiftFiles = 1;
			}
            my %buildsetings = ('COMPILER_FLAGS' => "-fobjc-arc");
			XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets($srcFile, "<group>", "Plugins", \%buildsetings, undef, \@jsTargets);
		}
	}
	my %buildSettings = ('DEFINES_MODULE' => 'YES', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES', 'SWIFT_INSTALL_OBJC_HEADER' => 'YES');
	if ($hasSwiftFiles)
	{
		foreach my $targetname (@jsTargets)
		{
			XCProjectEditor::updateBuildSettingsForTarget($targetname, \%buildSettings);
		}
	}

	closedir($DIR);

}
              
#Adding cordova plugin libs to project.
sub addCordovaPluginStaticLibrariesToProject{
    
    my $source_dir = "../Plugins/";
    my $target_dir = "../PlatformFiles/Libraries/";
    
    print "Adding Libraries from $source_dir to $target_dir \n";
    opendir(my $DIR, $source_dir) || die "can't opendir $source_dir: $!";
    my @files = readdir($DIR);
    
    foreach my $staticLib (@files)
    {
        if ($staticLib =~ /\.a$/)
        {
            print "Adding $staticLib from $source_dir to $target_dir \n";
            copy ("$source_dir/$staticLib", "$target_dir/$staticLib");
            my @cordovaPluginLibs = ("$target_dir$staticLib");
            my $systemFrameworkPath = $staticLib;
			makeSystemFrameworkFileRefValueForCordova($staticLib);
        }
    }
    closedir($DIR);
}


sub makeSystemFrameworkFileRefValueForCordova {
    my $rscID = shift;
    if ($rscID =~ /(framework)/) {
		if (! exists $existing_frameworks_Hash{$rscID})
		{
			XCProjectEditor::addFileToGroupAndTargets("System/Library/Frameworks/".$rscID, "SDKROOT", "Frameworks", \@jsTargets);
			$existing_frameworks_Hash{$rscID} = 1;
		}
    } else {
		XCProjectEditor::addFileToGroupAndTargets("PlatformFiles/Libraries/".$rscID, "<group>", "Frameworks", \@jsTargets);
    }
}

#system "sudo perl extract-Share.pl $extensionName Share";

sub makeDirectoryHash {
	my $parentDir = shift @_;
	my $dir = shift @_;
	my %dirTable = ();
	my @filesArray = ();
#    print $parentDir.":".$dir."\n";
	#print "Find all files in '$parentDir/$dir' \n";
	open ChildDIR, "find $parentDir/$dir |" or die 'Can not open unzipped directory';
	my @listOfFiles;
	chomp(@listOfFiles = <ChildDIR>);
	close ChildDIR;

	for my $listFile (@listOfFiles) {
		if (-d "$listFile") {
			if ($listFile =~ /.lproj$/) {
				my $locale = basename($listFile);
				$locale =~ s/\.lproj//g;
				if (!exists($localeDirs{$locale})) {
                    makeCleanRscDir("$rscHandler->{_LocalizedResources}/$locale.lproj");
					$localeDirs{$locale} = 1;
					$localeDirCreatedDueToFFILocale{$locale} = 1;
				}
			}
		}
		else {
			$listFile =~ s/^$parentDir\///g;
			#print "File found : $listFile\n";

			my @dirlist = split(/\//,dirname $listFile);
			my $dirhashRef = \%dirTable;
			my $immediateParentDirectory = "";
			for my $directory (@dirlist) {
				if ( ! exists $$dirhashRef{$directory}) {
					#print "Creating new hash for Directory $directory\n";
					$$dirhashRef{$directory} = ();
				}
				$dirhashRef = \% { $$dirhashRef{$directory} };
				$immediateParentDirectory = $directory;
			}
			if ($immediateParentDirectory =~ /\.lproj$/) {
				my $filename = basename($listFile);
				#print ("Creating softlink for ../FFI/$listFile ../$immediateParentDirectory/$filename\n");
				#system "ln -s ../FFI/$listFile ../$immediateParentDirectory/$filename";
			}
			if ( exists $$dirhashRef{":?_files"}) {
				#print "Pushing to the existing :?_files...\n";
				push @{ $$dirhashRef{":?_files"} }, basename $listFile;
			}
			else
			{
				#print "Pushing by creating :?_files...\n";
				$$dirhashRef{":?_files"} = [ basename $listFile ];
			}
		}
	}

	return %dirTable;
}

sub writeFromJsonFileToPlistIfPresent
{
    my $jsonFile  = shift;
    my $plistFile = shift;
    my $destJSONFile = shift;
    if (-f $jsonFile) { # populate data from infoplist_configuration.json file
       my %perlDict = JSON_PLIST::readJsonFileAndConvertToPerlDict($jsonFile);
        if(%perlDict)
        {
            open(PLISTFILE, "<","$plistFile") or die "Couldn't openInfo.plist file, $!";
            JSON_PLIST::WriteJsonDictToPlist(\%perlDict, \*PLISTFILE, $destJSONFile);
        }
    }
}

sub genrateUnifiedLibraryForExtension{
    makeCleanRscDir("$rscHandler->{_basePathForProjectAsset}/generatedJSBindings_Device");
	makeCleanRscDir("$rscHandler->{_basePathForProjectAsset}/generatedJSBindings_Simulator");
	my ($path,$extensionName)=@_;
	my $destinationPath = "nativebinding/Extension/$extensionName";
	if (-e $destinationPath){
		print ("Not exist");
	}else{
		mkdir "../$destinationPath";
	}
	my $json = undef;
	{
		local $/ = undef;
		open my $fh, "<", "$path/extensionsnativemodules.json";
		$json = <$fh>;
		close $fh;
	}
	my $data = decode_json($json);
	#my $nativeModulesName = $data->{'extension'}->{'Name'};
	my $nativeModulesNameArr = $data->{'Extension'}->{'NativeBindingsFileNames'};
	my @newNativeBindingArr = ();
	for my $subElement (@{$nativeModulesNameArr}){
		push @newNativeBindingArr, $subElement;
	}
	$extensionNameVar = $extensionName;
	extractSelfSufficientExtensionModules(@newNativeBindingArr);
	if($enableSelfSufficientModulesExtension)
	{
		createMasterFromSelfSufficientModules(@selfsufficientmoduleNames);
		copyThirdPartyFilesFromSelfSufficientModules();
		my $SSMDir = "selfsufficientmodules";
		getFrameworkList();
		my $hash = getHash();
		my $flag = isAvailableInCache($hash);
		if ($flag == 0) #if there is any new framework
		{
			my $output_string = '';
			print "Building new Libraries for $extensionName(Extension)....\n";
			my $archs = "armv7 armv7s arm64";
			if (isSupportedForSimulators())
			{
				$archs = $archs.' i386 x86_64';
			}
			system ("python3 ./nativebinding/usingPool.py -a $archs -i ../../nongeneratedJSBindings/ ../../nativebinding/Headers/ -tp ../../nongeneratedJSBindings/ -ds ../../generatedJSBindings_Device/*.m -ss ../../generatedJSBindings_Simulator/*.m -f \" -Wdeprecated-declarations\" \" -w\" \" -mios-simulator-version-min=5.1.1\" -dest '../$destinationPath'");
			if (-s "./err.txt")#this file will be created above cmd
			{
				my $consoleLog = `cat ./err.txt`;
				errorLog($consoleLog);
			}
			else
			{
				if ( not(-d './SSMLibs')) {
					`mkdir ./SSMLibs`;
				}
				if ( not(-d "./SSMLibs/$hash")) {
					`mkdir ./SSMLibs/$hash`;
				}
				`cp ../$destinationPath/libKonyUnifiedBindings.a ./SSMLibs/$hash/`;
			}
		}
		else
		{
			`cp ./SSMLibs/$hash/libKonyUnifiedBindings.a ../$destinationPath`;
		}
	}
}

sub extractSelfSufficientExtensionModules{
	my (@nativeModulesNameArr) = @_;
	@selfsufficientmoduleNames = ();
	my $nativeModulesName = undef;
	my $srcDir = "selfsufficientmodules";
	my $SSMDir = "$konyappunzipdir/$srcDir";
	my @foundArrList = ();
	if(-e $SSMDir){
		opendir (DIR, $SSMDir) or die $!;
		while (my $file = readdir(DIR)) {
			if($file ne ".DS_Store" & $file ne "." & $file ne ".." & $file ne "__MACOSX" & $file !~ /zip/){
				system "rm -rf '$SSMDir/$file'";
			}
		}
		if (!@nativeModulesNameArr)
		{#This variable hold the collection of Native Fucntion API ...
                #@nativeModulesNameArr is empty.
			print ("Error : Missing Native function API's for : '$extensionNameVar'. So cannot add '$extensionNameVar' target to project.\n");
			exit;
		}
		for (my $i = 0 ; $i < @nativeModulesNameArr ; $i++){
			$nativeModulesName = $nativeModulesNameArr[$i];
			my $unzipfileName = $nativeModulesName;
			$unzipfileName =~ s/\.zip//;
			((system "unzip '$konyappunzipdir/$srcDir/$nativeModulesName' -d '$konyappunzipdir/$srcDir' > /dev/null") <= 2) or die "Unable to extract the Self Sufficient Module zip $$unzipfileName";
			push(@selfsufficientmoduleNames,$unzipfileName);
			$enableSelfSufficientModulesExtension = 1;
		}
		close DIR;
	}
}

sub createFrameworkListFromNativeBinding{
	my (@moduleNameList) = @_;
	for (my $i = 0 ; $i < @moduleNameList ; $i++){
		my $moduleName = $moduleNameList[$i];
		my $srcDir = "selfsufficientmodules";
		my $moduleNameDir = "$konyappunzipdir/$srcDir/$moduleName";
		my $metaDataProperties = "$moduleNameDir/metadata.properties";
		if (-e $metaDataProperties) {
			open FILE, "<$metaDataProperties";
			while (my $line = <FILE>) {
				next if $line =~ /^#/;
					if ( $line !~ /^\s*$/ ) {
						chomp $line;
						my ($propName, $propValue) = split(/=/, $line);
						$propName =~ s/\s//g;
						if ($propName eq "iOSFrameworks") { # iphone 1, ipad 2, both 3
							#print ("Value : $propValue");
						}
					}
			}
			close FILE;
		}
	}
	my %excludedframeworks = uniqArrayHash(@excludedNativeBindingFrameworks);
	my @extensionFramework = ();
	for (my $i = 0; $i < @nativeBindingFrameworks; $i++){
		my $frameWorkName = $nativeBindingFrameworks[$i];
		$frameWorkName =~ s/frameworksList: //;
		if (!grep( $_ eq $frameWorkName, @extensionFramework) && $frameWorkName ne "\n") {
			push @extensionFramework, $frameWorkName;
		}else{
			#system "rm -rf '$SSMDir/$file'";
		}
	}
	return @extensionFramework;
}


sub getExtensionTypeFromIdentifier
{
    my $extensionTypeValue = shift;
    my %ExtensionTypeFromIdentifier = (
    "com.apple.share-services" 						        => "Share",
    "com.apple.message-payload-provider" 			        => "Message",
    "com.apple.ui-services" 						        => "ActionUI",
    "com.apple.services" 							        => "Action",
    "com.apple.widget-extension" 					        => "Today",
    "com.apple.intents-ui-service" 					        => "IntentUI",
    "com.apple.intents-service" 					        => "Intent",
    "com.apple.usernotifications.service" 			        => "NotificationService",
    "com.apple.usernotifications.content-extension"         => "NotificationContent",
    "com.apple.PassKit.issuer-provisioning.authorization"   => "WalletUI",
    "com.apple.PassKit.issuer-provisioning"                 => "Wallet"
    
    );
    return $ExtensionTypeFromIdentifier{$extensionTypeValue};
}

sub sourceFileNamesForExtensionType
{
    my $extensionType = shift;
    my %sourceFileNameHash = (
    "Action" 				=> ['ActionController.h', 'ActionController.m'],
    "ActionUI" 				=> ['ActionViewController.h', 'ActionViewController.m'],
    "Intent" 				=> ['IntentHandler.h', 'IntentHandler.m'],
    "IntentUI" 				=> ['IntentViewController.h', 'IntentViewController.m'],
    "Message" 				=> ['MessagesViewController.h', 'MessagesViewController.m'],
    "NotificationContent" 	=> ['NotificationViewController.h', 'NotificationViewController.m'],
    "NotificationService" 	=> ['NotificationService.h', 'NotificationService.m'],
    "Share" 				=> ['ShareViewController.h', 'ShareViewController.m'],
    "Today" 				=> ['TodayViewController.h', 'TodayViewController.m'],
    "WalletUI"              => ['WalletViewController.h', 'WalletViewController.m'],
    "Wallet"                => ['WalletController.h', 'WalletController.m']
    );
    return $sourceFileNameHash{$extensionType};
}


sub addAppExtension
{
    my ($appExtensionFolderPath, $extensionFramework) = @_;
    my ($extensionName, $extensionTypeValue) = undef;
    my ($bundleIdentifier, $typeExtensionOfShareIsDefault, $typeExtension) = undef;
    if(-e "./$appExtensionFolderPath/Info.plist")
    {
        my $json_ref = PlistUtil::convertPLISTFileToJSON("$appExtensionFolderPath/Info.plist");
        $extensionName = $json_ref->{'CFBundleDisplayName'};
        $bundleIdentifier = $json_ref->{'CFBundleIdentifier'};
        $extensionTypeValue = $json_ref->{'NSExtension'}{'NSExtensionPointIdentifier'};
        if (defined $json_ref->{'NSExtension'}{'NSExtensionMainStoryboard'})
        {
            $typeExtensionOfShareIsDefault = 0;
            $typeExtension =  "Default";
        }
        if (defined $json_ref->{'NSExtension'}{'NSExtensionPrincipalClass'})
        {
            $typeExtensionOfShareIsDefault = 1;
            $typeExtension =  "CustomUI";
        }
    }
    else{
        print ("Cannot Found Info.plist\n");
    }
    $extensionTypeValue = trim($extensionTypeValue);
    my $type = getExtensionTypeFromIdentifier($extensionTypeValue);
    my $filename = './DefaultExtensionsSettings.json';
    my $content;
    open(my $fh, '<', $filename) or die "cannot open file $filename";
    {
        local $/;
        $content = <$fh>;
    }
    close($fh);
    #adding Build settings...
    
#    Changed this as static libs are xcframework dependencies
#    my @arr = ("-L\"\$(SRCROOT)/PlatformFiles/Libraries\"", "-lkonyExtensionsRuntimeios");
    my @arr = ();
    
    if($protectenabled){
        push(@arr,"-F\"\$(SRCROOT)/PlatformFiles/Components/Protected\"");
    }else{
        push(@arr,"-F\"\$(SRCROOT)/PlatformFiles/Components/Release\"");
    }
    push(@arr,"-framework CoreComponent");
    
    my $defaultTargetSetngsHash_ref = decode_json($content);
    $defaultTargetSetngsHash_ref->{'INFOPLIST_FILE'} = "$extensionName/Info.plist";
    $defaultTargetSetngsHash_ref->{'PRODUCT_NAME'} = $extensionName;
    $defaultTargetSetngsHash_ref->{'PRODUCT_BUNDLE_IDENTIFIER'} = $bundleIdentifier;
    $defaultTargetSetngsHash_ref->{'FRAMEWORK_SEARCH_PATHS'} = "\$(PROJECT_DIR)/nativebinding/** \$(BUILT_PRODUCTS_DIR)";
    $defaultTargetSetngsHash_ref->{'OTHER_LDFLAGS'} = "\"\"";
    $defaultTargetSetngsHash_ref->{'OTHER_LDFLAGS'} = \@arr if ($projectFilePath =~ /VMAppWithKonylib/);

    if (-e "./$appExtensionFolderPath/resources/AppIcon"){
        $defaultTargetSetngsHash_ref->{'ASSETCATALOG_COMPILER_APPICON_NAME'} = "AppIcon";
    }
    if (-e "./$appExtensionFolderPath/resources/StickerIcon"){
        $defaultTargetSetngsHash_ref->{'ASSETCATALOG_COMPILER_APPICON_NAME'} = "iMessage App Icon";
    }

	my $productType =  ($type eq 'Message')? 'MessageExtension':'GenericExtension';

    XCProjectEditor::addTargetToProject($extensionName, $productType, $defaultTargetSetngsHash_ref);
    $defaultTargetSetngsHash_ref = {'GCC_PREPROCESSOR_DEFINITIONS' => ["DEBUG=1", "\$(inherited)"]};
    XCProjectEditor::updateBuildSettingsForTarget($extensionName, $defaultTargetSetngsHash_ref, "Debug");
    if ($projectFilePath !~ /VMAppWithKonylib/)
	{
		XCProjectEditor::createTargetDependency("konyExtensionsRuntime", undef, $extensionName);
    	XCProjectEditor::addTargetAsBuildphaseInTargets("konyExtensionsRuntime", undef, undef, [$extensionName]);
    	XCProjectEditor::createTargetDependency("NFILoader", undef, $extensionName);
		XCProjectEditor::addTargetAsBuildphaseInTargets("NFILoader", undef, undef, [$extensionName]);
	}else{
        my $libkonyExtensionsRuntimeRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('PlatformFiles/Libraries/libKonyExtensionsRuntimeios.xcframework', "SOURCE_ROOT");
	    
	    if(!defined $libkonyExtensionsRuntimeRef){
	    	$libkonyExtensionsRuntimeRef = XCProjectEditor::makePBXFileReference('PlatformFiles/Libraries/libKonyExtensionsRuntimeios.xcframework', "SOURCE_ROOT");
	    }
	    
	    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
	        $libkonyExtensionsRuntimeRef,
	        undef,
	        undef,
	        undef,
	        [$extensionName]
	    );
	    XCProjectEditor::createTargetDependency("NFILoader", undef, $extensionName);
		XCProjectEditor::addTargetAsBuildphaseInTargets("NFILoader", undef, undef, [$extensionName]);
    }
    XCProjectEditor::addTargetAsBuildphaseInTargets($extensionName, undef, "Embed App Extensions", \@targets);
    foreach my $targetName (@targets)
    {
        XCProjectEditor::createTargetDependency($extensionName, undef, $targetName);
    }
    #adding sources files...
    foreach my $fileName (@{sourceFileNamesForExtensionType($type)})
    {
        XCProjectEditor::addFileToGroupAndTargets($fileName, "<group>", $extensionName, [$extensionName]);
    }
    if($nfiTpOpt){
        #new NFI
        #reaf CNFI.json
        #add all of'em
        #add NFICore as target link dependency
        my $fileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('nativebinding/NFICore/NFICore.xcframework', "SOURCE_ROOT");
        if(!defined $fileRef){
            $fileRef = XCProjectEditor::makePBXFileReference('nativebinding/NFICore/NFICore.xcframework', "SOURCE_ROOT");
        }
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
            $fileRef,
            undef,
            undef,
            undef,
            [$extensionName]
        );
    }else{
        #if not new NFI
        #adding BridgeSupport and libKonyUnifiedBindings...
        XCProjectEditor::addFileToGroupAndTargets("BridgeSupport.h", "<group>", $extensionName, [$extensionName]);
        XCProjectEditor::addFileToGroupAndTargets("libKonyUnifiedBindings.a", "<group>", $extensionName, [$extensionName]);
    }
    #adding storyboard...
    if (-e "../$extensionName/Base.lproj/MainInterface.storyboard")
    {
        XCProjectEditor::addFileToGroupAndTargets("Base.lproj/MainInterface.storyboard", "<group>",
        $extensionName."/MainInterface.storyboard", [ $extensionName ]);
    }
    #adding resources...
    if (-e "../$extensionName/resources")
    {
        opendir (DIR, "../$extensionName/resources") or die $!;
        while (my $file = readdir(DIR)) {
            if (! -d $file){
                XCProjectEditor::addFileToGroupAndTargets($file, "<group>", "$extensionName/resources", [$extensionName]);
            }
        }
    }
    #adding JSScripts...
    XCProjectEditor::addFileToGroupAndTargets("JSScripts", "<group>", $extensionName, [$extensionName]);
    #adding assets...
    if (-e "../$extensionName/Assets.xcassets")
    {
        XCProjectEditor::addFileToGroupAndTargets("Assets.xcassets", "<group>", $extensionName, [$extensionName]);
    }
    #adding framework to extensions target...
    foreach my $framework (@{$extensionFramework})
    {
        XCProjectEditor::addFileToGroupAndTargets("System/Library/Frameworks/".$framework.".framework", "SDKROOT", "$extensionName/Frameworks", [$extensionName]);
    }
}

sub copyKonyLoggerFramework{
    if(! -e "../VMAppWithKonylib.xcodeproj"){
        my $dummyFrameworkPath = "../dummyLoggerFramework/";
        my $KonyLoggerdir = "$rscHandler->{_FFI}/KonyLogger";
        system "mkdir $KonyLoggerdir";
        system "cp -R $dummyFrameworkPath $KonyLoggerdir";
    }
}

sub cleanStoryboardFiles{
    #KonyLaunch.storyboard file is part of project, it gets reset anyways below
    #KonyLaunchIpad.storyboard file if present delete
    #resources gets cleaned up in the resource clean up logic
    if(-f "$rscHandler->{_LaunchStoryBoard}/KonyLaunchIpad.storyboard"){
        system "rm $rscHandler->{_LaunchStoryBoard}/KonyLaunchIpad.storyboard";
    }
}

sub cleanCustomBuildScript{
    # reseting the ios_custom_build.pl with default content
    system "rm -rf ./ios_custom_build.pl";
    system "touch ./ios_custom_build.pl";
    
    # populating content
    my $iosCustomBuildScript = "use strict;\nuse warnings;\nuse lib './';\n\n";
    open (my $fh, ">", "ios_custom_build.pl");
    print $fh $iosCustomBuildScript;
    close($fh);
    
    #remove the existing folder of $customPerlScriptsFolder
    if(-d $customPerlScriptsFolder)
    {
        system("rm -rf $customPerlScriptsFolder");
    }
}

sub GetNamespaceAndLibNameInFFIXMLFile{
    require XML::Parser;
    require XML::Parser::EasyTree;
    my $xmlFile = $konyappunzipdir."/".shift;
    my $iOSHeaders = shift."headers";
    $XML::Parser::EasyTree::Noempty=1;
    my $p=new XML::Parser(Style=>'EasyTree', NoLWP=>1);
    my $xmldatatree=$p->parsefile($xmlFile);
    # read XML file
    my $xmldata = $xmldatatree;
    my @namespaceAndLibArr;
    push(@namespaceAndLibArr, $$xmldata[0]->{'content'}[0]->{'attrib'}->{'namespace'});
    my $libAndHeaders = $$xmldata[0]->{'content'}[0]->{'attrib'}->{$iOSHeaders};
    if($libAndHeaders){
        # unhandled case for having multiple FFI in the same XML File (BUG: 92895)
        my @multiple_ffis = split(/\|/, $libAndHeaders);
        foreach my $element (@multiple_ffis)
        {
            my $zipFileName = (split(":", $element))[0];
            push(@namespaceAndLibArr, $zipFileName);
        }
    }
    return @namespaceAndLibArr;
}

sub getUnicodeEncodedProductName {
    my $currentAppName = $_[0];
    my $newEncodedAppName = "";
    foreach my $charecter(split(//,$currentAppName)){
        my $charUnicode = ord($charecter);
        if($charUnicode > 127){
            $newEncodedAppName = $newEncodedAppName."&#$charUnicode;";
        }else{
            $newEncodedAppName = $newEncodedAppName."$charecter";
        }
    }
    return $newEncodedAppName;
}

sub createAndAddKonyTestTarget{
    my $filename = './DefaultExtensionsSettings.json';
    my $content;
    open(my $fh, '<', $filename) or die "cannot open file $filename";
    {
        local $/;
        $content = <$fh>;
    }
    close($fh);
    my $unitTestTargetName = "KonyTest";
    my $defaultTargetSetngsHash_ref = decode_json($content);
    $defaultTargetSetngsHash_ref->{'INFOPLIST_FILE'} = "$unitTestTargetName/Info.plist";
    $defaultTargetSetngsHash_ref->{'PRODUCT_NAME'} = "$unitTestTargetName";
    $defaultTargetSetngsHash_ref->{'WRAPPER_EXTENSION'} = "xctest";
    $defaultTargetSetngsHash_ref->{'BUNDLE_LOADER'} = "\$\(TEST_HOST\)";
    my $productType =  'UnitTest';
    XCProjectEditor::addTargetToProject($unitTestTargetName, $productType, $defaultTargetSetngsHash_ref);
    $defaultTargetSetngsHash_ref = {'GCC_PREPROCESSOR_DEFINITIONS' => ["DEBUG=1", "\$(inherited)"]};
    XCProjectEditor::updateBuildSettingsForTarget($unitTestTargetName, $defaultTargetSetngsHash_ref, "Debug");
    my %KonyTestXCBuildConfig = ('TEST_HOST' => '$(BUILT_PRODUCTS_DIR)/$(KONY_PRODUCT_NAME).app/$(KONY_PRODUCT_NAME)');
    XCProjectEditor::updateBuildSettingsForTarget($unitTestTargetName, \%KonyTestXCBuildConfig);
    if( -e "../VMAppWithKonylib.xcodeproj" )
    {
        my %KonyTestDebugXCBuildConfig = ('TEST_HOST' => '$(BUILT_PRODUCTS_DIR)/Debugger-$(KONY_PRODUCT_NAME).app/$(KONY_PRODUCT_NAME)');
        XCProjectEditor::updateBuildSettingsForTarget($unitTestTargetName, \%KonyTestDebugXCBuildConfig,"Debug");
    }
    XCProjectEditor::createTargetDependency("KRelease", undef, $unitTestTargetName);
}

sub modifyBuildSettingBasedOnProjectType{
    my ($targetName, $projectName,$existingSchemedir) = @_;
    if( -e "../VMAppWithKonylib.xcodeproj" )
    {
        $projectName = "VMAppWithKonylib.xcodeproj";
        $existingSchemedir = "../VMAppWithKonylib.xcodeproj/xcshareddata/xcschemes";
        # my %targetBuildsettings = ('OTHER_LDFLAGS' => "-L\"\$(SRCROOT)/PlatformFiles/Libraries\" \-lkonyAutomation \-all_load \-ObjC \$\(SQL_LIBRARY\) \-lc\+\+ \$\(PROTECTION_LIBRARY\) \$\(ARXAN_OTHERFLAGS\)");
        my %targetBuildsettings = ('OTHER_LDFLAGS' => "\-all_load \-ObjC \$\(SQL_LIBRARY\) \-lc\+\+ \$\(PROTECTION_LIBRARY\) \$\(ARXAN_OTHERFLAGS\)");
        XCProjectEditor::updateBuildSettingsForTarget($targetName, \%targetBuildsettings);
        
    	my $libkonyAutomationRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('PlatformFiles/Libraries/libkonyAutomation.xcframework', "SOURCE_ROOT");
	    
	    if(!defined $libkonyAutomationRef){
	    	$libkonyAutomationRef = XCProjectEditor::makePBXFileReference('PlatformFiles/Libraries/libkonyAutomation.xcframework', "SOURCE_ROOT");
	    }
	    
	    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
	        $libkonyAutomationRef,
	        undef,
	        undef,
	        undef,
	        [$targetName]
	    );
    }else{
        XCProjectEditor::createTargetDependency("konyAutomation", undef, $targetName);
        XCProjectEditor::addTargetAsBuildphaseInTargets("konyAutomation", undef, undef, [$targetName]);
    }
    return $existingSchemedir;
}
    
sub addTestFrameworksToEmbededBinariesAndFramework{
    my %builSettings =  (
    "ATTRIBUTES" => ["CodeSignOnCopy"]
    );
    #add kif and socket frameworks
    my @testFws = ('KIF.xcframework','SocketRocket.xcframework');
    my @frameworks_KAR = `find konyappunzipped/  -iname '*.framework' | sed 's#.*/##'`;

    # Dont add SocketRocket if it comes as part of NFI's
    # Adding multiple duplicate frameworks/xcframeworks to app targets, causes build issue in xcode12.5
    # If socketRocket present in ThirdParty dependencies, then stopping adding it here
    my $selfsufficientmodulesThirdPartyDir = "./konyappunzipped/selfsufficientmodules";
    my @selfsufficientmodulesThirdPartyDependencies = `find $selfsufficientmodulesThirdPartyDir -name "*.xcframework" | sed 's#.*/##'`;
    chomp(@selfsufficientmodulesThirdPartyDependencies);

    if(grep { $_ eq "SocketRocket.xcframework"} @selfsufficientmodulesThirdPartyDependencies){
        delete $testFws[1];
    }

    chomp(@frameworks_KAR);
#    print Dumper(@frameworks_KAR);
    foreach my $fw (@testFws){
        if((grep { $_ eq $fw } @frameworks_KAR)){
            next;
        }
        my $fw_path = 'KonyTest/'.$fw;
        my $fileRef = XCProjectEditor::makePBXFileReference($fw_path, "SOURCE_ROOT");
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        "KonyTest",
        undef,
        undef,
        ["KRelease"]
        );
        
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        "KonyTest",
        \%builSettings,
        "Embed Frameworks",
        ["KRelease"]
        );
    }
}
    
sub cleanAutomationScriptsFolder{
    my $automationFolderPath = "../AutomationScripts/";
    opendir (DIR, $automationFolderPath) or die $!;
    while (my $file = readdir(DIR)) {
        if($file ne "boot.js" & $file ne "customreporter.js" & $file ne "jasmine.js" & $file ne "require.js" & $file ne ".DS_Store" & $file ne "." & $file ne ".." & $file ne "automationInvoker.js" & $file ne "automationFramework.js" & $file ne "jasmine-feature-runner.js" & $file ne "jasminecucumber.js" & $file ne "testDefinitions.js"){
            system "rm -rf '$automationFolderPath/$file'";
        }
    }
}
    
sub resetKReleaseSchemeToOriginalStateWhenAutomationIsNotInUse{
    my ($schemeName, $node,$existingSchemedir,$projectName) = @_;
    my $path = "$existingSchemedir/$schemeName.xcscheme";
    my $parser = XML::LibXML->new();
    my $xml = $parser->parse_file($path) or die;
    my $nodeEntry = "//Scheme/BuildAction/BuildActionEntries/BuildActionEntry/BuildableReference";
    my $buildActionEntry  = $xml->findnodes($node)->[0];
    my @arrNodeEntry  = $xml->findnodes($nodeEntry);
    for my $attribute (@arrNodeEntry) {
        if ($attribute->getAttribute("BuildableName") eq "KonyTest.xctest"){
            $buildActionEntry->removeChild($attribute->parentNode);
        }
    }
    my $filename = 'KonyAutomation/KRelease.xcscheme';
    open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
    print $fh $xml;
    close $fh;
    system "cp 'KonyAutomation/KRelease.xcscheme' '$existingSchemedir/KRelease.xcscheme'";
    my %targetBuildsettings = ('OTHER_LDFLAGS' => "\-all_load \-ObjC \$\(SQL_LIBRARY\) \-lc\+\+ \$\(PROTECTION_LIBRARY\) \$\(ARXAN_OTHERFLAGS\)");
    XCProjectEditor::updateBuildSettingsForTarget($schemeName, \%targetBuildsettings);
}
    
sub modifyKReleaseSchemeForAutomation{
    my ($schemeName, $node,$existingSchemedir,$projectName) = @_;
    my $path = "$existingSchemedir/$schemeName.xcscheme";
    my $parser = XML::LibXML->new();
    my $xml = $parser->parse_file($path) or die;
    my $nodeEntry = "//Scheme/BuildAction/BuildActionEntries/BuildActionEntry";
    my @arrNodeEntry  = $xml->findnodes($nodeEntry);
    if (scalar @arrNodeEntry == 1){
        my $buildActionEntry  = $xml->findnodes($node)->[0];
        my $nodeBuildActionEntry = XML::LibXML::Element->new("BuildActionEntry");
        my %attributesForBuildActionEntry = (
        "buildForTesting"  => "YES",
        "buildForRunning" => "YES",
        "buildForProfiling"  => "YES",
        "buildForArchiving" => "YES",
        "buildForAnalyzing"  => "YES",
        );
        my @attributes = keys %attributesForBuildActionEntry;
        for my $attribute (@attributes) {
            $nodeBuildActionEntry->setAttribute($attribute, $attributesForBuildActionEntry{$attribute});
        }
        my $pBuildableReference = XML::LibXML::Element->new("BuildableReference");
        my %attributesForBuildableReference = (
        "BuildableIdentifier"  => "primary",
        "BlueprintIdentifier" => "0C85E95C1EDD610D008B319C",
        "BuildableName"  => "KonyTest.xctest",
        "BlueprintName" => "KonyTest",
        "ReferencedContainer"  => "container:$projectName",
        );
        @attributes = keys %attributesForBuildableReference;
        for my $attribute (@attributes) {
            $pBuildableReference->setAttribute($attribute, $attributesForBuildableReference{$attribute});
        }
        $nodeBuildActionEntry->addChild($pBuildableReference);
        $buildActionEntry->addChild($nodeBuildActionEntry);
        my $filename = 'KonyAutomation/KRelease.xcscheme';
        open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
        print $fh $xml;
        close $fh;
        system "cp 'KonyAutomation/KRelease.xcscheme' '$existingSchemedir/KRelease.xcscheme'";
    }
}

sub addReactNativeLibrariesToProject{
    # go to ReactNativeProjects directory inside konyappunzipdir
    my $reactNativeDir = $konyappunzipdir."/"."ReactNativeProjects";
    
    # create directory node_modules inside konyappunzipdir
    system "mkdir $konyappunzipdir/node_modules";
    
    #get the list of react project directories inside @reactDirectoriesList
    
    opendir(my $DIR, $reactNativeDir) or die "can't opendir $reactNativeDir: $!";
    chomp(my @reactDirectoriesList = readdir($DIR));
    closedir(DIR);
    
    #copy node_modules folder of each project into $konyappunzipdir/node_modules
    for my $srcDir (@reactDirectoriesList) {
        next if ($srcDir =~ /^\..*/);
        if( -d "$reactNativeDir/$srcDir" ) {
            my $srcDirnodModsDir = $reactNativeDir."/".$srcDir."/node_modules";
            #read each project node_modules files
            my @node_mod_files = ();
            if(-d $srcDirnodModsDir){
                opendir(my $DIR, $srcDirnodModsDir) || die "can't opendir $srcDir: $!";
                chomp(@node_mod_files = readdir($DIR));
                close ($DIR);
            }
            
            foreach my $file (@node_mod_files){
                next if ($file =~ /^\..*/);
                chomp $file;
                system "cp -rf $srcDirnodModsDir/$file \"$konyappunzipdir/node_modules/\" ";
            }
        }
        
        if(-d "$reactNativeDir/$srcDir/ios/"){
            #create directory for each react native project inside luavmiphone
            my $parentDir = "../";
            chdir $parentDir;
            if (-d $srcDir) {
                system "rm -rf \"$srcDir\"";
            }
            mkdir $srcDir;
            mkdir "$srcDir/$srcDir";
            
            chdir "gen/";
            
            #add Bundle to $srcDir group
            XCProjectEditor::addFileToGroupAndTargets("$srcDir", "<group>","$srcDir", \@targets);
            
            # of each react project as a group and .h and .m other project files
            addReactNativeProjectFilesToGroup("$reactNativeDir/$srcDir/ios", "$srcDir");
        }
    }
    
    #find the .xcodeproj files in $konyappunzipdir/node_modules
    
    my $mergedNodeModDir = "$konyappunzipdir/node_modules";
    my @reactnativeLibs = `find $mergedNodeModDir -name "*.xcodeproj"`;
    
    #open package.json file and put the react lib dependencies in one array
    my @reactDependenciesList = getDependenciesForReact();
    
    #create Libraries folder inside luavmiphone
    my $parentDir = "../";
    chdir $parentDir;
    if (-d "Libraries") {
        system "rm -rf \"Libraries\"";
    }
    mkdir "Libraries";
    
    chdir "gen/";
    
    #add libraries which are in @reactnativeLibs and name is in @reactDependenciesList
    for my $reactLib (@reactnativeLibs){
        chomp($reactLib);
        if ($reactLib =~ /.xcodeproj/) {
            my ( $name, $path, $suffix ) = fileparse( $reactLib, qr/\.[^.]*/ );
            
            if ( grep($path =~ /$_/, @reactDependenciesList ) )
            {
                #some default sample xcodeprojs which are in node_modules/react-native directory are to be excluded
                next if (basename($reactLib) eq "HelloWorld.xcodeproj" || basename($reactLib) eq "Ssample.xcodeproj" || basename($reactLib) eq "RCTTest.xcodeproj");
                #add the libs to VM
                XCProjectEditor::addSubProjectToProject("gen/".$reactLib, "Libraries");
                #add the lib in build phases
                XCProjectEditor::addSubProjectTargetAsBuildphaseInTargets(basename($reactLib), $name, undef, undef, \@targets);
            }
        }
    }
   
    #adding target dependencies for react native libraries...
    foreach my $targetName (@targets)
    {
       XCProjectEditor::createTargetDependency("React","React.xcodeproj",$targetName);
    }
    
    for my $reactLib (@reactnativeLibs){
        chomp($reactLib);
         next if (basename($reactLib) eq "HelloWorld.xcodeproj" || basename($reactLib) eq "Ssample.xcodeproj" || basename($reactLib) eq "RCTTest.xcodeproj" || basename($reactLib) eq "React");
        
        (my $reactlib_without_extension = basename($reactLib)) =~ s/\.[^.]+$//;
        foreach my $targetName (@targets)
        {
           XCProjectEditor::createTargetDependency($reactlib_without_extension, basename($reactLib), $targetName);
        }
    }
    #adding dependency files KonyReactNativeBridge.h and KonyReactNativeBridge.m ..
    XCProjectEditor::addFileToGroupAndTargets("KonyReactNativeBridge.h", "<group>","", \@targets);
    XCProjectEditor::addFileToGroupAndTargets("KonyReactNativeBridge.m", "<group>","", \@targets);
    
}

#send path till ios of each react native project
sub addReactNativeProjectFilesToGroup{
    my  ($filename, $srcDir) = @_;
    
    if( -d $filename){
        my @projectFiles = ();
        opendir(my $DIR, $filename) || die "can't opendir $filename: $!";
        chomp(@projectFiles = readdir($DIR));
        close ($DIR);
        
        foreach my $file (@projectFiles){
            next if $file =~ /^\.\.?$/;
            next if $file eq "Pods";
            next if $file =~ /\.framework$/i;
            if ($file eq "assets")
            {
                system "cp -rf $filename/$file \"../$srcDir/$srcDir\" ";
            }else{
                addReactNativeProjectFilesToGroup("$filename/$file", $srcDir);
            }
        }
    }
    #add the files to $groupRef except for appdelegate, lproj, plist, main and xcassests files
    elsif($filename =~ /\.h$/i || $filename =~ /\.m$/i){
        if($filename !~  m/main.m/ && $filename !~  m/AppDelegate.h/ && $filename !~  m/AppDelegate.m/ && $filename !~ m/Tests/){
            system "cp -rf $filename \"../$srcDir/\" ";
            my $filebasename = basename($filename);
            XCProjectEditor::addFileToGroupAndTargets("$filebasename", "<group>","$srcDir", \@targets);
        }
    }elsif($filename =~ /\.jsbundle$/i){
        system "cp -rf $filename \"../$srcDir/$srcDir/\" ";
    }
}

sub getDependenciesForReact{
    #read package.json
    my $filename = "$konyappunzipdir/ReactNativeProjects/package.json";
    
    my $data;
    {
        local $/ = undef;
        open my $fh, '<', $filename;
        $data = <$fh>;
        close $fh;
    }
    
    my $result = decode_json( $data );
    my @reactDependenciesList = ();
    for ( @{$result->{dependencies}} ) {
        push(@reactDependenciesList, $_);
    }
    
    return @reactDependenciesList;
}

sub installReactNativeSpecificPodlibs{
    #copy podfile from konyappunzipdir to luavmiphone
    if(-e "../podfile")
    {
        system "rm -rf \"../podfile\"";
    }
    if(-e "$konyappunzipdir/ReactNativeProjects/podfile")
    {
        system "cp $konyappunzipdir/ReactNativeProjects/podfile ../podfile";
    }
    
   
    if(-e "../VM.xcworkspace")
    {
        system "rm -rf \"../VM.xcworkspace\"";
    }
    
    if(-e "../VMAppWithKonylib.xcworkspace"){
        system "rm -rf \"../VMAppWithKonylib.xcworkspace\"";
    }
    
    if(-e "../podfile"){
        system "pod install";
    }
}


############################################
# Logic section
############################################
GetOptions("native" => \$native ,"sqlcipher" => \$sqlcipher, "loadmodules=s{1,}" => \@loadmodules, "binaryprotection" => \$libBinaryProtectionNeeded,"minify" => \$minify, "arxanprotection" => \$arxanProtectionNeeded, "watchEnabled" => \$watchEnabledOpt, "cleanJSLibs"=>\$cleanJSLibsOpt, "FriendlyWidgetDisabled"=> \$FriendlyWidgetDisabled,"dev" => \$devOpt, "nfi" => \$nfiTpOpt, "nfidebug=s" => \$nfiDebugOpt,"sqlcipherver=s" => \$sqlcipherver, "dam" => \$devAutomationMode, "appClip=s" => \$appClip );

if ($watchEnabledOpt) {
	$watchEnabled = 1;
}

if ($FriendlyWidgetDisabled) {
    $FriendlyWidgetDisabled = 1;
}

if( -e "../VMAppWithKonylib.xcodeproj" )
{
    $projectFilePath = "../VMAppWithKonylib.xcodeproj/project.pbxproj";
}
else
{
    $projectFilePath = "../VMAppWithKonylib.xcodeproj/project.pbxproj";
}

XCProjectEditor::init($projectFilePath);
XCProjectEditor::cleanProject();

# clean watch folders.
cleanKWatchOS2Folder();
cleanKWatchOS2ExtensionFolder();


sub cleanResourceDirectories(){
    # Cleaning the NLResources (global resources) directory
    makeCleanRscDir($rscHandler->{_NLResources});
    makeCleanRscDir($rscHandler->{_JSScripts});
    
    makeCleanRscDir($rscHandler->{_Themes});
    makeCleanRscDir($rscHandler->{_WorkerThreadScripts});
    
    makeCleanRscDir($rscHandler->{_FFI});
    `mkdir -p $rscHandler->{_FFI}/$CWIDirName/`;
    
    makeCleanRscDir($rscHandler->{_JSScriptsIpad});
    makeCleanRscDir($rscHandler->{_ThemesIpad});

    # Cleaning AppSource (native codegen) directory
    makeCleanRscDir($rscHandler->{_basePathForProjectAsset}.'/AppSource');

    # Cleaning NativeBinding Dir
    makeCleanRscDir($rscHandler->{_NativeBinding}.'/thirdparty');
    makeCleanRscDir($rscHandler->{_NativeBinding}.'/Libraries');
    makeCleanRscDir($rscHandler->{_NativeBinding}.'/FWKS');
    makeCleanRscDir($rscHandler->{_NativeBinding}.'/TP');
    
    makeCleanRscDir($rscHandler->{_basePathForProjectAsset}.'/generatedJSBindings_Device');
    makeCleanRscDir($rscHandler->{_basePathForProjectAsset}.'/generatedJSBindings_Simulator');
    makeCleanRscDir($rscHandler->{_basePathForProjectAsset}.'/thirdparty');

    # Cleaning web Dir
    makeCleanRscDir($rscHandler->{_Web});
    
    `mkdir -p $rscHandler->{_Web}/cordova`;
    
    `mkdir -p $rscHandler->{_Web}/localfiles`;
    
    makeCleanRscDir($rscHandler->{_LocalizedResources});
    
    # FFI directory is cleaned by this time so copy Konylogger framework into FFI folder from dummyLoggerFramework directory
    copyKonyLoggerFramework();
}

sub initializeGlobalVariables{
    @ffibindings_APIs = ();
    @ffixmlfiles = ();
    @cwiJSbinding_Classes = ();
    @cwixmlfiles = ();

    $native = 0;
    $libBinaryProtectionNeeded = 0;
    $minify = 0;
    $needsBackgroundFetchHandler = "NO";
    @loadmodules = ();
    $swiftSupport = 0;
    $arxanProtectionNeeded = 0;
    $nativecallbacksfilename ="ApplicationNativeCallbacks.m";
    $watchEnabled = 0;
    $cleanJSLibs = 0;
    $watchCompatabilityMode = 0;
    %pluginVersionsPropHash = ();
    $studioPluginVersion = 0;
    $formsPath = undef;
    @watchGeneratedFileNamesArray = ();
    @watchSwiftFileNamesArray = ();
    $webDirName = "web";
    @hash = ();
    $awsEnabled = 0;
    @selfsufficientModulesForVM = ();#list containing the frameworks to be filled by reading "selfSufficientModules" in application.properties
    $WBCGrR = "R";
    $launchImageFile = undef;
    $associatedDomains = undef;
    $pushcertificatetype = undef;
    $capabilitiesEnabled = 0;
    %projectCapabilities = ();

    %existing_frameworks_Hash = ();

    $offset = 0;
    $extractDevSpecificObj = undef;

    $enableMobileFirstAPIs = 0;
    @selfsufficientmoduleNames = ();
    $enableSelfSufficientModules = 0;
    $enableVideoWidget = 0;
    $enableJSBindings = 0;
    $enableCordova = 0;
    $cordovaGlobal = 1;
    $cordovaVersion = "-1";
    $cordovaPath = 'cordova';
    $DefaultLocale = undef;
    $isLibraryBuild = 0;
    $protectenabled = 0;
    $copyDynamicFrameworksForLibraryBuild = 0;
    @nativeBindingFrameworks = ();
    $SSMCONFIGFILE = './nativebinding/mastersConf.conf';
    $enableReactNative = 0;

    $kbfZipData = "";
    $kbfSrc = "";
    $kbfData = "";
    $konyappunzipdir = "konyappunzipped";
    $protectedkar = "NO";
    $skpath="";
    $dotOFile = "";
    $jsmode = "no";
    $appPropFile = "";

    @filesForCodegen = ();


    $systemFrameworksPath = undef;
    @globalSystemFrameworks = ();

    @appsplashmetadata = ();


    $sltk = join ("", (localtime));
    #Bugfix:72335 intializing value for initVector with random value
    @now = localtime();
    # rearrange the following to suit your stamping needs.
    # it currently generates YYYYMMDDhhmmss
    $timeStamp = sprintf("%04d%02d%02d%02d%02d%02d%02d",$now[5]+1900, $now[4]+1, $now[3],$now[2], $now[1], $now[0], $now[0]);
    $ival = $timeStamp;

    %localeDirs = ();
    %rscLocales = ();
    @globalRscFiles = ();
    @mainBundleRscFiles = ();
    @customFontFiles = ();
    $infoPlistConfigurationFilePath = $konyappunzipdir."/"."infoplist_configuration.json";

    %watchLocaleDirs = ();
    %watchRscLocales = ();
    @watchGlobalRscFiles = ();
    @watchCustomFontFiles = ();
    %watchLocaleStringsFilePathHash = ();
    %watchLocalizableStringsHashForLocales = ();

    @filesForFFI = ();
    @ffiHeaderFiles = ();
    %ffiDirectories = ();
    @cwiHeaderFiles = ();
    %cwiDirectories = ();
    @frameworksForFFI = ();
    %ffiRscLocales = ();
    %localeDirCreatedDueToFFILocale = ();
    
    %modDirectories = ();

    #application.properties file values..
    $appName = "KApplication";
    $vendor = "Kony Solutions";

    $targetDeviceFamily = 1;
    $appIconGlossyEffect = "";
    @supportedOrientations = ();

    %appMetaDataForSplash = ();
    $watchStartupForm = undef;
    $automationEnabled = 0;

    # MVC variables..
    $isMVCModeEnabled = 0;
    @startupFiles = ();
    @ipadStartupFiles = ();

    # iPhone and iPad App Icons Hash
    %iphoneIpadAppIconsImagesNameHash = ();
    # Watch App Icons Hash.
    %watchAppIconsImagesNameHash = ();
    %watchGlobalRscSrcDestHash = ();        ## Watch resources to be copied to the proper folders.

    @filetype = ();
    $CWIDirName = "CustomWidgets";
    @userWidgetJSFilesPath = ();
    $platformName = 'iphone';
    $srcDir = undef;
    @srcFiles = ();

    $xmlfilename = 'konyappunzipped/Settings.properties.xml';
    $ffigenscriptname = '';
    $appFileName = '';
    $swizzleFunction = "";
    $startupFilesArrayString = "";

    $extensionNameVar = undef;

    $appExtenionPath = "$konyappunzipdir/app-extensions";
    $enableSelfSufficientModulesExtension = 0;

    @excludedNativeBindingFrameworks= ();

    $hasDynamicFrameworks = 0;
    $universalApp = 0;
    $swiftVersion = "4.0";
    $iosdeploymenttarget = "9.0";
    $watchosdeploymenttarget = "2.0";
    # Disabling Launch screen storyboard by default
    $enableLaunchScreenStoryBoard = 1;
    $appMetaDataForSplash{"splashstoryboardenabled"} = "true";

    #decodeAppName defined in infoplist_configuration.json
    #decodeAppNameFlag false used default appName
    #decodeAppNameFlag true uses decoded appName
    $decodeAppNameFlag = 0;

    #unicodeAppNameFlag defined in infoplist_configuration.json
    #unicodeAppNameConfigurationFlag false used default appName
    #unicodeAppNameConfigurationFlag true uses unicode decimal encoded appName
    $unicodeAppNameConfigurationFlag = 0;
    $unicodeAppName = undef;
}

sub processVizArtefact{
#    print Dumper(@_);
    my $kbfZip = shift;
    
    initializeGlobalVariables();
    
    cleanResourceDirectories();
    
    @watchTargets = XCProjectEditor::getWatchTargets();

    if($sqlcipher == 1 && defined $sqlcipherver && !($sqlcipherver eq "1.0" || $sqlcipherver eq "2.0")){
        print("Aborting as the version is not correct.\n");
        exit;
    }
    elsif($sqlcipher == 1 && !(defined $sqlcipherver)){
         $sqlcipherver="1.0";
    }


    

    $systemFrameworksPath = `xcrun --sdk iphoneos --show-sdk-path`;
    if(defined($systemFrameworksPath)){
        chomp($systemFrameworksPath);
        @globalSystemFrameworks = `find $systemFrameworksPath/  -iname '*.framework' | sed 's#.*/##'`;
        chomp(@globalSystemFrameworks);
    }else{
        print "xcrun command failed!!! Adding any system frameworks in kony_frameworks.json will be done with out validation\n";
    }

    #%existing_frameworks_Hash = XCProjectEditor::getExistingFrameworkList();

    # Need XML Parser module for processing xml files (ffi, application settings)
    eval("use XML::Parser");
    if ($@) {
        print "\nXML::Parser is required for extracting..\nPlease enter root password to install...\n";
        system "sudo perl install_xml_parser.pl";
        print "\n";
    }

    if ($devOpt) {
        my $rc = eval
        {
            require extractDevSpecific;
            extractDevSpecific->import();
            1;
        };
        
        if($rc)
        {
            $dev = 1;
            $extractDevSpecificObj = new extractDevSpecific();
        }
    }

    if (defined $nfiTpOpt) {
        # new nfi requested
        # any settings will be done here
    }
    if (defined $nfiDebugOpt){
    #    print "====== $nfiDebugOpt =====\n";
    }

    # cleanJSLibs  option is provided to the user to clean all the generated JSBinding libraries
    if ($cleanJSLibsOpt) {
        $cleanJSLibs = 1;
    }



    if ($native != 0) {
        print "Extracting : Native code generation mode\n";
    }
    else {
        print "Extracting : VM mode\n";
    }

    if (not defined $kbfZip) {
        print "Usage: extract.pl <URL to KBF file | local KBF file>\n";
        exit -1;
    }

    # Retrieve the KAR/KBF file and save as "konyapp" in filesystem
    if ($kbfZip =~ /^http\:\/\//) {
        print "Retrieving  KAR/KBF...\n";
        ## Appending extra parameter format=KAR to URL
        ## This will fetch the KAR file from Latest IDE plugin
        ## with the old plugins, this fetches the KBF file
        $kbfZip = $kbfZip."&format=KAR";
        $kbfZipData = get $kbfZip;
        die 'Unable to retrieve KAR/KBF file!' unless defined $kbfZipData;
        $kbfZip = "konyapp";
        open ZIP,">$kbfZip" or die 'unable to create zipped file';
        print ZIP $kbfZipData;
        close ZIP;
    }

    # Determining KAR/KBF file type
    open FILE, "file \"$kbfZip\"|";
    chomp (@filetype = <FILE>);
    close FILE;

    # Cleaning AppDelegateExtension
    if( -e "../VMAppWithKonylib.xcodeproj" ){
        replaceStringInFile("CustomVMAppDelegate.h", "VMAppDelegate.h", "../AppDelegateExtension/KonyAppDelegateClassFactory.m");
    }else{
        replaceStringInFile("\"CustomVMAppDelegate.h\"", "<CoreComponent/VMAppDelegate.h>", "../AppDelegateExtension/KonyAppDelegateClassFactory.m");
    }
    replaceStringInFile("\\[CustomVMAppDelegate", "\\[VMAppDelegate", "../AppDelegateExtension/KonyAppDelegateClassFactory.m");

    

    # Cleaning existing lproj dirs
    print "Cleaning up existing lproj dirs...\n";
    makeCleanRscDir($rscHandler->{_LocalizedResources});
    if( (-d "ModuleDependencies") && ($rscHandler->{_context} eq "MainApp") ){
        print "Cleaning up ModuleDependencies\n";
        system "rm -rf ModuleDependencies/";
    }

    # Cleaning storyboard files
    cleanStoryboardFiles();

    # Clean ios_custom_script
    cleanCustomBuildScript();

    # Begin of processing KAR file
    if ( $filetype[0] =~ /Zip/) {
        print "KAR file retrieved\n";
        print "Extracting KAR...\n";
        system "rm -rf $konyappunzipdir";
        ((system "unzip \"$kbfZip\" -d $konyappunzipdir > /dev/null") == 0) or die "Unable to extract the KAR file";
        print "Extracting KAR completed\n";
        ensureJSFolderStructureCompatibility();

        #Get the target channel - whether the kar file is build for iphone or ipad
        if (-f $konyappunzipdir."/"."application.properties") { # populate data from properties file

            my $appPropFileLocation = $konyappunzipdir."/"."application.properties";

            if ($appPropFileLocation !~ /^$/) {
                open FILE, "<$appPropFileLocation";
                while (my $line = <FILE>) {
                    next if $line =~ /^#/;
                        if ( $line !~ /^\s*$/ ) {
                            chomp $line;
                            my ($propName, $propValue) = split(/=/, $line);

                            $propName =~ s/\s//g;
                            if ($propName eq "konyapp.o.type") { # iphone 1, ipad 2, both 3
                                if($propValue == 2){
                                    $platformName = 'ipad';
                                }
                            }
                        }
                }
                close FILE;
            }
        }
        #end of target channel deduction logic
        if($rscHandler->{_context} eq "MainApp"){
            JSON_PLIST::takeBackupIfNeedAndRestore($konyappunzipdir."/"."resources/".$platformName."/infoplist_configuration.json");
        }
        # check if directory called encryptkeys exists
        my $en = $konyappunzipdir."/"."encryptedkeys";
        if (-d "$en") {
            my $iphoneRES = $konyappunzipdir."/"."resources/iphone";
            my $ipadRES = $konyappunzipdir."/"."resources/ipad";
            my $json_ref = PlistUtil::convertPLISTFileToJSON("../Info.plist");
            $WBCGrR = $json_ref->{'WBCGrR'};
            print "Extracting",$WBCGrR,"\n";
            if(-d "$iphoneRES")
            {
                copy( "./$konyappunzipdir/encryptedkeys/esk" , "./$konyappunzipdir/resources/iphone/A4C970V89DS9W" );
                if($WBCGrR eq "R")
                {
                    copy( "./$konyappunzipdir/encryptedkeys/public_key.dat" , "./$konyappunzipdir/resources/iphone/S4C970V89DS9W" );
                }
                else
                {
                    copy( "./$konyappunzipdir/encryptedkeys/public_key.bin" , "./$konyappunzipdir/resources/iphone/S4C970V89DS9W" );
                }
            }
            if(-d "$ipadRES")
            {
                copy( "./$konyappunzipdir/encryptedkeys/esk" , "./$konyappunzipdir/resources/ipad/A4C970V89DS9W" );
                if($WBCGrR eq "R")
                {
                    copy( "./$konyappunzipdir/encryptedkeys/public_key.dat" , "./$konyappunzipdir/resources/ipad/S4C970V89DS9W" );
                }
                else
                {
                    copy( "./$konyappunzipdir/encryptedkeys/public_key.bin" , "./$konyappunzipdir/resources/ipad/S4C970V89DS9W" );
                }
            }
            copy( "./$konyappunzipdir/encryptedkeys/esk" , "./$konyappunzipdir/resources/A4C970V89DS9W" );
            copy( "./$konyappunzipdir/encryptedkeys/public_key.dat" , "./$konyappunzipdir/resources/S4C970V89DS9W" );

            $skpath = "./$konyappunzipdir/encryptedkeys/sk";
            $protectedkar = "YES";

        }
        else{

        }

        #reading infoPlistConfigFile for the key decodeAppName
        #reading infoPlistConfigFile for the key unicodeAppNameFlag
        #reading infoPlistConfigFile for the key useLaunchScreenStoryBoard
        my $infoPlistConfigFile = $konyappunzipdir."/"."resources/".$platformName."/infoplist_configuration.json";
        if (-f $infoPlistConfigFile) {
            my %infoPlistConfigPerlDict = JSON_PLIST::readJsonFileAndConvertToPerlDict($infoPlistConfigFile);
            
            if(exists($infoPlistConfigPerlDict{'unicodeAppNameFlag'})){
                $unicodeAppNameConfigurationFlag = $infoPlistConfigPerlDict{'unicodeAppNameFlag'};
            }
            
            if(exists($infoPlistConfigPerlDict{'decodeAppName'})){
                $decodeAppNameFlag = $infoPlistConfigPerlDict{'decodeAppName'};
                $unicodeAppNameConfigurationFlag = 0;
            }
            
            if(exists($infoPlistConfigPerlDict{'useLaunchScreenStoryBoard'})){
                my $appUsesLaunchStoryboard = $infoPlistConfigPerlDict{'useLaunchScreenStoryBoard'};
                if($appUsesLaunchStoryboard){
                    $enableLaunchScreenStoryBoard = 1;
                    $appMetaDataForSplash{"splashstoryboardenabled"} = "true";
                }else{
                    $enableLaunchScreenStoryBoard = 0;
                    $appMetaDataForSplash{"splashstoryboardenabled"} = "false";
                }
            }
        }

        # Looking for ios_custom_build file in resources
        my $platformCustomScripts = $konyappunzipdir."/"."resources/".$platformName."/"."ios_custom_build.pl";
        if(-f $platformCustomScripts){
            system "mv -f $platformCustomScripts ."
        }

        # Looking for perlscripts folder  in resources/raw and move to gen folder
        my $platformCustomPerlScripts = $konyappunzipdir."/"."resources/".$platformName."/"."raw/".$customPerlScriptsFolder;
        if(-d  $platformCustomPerlScripts){
            system "mv -f $platformCustomPerlScripts ."
        }
        
        # Look for konyapp.o & application.properties files
        # If konyapp.o found, ignore searching for kbf file.
        if (-f $konyappunzipdir."/"."konyapp.o") {
            $dotOFile = $konyappunzipdir."/"."konyapp.o";
        }
        if (-f $konyappunzipdir."/"."application.properties") { # populate data from properties file
            $appPropFile = $konyappunzipdir."/"."application.properties";
            processAppPropertiesFile();
            ## If watchCompatabilityMode flag is true then only watch targets and dependencies need to be enabled in the project.
            if ($watchCompatabilityMode) {
                $watchEnabled = 0;
            }
        }
        # Look for konyapp.o & pluginversions.properties files
        if (-f $konyappunzipdir."/"."konyapp.o") {
            $dotOFile = $konyappunzipdir."/"."konyapp.o";
        }
        my @cwiDirectoriesList;
        if (-f $konyappunzipdir."/"."pluginversions.properties") { # populate data from pluginversions.properties file
            my $pluginPropFile = $konyappunzipdir."/"."pluginversions.properties";
            system "cat $pluginPropFile | col -b > $pluginPropFile\.temp";
            # Process the pluginversions.propeties file
            if ($pluginPropFile !~ /^$/) {
                open FILE, "< $pluginPropFile\.temp" or die "no such file or directory:\n";
                while (my $line = <FILE>) {
                    next if $line =~ /^#/;
                    if ( $line !~ /^\s*$/ ) {
                        chomp $line;
                        my ($propName, $propValue) = split(/=/, $line);
                        chomp $propName;
                        chomp $propValue;
                        $pluginVersionsPropHash{$propName} = $propValue;
                    }
                }
                close FILE;
                my $konyStudio = $pluginVersionsPropHash{"Kony_Studio"};
                if ($konyStudio) {
                    my @versionComponents = split /\./, $konyStudio;
                    $studioPluginVersion = $versionComponents[0]+0;
                }
            }
        }
        # Look for the directories (Ex:codegen, *.lproj ...) and process
        open KonyAppUnZippedDIR, "ls $konyappunzipdir/ |" or die 'Can not open unzipped directory';
        my @inflatedDirectoriesList;
        chomp(@inflatedDirectoriesList = <KonyAppUnZippedDIR>);
        close KonyAppUnZippedDIR;
        
        #print Dumper(@inflatedDirectoriesList);
        my $resourcesDirPath;
        my @ffiDirectoriesList;
        # Based on the directory name extension, process the directory
        for $srcDir (@inflatedDirectoriesList) {
            if (-d $konyappunzipdir."/".$srcDir)  {
                #print "Unzipped dir : $srcDir ...\n";
			if($srcDir =~  /CMS.xcframework/ || $srcDir =~  /CMS.framework/){
                if($konyappunzipdir =~  /CMS.xcframework/ && $konyappunzipdir =~  /CMS.framework/)
                {
                    next;
                }
                my $CMSframeworkPath = "konyappunzipped/CMS.framework/";
                my $CMSXCframeworkPath = "konyappunzipped/CMS.xcframework/";
                my $isXCFW = 0;
                    if(-e $CMSframeworkPath){
                    system "rm -rf $rscHandler->{_KonySDK}/CMS.framework/";

                    if($copyDynamicFrameworksForLibraryBuild){
                        system "cp -rf $rscHandler->{_KonySDK}/CMS.framework ModuleDependencies/FFIDynamicFrameworks/"
                    }
                }
                if(-e $CMSXCframeworkPath){
                    system "rm -rf $rscHandler->{_KonySDK}/CMS.xcframework/";

                }
                $CMSXCframeworkPath = $konyappunzipdir."/CMS.xcframework";
                $CMSframeworkPath = $konyappunzipdir."/CMS.framework";
                if(-e $CMSXCframeworkPath){
                    # printf("\nCopying CMS XCFW\n");
                    system "cp -R $CMSXCframeworkPath $rscHandler->{_KonySDK}";
                    my $fileRef = XCProjectEditor::makePBXFileReference(basename("CMS.xcframework"), "<group>");
                    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_KonySDKGroupPath}", undef, undef, \@targets);
                    my %builSettings =  (
                    "ATTRIBUTES" => ["CodeSignOnCopy"]
                    );
                    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_KonySDKGroupPath}", \%builSettings, "Embed Frameworks", \@targets);
                    if( -e "../APMComponent/APM/APM.xcodeproj/project.pbxproj"){
                        my $filename = '../APMComponent/APM/APM.xcodeproj/project.pbxproj';
                        system "sed -i '' -e 's/lastKnownFileType = wrapper.framework; name = CMS.framework;/lastKnownFileType = wrapper.xcframework; name = CMS.xcframework;/g' ../APMComponent/APM/APM.xcodeproj/project.pbxproj";
                        system "sed -i '' -e 's/CMS.framework/CMS.xcframework/g' ../APMComponent/APM/APM.xcodeproj/project.pbxproj";
                    }
                }
                elsif(-e $CMSframeworkPath){
                    # printf("\nCopying CMS FW\n");
                    system "cp -R $CMSframeworkPath $rscHandler->{_KonySDK}";
                    my $fileRef = XCProjectEditor::makePBXFileReference(basename("CMS.framework"), "<group>");
                    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_KonySDKGroupPath}", undef, undef, \@targets);
                    my %builSettings =  (
                    "ATTRIBUTES" => ["CodeSignOnCopy"]
                    );
                    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "$rscHandler->{_KonySDKGroupPath}", \%builSettings, "Embed Frameworks", \@targets);
                    if( -e "../APMComponent/APM/APM.xcodeproj/project.pbxproj"){
                        my $filename = '../APMComponent/APM/APM.xcodeproj/project.pbxproj';
                        system "sed -i '' -e 's/lastKnownFileType = wrapper.xcframework; name = CMS.xcframework;/lastKnownFileType = wrapper.framework; name = CMS.framework;/g' $filename";
                        system "sed -i '' -e 's/CMS.xcframework/CMS.framework/g' $filename";
                    }
                }
                    print "Added CMS framework to proj.....\n";
                }
                elsif ( $srcDir =~ /resources$/ ) { # process the resources directory
                    print "Processing Directory $srcDir\n";
                    $resourcesDirPath = $konyappunzipdir."/".$srcDir;
                    # Find all the resource files
                    open ResourceDIR, "ls  $resourcesDirPath |" or die 'Can not open \"$srcDir\" directory';
                    my @resourcesList;
                    chomp(@resourcesList = <ResourceDIR>);
                    close ResourceDIR;

                    if ($studioPluginVersion < 7) {
                        processResources(\@resourcesList, $resourcesDirPath, "iphone");
                    } else {
                        for my $resourcesSubDir (@resourcesList) {
                            my $resourcesSubDirPath = $resourcesDirPath."/".$resourcesSubDir;
                            open ResourceSubDIR, "ls  $resourcesSubDirPath |" or die 'Can not open \"$resourcesSubDirPath\" directory';
                            my @resourcesArray;
                            chomp(@resourcesArray = <ResourceSubDIR>);
                            close ResourceSubDIR;

                            #Dont process the resources if watchEnabled,watchCompatabilityMode are false and subdirectory pointing to watch
                            if ($watchEnabled || $resourcesSubDir ne "watch"){
                                processResources(\@resourcesArray, $resourcesSubDirPath, $resourcesSubDir);
                            }
                        }
                    }
                }elsif ( $srcDir =~ /workerthreads$/ ) {
    #
                        my $workerThreadSourcePath =$konyappunzipdir."/workerthreads/";
                        my $workerThreadTargetPath = $rscHandler->{_WorkerThreadScripts};

                        #zip all the files in  target directory into a single zip file named workerThreads.zip
                        if (-d "$workerThreadSourcePath")
                        {
                            print "Processing workerthreads directory\n";
                            my $suorceJSScripts = $konyappunzipdir."/javascript";
                            if($universalApp){
                                $suorceJSScripts = $konyappunzipdir."/iphoneJavaScript";
                            }
                            #copy konylibrary.js to workerthreads directory
                            system "cp '$suorceJSScripts/konylibrary.js' $workerThreadSourcePath";

                            my $filename = "$suorceJSScripts/require.js";
                            if (-e $filename)
                            {
                                system "cp $filename $workerThreadSourcePath";
                            }

                            if ($dev) {
                                $extractDevSpecificObj->processWorkerThreadDirInDevModeExtraction($workerThreadSourcePath, $workerThreadTargetPath);
                            }else{

                            my $jsWorkerfiles = $workerThreadSourcePath."*.js";

                            my @fileNames =  glob $jsWorkerfiles;


                            my $ck = getCK();
                            foreach my $scriptName (@fileNames)
                            {
                                my $result = rindex($scriptName, '/');
                                my $filename = substr($scriptName,$result+1);

                                my $targetEncFile = $workerThreadTargetPath.$filename;
                                my $zipFileName = "$scriptName.zip";
                                my $sourceScript = "$scriptName";
                                if(-e $scriptName)
                                {
                                    system "zip -j -u $zipFileName $sourceScript > /dev/null";
                                    if($protectedkar eq "NO"){
                                        system "./crypt -e -k $ck -i $zipFileName -o $targetEncFile -c $ival";
                                        system "rm -f $zipFileName";
                                    }
                                }
                            }
                            if($protectedkar eq "YES"){
                                system "java -jar EncryptJS.jar 2 $skpath $workerThreadSourcePath  $workerThreadTargetPath";
                            }
                          }
                        }
                    }
                elsif ( $srcDir =~ /codegen$/ ) { # KAR contains codegen directory with generated files
                    # Process the Codegen files
                    print "Codegen directory found in KAR\n";
                    my $codegenDir = $konyappunzipdir."/".$srcDir;

                    my @codegenDirFiles = ();

                    # Process the source files.
                    open CodeGenDir, "find $codegenDir -type f -print|" or die 'Can not open codegen directory';
                    chomp(@codegenDirFiles = <CodeGenDir>);
                    close CodeGenDir;

                    for my $srcFile (@codegenDirFiles) {
                        #print "Codegen file: $srcFile\n";
                        system "mv '$srcFile' ../AppSource/";
                        push(@filesForCodegen , $srcFile);
                    }
                }
                elsif ( $srcDir =~ /webmodules$/) {
                    # Process the webmodules of the kony application, add them to project as bundled resources
                    print "Processing webmodules directory : $srcDir\n";

                    my $webmoduleDir = $konyappunzipdir."/".$srcDir;
                    my $webmoduleBundle = "$rscHandler->{_NLResources}/$srcDir".".bundle";
                    #print "Copying webmodule dir($webmoduleDir) to $webmoduleBundle\n";
                    system "cp -r $webmoduleDir $webmoduleBundle";

                    system "cp -r -f ../KonyHybrid.bundle/nativeplatform_spa.js $rscHandler->{_NLResources}/kwebmodules.bundle/appjs/nativeplatform.js";

                    push (@globalRscFiles, $srcDir.".bundle");
                }
                elsif ( $srcDir =~ /themes$/) {
                    # Process the themes of the kony application, move them to project themes directory
                    print "Processing themes directory : $srcDir\n";

                    my $sourceDir = $konyappunzipdir."/".$srcDir;
                    my $sourceDirIphone;
                    my $sourceDirIpad;
                    if ($studioPluginVersion >= 7)
                    {
                        if($targetDeviceFamily == 3){
                            if(-d $konyappunzipdir."/".$srcDir."/iphone")
                            {
                                $sourceDirIphone = $konyappunzipdir."/".$srcDir."/iphone";
                            }
                            if(-d $konyappunzipdir."/".$srcDir."/ipad")
                            {
                                $sourceDirIpad = $konyappunzipdir."/".$srcDir."/ipad";
                            }
                        }
                        else{
                            if(-d $konyappunzipdir."/".$srcDir."/iphone")
                            {
                                $sourceDir = $konyappunzipdir."/".$srcDir."/iphone";
                            }
                            elsif(-d $konyappunzipdir."/".$srcDir."/ipad")
                            {
                                $sourceDir = $konyappunzipdir."/".$srcDir."/ipad";
                            }
                        }
                    }
                    if($universalApp){
                        my $targetDir = $rscHandler->{_Themes};
                        system "cp -f $sourceDirIphone/*.theme $targetDir/";
                        $targetDir = $rscHandler->{_ThemesIpad};
                        if (-e $targetDir){
                            XCProjectEditor::addFileToGroupAndTargets("ThemesIpad", "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@jsTargets);
                            system "cp -f $sourceDirIpad/*.theme $targetDir/";
                        }
                    }
                    else{
                        my $targetDir = $rscHandler->{_Themes};
                        system "cp -f $sourceDir/*.theme $targetDir/";
                    }

                }
                elsif ( $srcDir =~ /JSScripts$/) {
                    use strict;
                    use warnings;
                    use File::Copy;

                    my $source_dir = $konyappunzipdir."/JSScripts/";
                    my $target_dir = $rscHandler->{_JSScripts};

                    opendir(my $DIR, $source_dir) || die "can't opendir $source_dir: $!";
                    my @files = readdir($DIR);

                    foreach my $t (@files)
                    {
                        if(-f "$source_dir/$t" ) {
                            #Check with -f only for files (no directories)
                            copy "$source_dir/$t", "$target_dir/$t";
                        }
                    }

                    closedir($DIR);
                }
                elsif ( $srcDir =~ /swift$/) {

                    # TODO: conditional execution based watchEnabled flag
                    my $srcDir = $konyappunzipdir."/".$srcDir."/watch";
                    my $targetDir = "../KWatchOS2\ Extension/SwiftSources";

                    # clean target directory
                    if(-d $targetDir)
                    {
                        open SwiftSourcesDir, "ls \"$targetDir\"/ |" or die 'Could not open $targetDir directory';
                        chomp(my @swiftFiles = <SwiftSourcesDir>);
                        close SwiftSourcesDir;

                        for my $swiftFile (@swiftFiles) {
                            my $swiftFilePath = $targetDir."/".$swiftFile;
                            system "rm -rf \"$swiftFilePath\"";
                        }
                    }

                    # copying swift files from src to target directory
                    if(-d $srcDir){
                        open SwiftDir, "ls \"$srcDir\"/ |" or die 'Could not open $srcDir directory';
                        chomp(my @swiftFiles = <SwiftDir>);
                        close SwiftDir;

                        for my $swiftFile (@swiftFiles) {
                            my $swiftFilePath = $srcDir."/".$swiftFile;
                            if(-f $swiftFilePath){
                                push @watchSwiftFileNamesArray, $swiftFile;
                                system "cp -f $swiftFilePath \"$targetDir\"";
                            }
                        }
                    }
                }
                elsif ( $srcDir =~ /javascript$/) {
                    if($universalApp)
                    {
                        my $ck = getCK($srcDir);
                        my $iphoneStartupDir = $konyappunzipdir."/".$srcDir."/iphone/startup";
                        my $ipadStartupDir = $konyappunzipdir."/".$srcDir."/ipad/startup";
                        my $iphoneJavaScript = $konyappunzipdir."/iphoneJavaScript";
                        my $ipadJavaScript = $konyappunzipdir."/ipadJavaScript";
                        my $commonDir = $konyappunzipdir."/".$srcDir."/common";
                        if(-e $commonDir)
                        {
                            system "cp -f $commonDir/*.js $iphoneStartupDir";
                            system "cp -f $commonDir/*.js $ipadStartupDir";
                            my $watchDir = $konyappunzipdir."/".$srcDir."/watch";
                            if (-e $watchDir){
                                system "cp -f $commonDir/*.js $watchDir/";
                            }
                        }
                        my $iphoneDir = $konyappunzipdir."/".$srcDir."/iphone";
                        system "mkdir $iphoneJavaScript";
                        system "cp -f $iphoneDir/*.js $iphoneJavaScript/";
                        
                        my $ipadDir = $konyappunzipdir."/".$srcDir."/ipad";
                        system "mkdir $ipadJavaScript";
                        system "cp -f $ipadDir/*.js $ipadJavaScript/";
                        
                        makeCleanRscDir($rscHandler->{_UserWidgetJSScripts});
                        makeCleanRscDir($rscHandler->{_UserWidgetJSScriptsIpad});
                        
                        XCProjectEditor::addFileToGroupAndTargets("UserWidgetJSScriptsIpad", "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@jsTargets);
                        
                        #Coping packages ... into UserWidgetJSScripts
                        UniversalApp::copyMVCPackagesintoUserWidgetJSScripts($rscHandler->{_UserWidgetJSScriptsIpad}, $ipadDir);
                        UniversalApp::copyMVCPackagesintoUserWidgetJSScripts($rscHandler->{_UserWidgetJSScripts}, $iphoneDir);
                        
                        if ($awsEnabled)
                        {
                            # Cloudsdks folder and aws-sdk.js file name are constant.
                           my $sourceDirJs = $konyappunzipdir."/cloudsdks/";
                            if(-e $sourceDirJs) {
                                ## 000 is for require.js and 001 is for konymvc_sdk.js
                                system "mv -f $sourceDirJs/aws-sdk.js $sourceDirJs/002-aws-sdk.js";
                                system "cp -f $sourceDirJs/*.js  $iphoneStartupDir/";
                                system "cp -f $sourceDirJs/*.js  $ipadStartupDir/";
                            }
                        }
                        ## Also copy KonyMVCFramework files to konyappunzipdir/startup..
                        my $KonyMVCFrameworkDir = "../KonyMVCFramework";
                        system "cp -f $KonyMVCFrameworkDir/*.js $iphoneStartupDir/";
                        system "cp -f $KonyMVCFrameworkDir/*.js $ipadStartupDir/";
                        
                        #saving the list of js files which need to be loaded at app startup..
                        
                        @startupFiles = extractModule::getStartupFileList($iphoneStartupDir,@startupFiles);
                        @ipadStartupFiles =  extractModule::getStartupFileList($ipadStartupDir,@ipadStartupFiles);
                        
                        extractModule::copyDirectory($iphoneStartupDir,$iphoneJavaScript);
                        extractModule::copyDirectory($ipadStartupDir,$ipadJavaScript);
                                    
                        
                        my $functionalModulefilename = UniversalApp::isFunctionModuleXMLExist($konyappunzipdir);
                        
                        if (-e  $functionalModulefilename) {
                            
                            UniversalApp::loadFunctionModules($iphoneJavaScript."/", "$rscHandler->{_JSScripts}/", $functionalModulefilename, $ck, $protectedkar, $ival, $skpath,$minify, "iphoneJavaScript");
                            
                            XCProjectEditor::addFileToGroupAndTargets("JSScriptsIpad", "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@jsTargets);
                            
                            UniversalApp::loadFunctionModules($ipadJavaScript."/", "$rscHandler->{_JSScriptsIpad}/", $functionalModulefilename, $ck, $protectedkar, $ival, $skpath,$minify, "ipadJavaScript");
                        }
                        else{
                            if ($dev) {
                                my $watchTargetDir = "../KWatch\ WatchKit\ Extension/KWatchAppJSSources";
                                my $videoJSFilePath = "../preBundledSSM/video/konyVideoWidget.js";
                                UniversalApp::universalDevMode($iphoneJavaScript, "$rscHandler->{_JSScripts}/", $watchTargetDir, $videoJSFilePath, \$extractDevSpecificObj, $watchEnabled, $enableVideoWidget);
                                XCProjectEditor::addFileToGroupAndTargets("JSScriptsIpad", "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@jsTargets);
                                UniversalApp::universalDevMode($ipadJavaScript, "$rscHandler->{_JSScriptsIpad}/", $watchTargetDir, $videoJSFilePath, \$extractDevSpecificObj, $watchEnabled, $enableVideoWidget);
                            }
                            else{
                                UniversalApp::universalNonDevMode($ck, $iphoneStartupDir, "$rscHandler->{_JSScripts}/", "K4C9S0V89DS9W", $iphoneJavaScript, \@startupFiles,$protectedkar, $ival, $skpath);
                                

                                XCProjectEditor::addFileToGroupAndTargets("JSScriptsIpad", "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@jsTargets);
                                
                                UniversalApp::universalNonDevMode($ck, $ipadStartupDir, "$rscHandler->{_JSScriptsIpad}/", "K4C9S0V89DS9D", $ipadJavaScript, \@ipadStartupFiles, $protectedkar, $ival, $skpath);
                                
                                UniversalApp::encriptUserScrptWidgets($ck, $protectedkar, $ival, $skpath,$rscHandler->{_UserWidgetJSScripts},$rscHandler->{_UserWidgetJSScriptsIpad});
                            }
                        }
                    }
                    else{
                    my $ck = getCK($srcDir);
                    my $targetDirJS;
                    ## Copying the js file from '../javascript/common' to 's../javascript/watch'
                    my $sourceDirJs = $konyappunzipdir."/".$srcDir."/common";
                    if(-e $sourceDirJs)
                    {
                        $targetDirJS = $konyappunzipdir."/".$srcDir."/iphone/startup";

                        if(-d $targetDirJS) {
                            ## This is an iphone application..
                        }else {
                            $targetDirJS = $konyappunzipdir."/".$srcDir."/ipad/startup";
                        }

                        system "cp -f $sourceDirJs/*.js $targetDirJS";

                        ## Check Watch directory is present, then Copying the js file from and '../javascript/common' to '../javascript/watch'
                        $targetDirJS = $konyappunzipdir."/".$srcDir."/watch";
                        if (-e $targetDirJS){
                            system "cp -f $sourceDirJs/*.js $targetDirJS/";
                        }
                    }

                    ## Copying the js file from '../javascript/iphone' to 's../javascript/'
                    $sourceDirJs = $konyappunzipdir."/".$srcDir."/iphone";
                    if(-e $sourceDirJs)
                    {
                        my $targetDirJS = $konyappunzipdir."/".$srcDir;
                        system "cp -f $sourceDirJs/*.js $targetDirJS/";
                    }

                    $sourceDirJs = $konyappunzipdir."/".$srcDir."/ipad";
                    if(-e $sourceDirJs)
                    {
                        my $targetDirJS = $konyappunzipdir."/".$srcDir;
                        system "cp -f $sourceDirJs/*.js $targetDirJS/";
                    }

                    ## Copying User Widgets JS Scripts to UserWidgetJSScripts folder..
                    $sourceDirJs = $konyappunzipdir."/".$srcDir."/iphone";

                    if(-d $sourceDirJs) {
                        ## This is an iphone application..
                    }else {
                        $sourceDirJs = $konyappunzipdir."/".$srcDir."/ipad";
                    }

                    ## UserWidgetJSScripts directory is created irrespective of availability of User Widget files..
                    makeCleanRscDir($rscHandler->{_UserWidgetJSScripts});
                    makeCleanRscDir($rscHandler->{_UserWidgetJSScriptsIpad});
                        
                    if(-d $sourceDirJs)
                    {
                        $targetDirJS = $rscHandler->{_UserWidgetJSScripts};
                        open UserWidgetJSScriptsSourceDir, "ls $sourceDirJs/ |" or die 'Can not open $sourceDirJs directory';
                        my @iPhoneiPadJSScriptsList;
                        chomp(@iPhoneiPadJSScriptsList = <UserWidgetJSScriptsSourceDir>);
                        close UserWidgetJSScriptsSourceDir;

                        for my $iPhoneiPadJSScript (@iPhoneiPadJSScriptsList) {
                            my $iPhoneiPadJSScriptPath = $sourceDirJs."/".$iPhoneiPadJSScript;
                            if (-d $iPhoneiPadJSScriptPath && index("startup", $iPhoneiPadJSScript) == -1) {
                                ## copy all directories in $sourceDirJs except startup directory to $targetDirJS..
                                my $targetDirJS_ = $targetDirJS."/".$iPhoneiPadJSScript;
                                system "cp -r $iPhoneiPadJSScriptPath \"$targetDirJS_\"";
                            }
                        }
                    }

                      ## Copying AWS sdk  script
                    if ($awsEnabled)
                    {
                        # Cloudsdks folder and aws-sdk.js file name are constant.
                        $sourceDirJs = $konyappunzipdir."/cloudsdks/";
                        if(-e $sourceDirJs) {
                            $targetDirJS = $konyappunzipdir."/startup";
                            system "mkdir $targetDirJS" unless( -e $targetDirJS);
                            ## 000 is for require.js and 001 is for konymvc_sdk.js
                            system "mv -f $sourceDirJs/aws-sdk.js $sourceDirJs/002-aws-sdk.js";
                            system "cp -f $sourceDirJs/*.js  $targetDirJS/";
                        }
                    }


                    ## Copying startup scripts

                    $sourceDirJs = $konyappunzipdir."/".$srcDir."/iphone/startup";

                    if(-d $sourceDirJs) {
                        ## This is an iphone application..
                    }else {
                        $sourceDirJs = $konyappunzipdir."/".$srcDir."/ipad/startup";
                    }

                    if(-d $sourceDirJs)
                    {
                        $targetDirJS = $konyappunzipdir."/startup";
                        system "mkdir $targetDirJS" unless( -e $targetDirJS);
                        
                        extractModule::copyDirectory($sourceDirJs,$targetDirJS);
                        
#						system "find  $sourceDirJs -name '*.js' | xargs -I % cp % $targetDirJS";
                        
                        ## Also copy KonyMVCFramework files to konyappunzipdir/startup..
                        my $KonyMVCFrameworkDir = "../KonyMVCFramework";
                        system "cp -f $KonyMVCFrameworkDir/*.js $targetDirJS/";

                        #saving the list of js files which need to be loaded at app startup..
                        @startupFiles = extractModule::getStartupFileList($targetDirJS,@startupFiles);
                        
                    }

                    ## now copy all the js files of $konyappunzipdir."/startup"  to $konyappunzipdir."/javascript";
                    my $startupDirectory = $konyappunzipdir."/startup";
                    my $javascriptDirectory = $konyappunzipdir."/".$srcDir;
                    
                    extractModule::copyDirectory($startupDirectory,$javascriptDirectory);
                    
                    ## !end : Copying startup scripts

                    #Removing common,iphone,ipad,watch folder from ../javscript directory.
                    my $commonSourceDirJs = $konyappunzipdir."/".$srcDir."/common";
                    my $iphoneSourceDirJs = $konyappunzipdir."/".$srcDir."/iphone";
                    my $ipadSourceDirJs = $konyappunzipdir."/".$srcDir."/ipad";

                    system "rm -rf \"$commonSourceDirJs\"";
                    system "rm -rf \"$iphoneSourceDirJs\"";
                    system "rm -rf \"$ipadSourceDirJs\"";

                    my $sourceDir = $konyappunzipdir."/".$srcDir."/";
                        my $targetDir = $rscHandler->{_JSScripts}."/";
                    my $resourceDir = "../resources/";

                        #Check if app is configured to run in functionalModule mode by checking for presence of functionalModules.xml
                        #at projectdir/resources (5.0) and projectdir/functionalModule in 5.6.2 onwards.
                        # if found then
                        # 1. Create a zip file for each functional module
                        # 2. Encrypt it
                        # 3. Copy it to scripts directory i.e. ../JSScripts/

                        my @possibleFilenamesofFunctionalModuleXML = ('/resources/functionalModule.xml','/resources/functionalModules.xml','/functionalmodules/functionalModule.xml','/functionalmodules/functionalModules.xml');
                        my $functionalModulefilename ;
                        for my $xmlFilePath  (@possibleFilenamesofFunctionalModuleXML){
                            $functionalModulefilename = $konyappunzipdir.$xmlFilePath;
                            if (-e  $functionalModulefilename) {
                                last;
                            }
                        }

                        if (-e  $functionalModulefilename) {

                            print "Functional module mode is enabled for app\n";

                            validateFunctionalModuleXML($functionalModulefilename);

                            #copy the module definition xml into scripts directory (can be relocated to any other logical directory in future)
                            system "rm -f $targetDir/functionalModule.xml"; #cleanup
                            system "cp $functionalModulefilename $targetDir";

                            #create individual zip for konylibrary.js,require.js and 001konymvc_sdk.js
                            my @loadOnStartupScripts = qw(require.js konylibrary.js 001konymvc_sdk.js);

                            foreach my $scriptName (@loadOnStartupScripts) {
                                my $zipFileName = "$sourceDir$scriptName.zip";
                                my $sourceScript = "$sourceDir$scriptName";
                                my $targetEncFile = "$targetDir$scriptName";
                                if(-e "$sourceDir$scriptName"){
                                    system "zip -j -u $zipFileName $sourceScript > /dev/null";
                                    if($protectedkar eq "NO"){
                                        system "./crypt -e -k $ck -i $zipFileName -o $targetEncFile -c $ival";
                                    }else{
                                        system "java -jar EncryptJS.jar 2 $skpath $zipFileName  $targetEncFile";
                                    }

                                    system "rm -f $sourceDir$scriptName.zip";
                                }
                            }
                            #For each module configured in xml file, create an encrypted zip with all files in that module
                            use strict;
                            use warnings;
                            use XML::Parser;
                            use XML::Parser::EasyTree;
                            use Data::Dumper;
                            $XML::Parser::EasyTree::Noempty=1;
                            $XML::Parser::EasyTree::Noempty=1; #Adding this extra line to suppress warnings.
                            my $p=new XML::Parser(Style=>'EasyTree',NoLWP=>1);

                            my $xmldatatree=$p->parsefile($functionalModulefilename);

                            #print Dumper($xmldatatree);

                            if ($$xmldatatree[0]->{'name'} eq "functionalModules" ){
                                my $functionalModuleList = $$xmldatatree[0]->{'content'};

                                for my $functionalModule (@{$functionalModuleList}){  #for each element <functionalModule>

                                    my $fnModuleName = $functionalModule->{'attrib'}->{'name'};

                                    print "Processing module: " ,$fnModuleName,"\n";

                                    my @filesInFormElement = ();
                                    my @filesInViewElement = ();
                                    my @filesInjsModulesElement = ();

                                    my $subElementList = $functionalModule->{'content'};

                                    for my $subElement (@{$subElementList}){
                                        my @files = ();
                                        if( $subElement->{'name'} eq 'jsModules' ){
                                            @files = filesInElement( $subElement ,$sourceDir);
                                            if( @files ) {
                                            #check if file exist. Warn user and die if not present
                                            my @verifiedFileList = getVerifiedFileList(\@files,"true");
                                                if(@verifiedFileList){
                                                    push( @filesInjsModulesElement,@verifiedFileList );
                                                }
                                            }
                                        }elsif( $subElement->{'name'} eq 'forms'){
                                            @files = filesInElement( $subElement ,$sourceDir);
                                            if( @files) {
                                            #check if file exist. Warn user if file not present
                                                my @verifiedFileList = getVerifiedFileList(\@files,"false");
                                                if(@verifiedFileList){
                                                    push(@filesInFormElement,@verifiedFileList);
                                                }
                                            }
                                        }elsif( $subElement->{'name'} eq 'views'){
                                            @files = filesInElement($subElement,$sourceDir);
                                            if( @files ) {
                                            #check if file exist. Warn user if file not present
                                            my @verifiedFileList = getVerifiedFileList(\@files,"false");
                                                if(@verifiedFileList){
                                                    push(@filesInViewElement,@verifiedFileList);
                                                }
                                            }
                                        }

                                        #if both <forms> and <views> are present , discard forms ( forms element is for backward compatibility)
                                        if(@filesInFormElement && @filesInViewElement){
                                            @filesInFormElement = ();
                                        }
                                    }

                                    my @filesToZip = ();
                                    push(@filesToZip,@filesInjsModulesElement);
                                    push(@filesToZip,@filesInFormElement);
                                    push(@filesToZip,@filesInViewElement);



                                    my $srcFileZip = "$sourceDir$fnModuleName.zip";
                                    my $targetEncFile = $targetDir."$fnModuleName.js";

                                    if ($minify != 0) {
                                        #Minify the javascript files
                                        print "Minifying files\n";
                                        minifyFiles(\@filesToZip);
                                    }

                                    #Create a zip file for each module containing the corresponding js files
                                    system "zip -j -u $sourceDir$fnModuleName.zip @filesToZip > /dev/null";

                                    #now encrypt it
                                    #print "Encrypting file: \nSource is : $srcFileZip, \nTarget is $targetEncFile\n";

                                    if($protectedkar eq "NO"){
                                       system "./crypt -e -k $ck -i $srcFileZip -o $targetEncFile -c $ival";
                                    }else{
                                        system "java -jar EncryptJS.jar 2 $skpath $srcFileZip  $targetEncFile";
                                    }
                                    system "rm -f $srcFileZip";
                                }
                            }
                        }



                    else {

                        if ($dev) {
                            my $sourceDir = $konyappunzipdir."/".$srcDir."/";
                            my $targetDir = $rscHandler->{_JSScripts}."/";
                            my $watchTargetDir = "../KWatch\ WatchKit\ Extension/KWatchAppJSSources";
                            my $videoJSFilePath = "../preBundledSSM/video/konyVideoWidget.js";
                            $extractDevSpecificObj->processJavascriptDirInDevModeExtraction($sourceDir, $targetDir, $watchTargetDir, $watchEnabled, $videoJSFilePath, $enableVideoWidget);
                        }else{
                            #Encrypting all the startup js files together..
                            #To ensure a single decrypt suffices for loading of all startup scripts..
                            #Hence decreasing the app launch time..
                            
                            my $startupDirectory = $konyappunzipdir."/startup/";
                            my $startupJSfiles = $startupDirectory."*.js";
                            
                            if($extractModule::isCompositeApp){
                            		my $cwd = abs_path();
                            		print $cwd;
                            		chdir $startupDirectory;
                            		system "zip -u -r app_script.zip *";
									system "mv -f app_script.zip '$cwd'";
									chdir $cwd;
                            }
                            else{
                            	system "zip -j -u app_script.zip $startupJSfiles > /dev/null";
                            }
                            
                            my $srcFile = "app_script.zip";
                            my $targetDir = $rscHandler->{_JSScripts}."/";
                            my $targetEncFile = $targetDir."K4C9S0V89DS9W";
                            if($protectedkar eq "NO"){
                                system "./crypt -e -k $ck -i $srcFile -o $targetEncFile -c $ival";
                            }else{
                                system "java -jar EncryptJS.jar 2 $skpath $srcFile  $targetEncFile";
                            }
                            system "rm -f app_script.zip";
                            
                            
                            #Encrypting all the require format js files separately..
                            #As they will be loaded on demand one by one..
                            
                            #This dict is used to check if a js file in javascript directory is a startup js file..
                            my %startupFilesDict = map { $_ => 1 } @startupFiles;
                            
                            my $jsfiles = $sourceDir."*.js";
                            my @jsfilesFullPath = glob $jsfiles;
                            
                            if($extractModule::isCompositeApp){
                        		$jsfiles = `find $sourceDir -name "*.js"`;
                        		@jsfilesFullPath = sort split('\n', $jsfiles);
                            }
                            
                            foreach my $filename (@jsfilesFullPath) {
                                my $result = rindex($filename, '/');
                                my $scriptName = substr($filename,$result+1);
                                if(!exists($startupFilesDict{$scriptName})) {
                                    my $zipFileName = "$sourceDir$scriptName.zip";
                                    my $sourceScript = $filename;
                                    my $targetEncFile = "$targetDir$scriptName";
                                    if(-e $sourceScript){
                                        system "zip -j -u $zipFileName $sourceScript > /dev/null";
                                        if($protectedkar eq "NO"){
                                            system "./crypt -e -k $ck -i $zipFileName -o $targetEncFile -c $ival";
                                            system "rm -f $sourceDir$scriptName.zip";
                                        }
                                    }
                                }
                            }
                            
                            ## Get the path of all the User Widget files..
                            my $userWidgetJSScriptsDir = $rscHandler->{_UserWidgetJSScripts};
                            getUserWidgetFilesPath($userWidgetJSScriptsDir);
                            
                            ## Encrypt all the js scripts of the user widgets..
                            foreach my $filename (@userWidgetJSFilesPath) {
                                my $result = rindex($filename, '/');
                                my $scriptName = substr($filename,$result+1);
                                
                                my $zipFileName = "$filename.zip";
                                my $sourceScript = $filename;
                                my $targetEncFile = "$filename";
                                if (-e $sourceScript) {
                                    system "zip -j -u $zipFileName $sourceScript > /dev/null";
                                    if($protectedkar eq "NO") {
                                        system "./crypt -e -k $ck -i $zipFileName -o $targetEncFile -c $ival";
                                        system "rm -f $zipFileName";
                                    }
                                }
                            }
                            if($protectedkar eq "YES") {
                                system "java -jar EncryptJS.jar 2 $skpath $sourceDir $targetDir";
                                system "java -jar EncryptJS.jar 2 $skpath $userWidgetJSScriptsDir";
                            }
                         }
                       }
                    }
                }
                elsif ($srcDir =~ /selfsufficientmodules/) {
                    print "Processing SelfSufficientModules \n";
                    extractSelfSufficientModules($srcDir);

                }
                elsif ( $srcDir =~ /customwidgets$/) {
                    # Process the customwidgets files
                    print "Processing customwidgets directory : $srcDir\n";
                    my $customWidgetsDir = $konyappunzipdir."/".$srcDir;

                    my @customWidgetsDirFiles = ();

                    # Process the source files.
                    open CustomWidgetsDir, "find $customWidgetsDir -type f -print|" or die 'Can not open customwidgets directory';
                    chomp(@customWidgetsDirFiles = <CustomWidgetsDir>);
                    close CustomWidgetsDir;

                    for my $srcFile (@customWidgetsDirFiles) {
                        #print "customwidget file: $srcFile\n";
                        if ($srcFile =~ /\.zip$/) {
                            my $unzipDirName = basename $srcFile;
                            print "Extracting $unzipDirName into ";
                            $unzipDirName =~ s/\.zip//g;
                            print "$unzipDirName\n";
                            ((system "unzip '$srcFile' -d $konyappunzipdir/$srcDir/$unzipDirName > /dev/null") <= 2) or die "Unable to extract the library zip $srcFile";
                            system "rm -rf '$srcFile'";
                            push(@cwiDirectoriesList,$srcDir."/".$unzipDirName);
                            print "Extracting $unzipDirName completed\n";
                        }
                        elsif ($srcFile =~ /xml$/) { # Process the FFI xml file
                            #print "xml file *****$srcFile*****\n";
                            push(@cwixmlfiles , $srcFile);
                        }
                    }
                }
                elsif ($srcDir =~ /forms$/) {
                    $formsPath = $konyappunzipdir."/".$srcDir;
                }
                elsif ($srcDir =~ /LaunchScreenStoryboard$/) {
                    #LaunchScreenStoryboard directory packaged
                }
                elsif ($srcDir =~ /KonyWidgets$/) {
				    #KonyWidgets directory packaged
			    }
                else {
                    print "Unidentified directory found in KAR : $srcDir => ignoring\n";
                }
                system "rm -rf '$srcDir'";
            }
            else {
                # Processing the KAR
                # 1. Find the kbf file
                # 2. Find the resource files for backward compatibility
                # 3. FFI header files and generated bindings source files
                # 2. Extract the zip files (Libraries)
                # 3. Process the metainfo (txt) files for bindings

                my $srcFile = $srcDir;
                #print ("Processing $srcFile file\n");
                # KBF file, then process in the next step
                if ( $srcFile =~ /\.kbf$/ ) {
                    #ignore KBF file if konyapp.o file already found
                    if ( $dotOFile =~ /^$/ ) {
                        $kbfSrc = "$konyappunzipdir/$srcFile";
                        print "KBF file found : $kbfSrc\n";
                    }
                }
                elsif ($srcFile =~ /\.(jpg|jpeg|gif|png|xib|wav|mov|mp3|mp4|cer|m4v|avi|3gp|p12|pkcs12)$/) {
                    #print "Resource found : $konyappunzipdir/$srcFile\n";
                    system "mv '$konyappunzipdir/$srcFile' $rscHandler->{_NLResources}";
                    push(@globalRscFiles, basename($srcFile));
                }
                elsif ($srcFile =~ /^web\.zip$/) {

                    #print "Extracting $srcFile into $webDirName\n";

                    ((system "unzip '$konyappunzipdir/$srcFile' -d $konyappunzipdir/$webDirName > /dev/null") <= 2) or die "Unable to extract the zip $srcFile";
                    system "rm -rf '$konyappunzipdir/$srcFile'";
                    print "Extracting $srcFile completed\n";

                    system "mv $konyappunzipdir/$webDirName/* $rscHandler->{_Web}/";

                    if($enableCordova == 1) {
                        system "perl cordova_app_gen.pl --AppName=\"$appName\" $appPropFile $cordovaGlobal $cordovaVersion $cordovaPath";
                    }

                }

                elsif ($srcFile =~ /\.zip$/) {
                    my $unzipDirName = $srcFile;
                    $unzipDirName =~ s/\.zip//g;
                    print "Extracting $srcFile into $unzipDirName\n";
                    ((system "unzip '$konyappunzipdir/$srcFile' -d $konyappunzipdir/$unzipDirName > /dev/null") <= 2) or die "Unable to extract the library zip $srcFile";
                    system "rm -rf '$konyappunzipdir/$srcFile'";
                    push(@ffiDirectoriesList,$unzipDirName);
                    checkIfSwiftSupportIsRequired($unzipDirName);
                    print "Extracting $srcFile completed\n";
                }
                elsif ($srcFile =~ /application.properties/) { # Kony Application configuration file
                    print "application properties file found in KAR...\n";
                }
                elsif ($srcFile =~ /konyapp.o/) { # Process the application object file
                    print "konyapp object file found in KAR...\n";
                }
                elsif ($srcFile =~ /xml$/ && $srcFile !~ /Settings.properties.xml/) { # Process the FFI xml file
                    #print "xml file *****$srcFile*****\n";
                    push(@ffixmlfiles , $srcFile);
                }
                elsif ($srcFile =~ /Settings.properties.xml/) {
                    print "App/Platform Configuration file found in KAR...\n";
                }
                else {
                    #print "==> Unexpected file $srcFile found in KAR... (Ignoring)\n";
                }
            }
        }

    #	for my $ffiDirectory (@ffiDirectoriesList) {
    #		my %ffiDirectoryHash = makeDirectoryHash($konyappunzipdir, $ffiDirectory);
    #		#print Dumper (\%ffiDirectoryHash);
    #		$ffiDirectories{$ffiDirectory} = $ffiDirectoryHash{$ffiDirectory};
    #		system "mv $konyappunzipdir/$ffiDirectory ../FFI/";
    #	}

        for my $cwiDirectory (@cwiDirectoriesList) {
            print "Processing $cwiDirectory ...\n";
            my $customwidgetsDirName = dirname $cwiDirectory;
            my %cwiDirectoryHash = makeDirectoryHash($konyappunzipdir."/".$customwidgetsDirName, basename $cwiDirectory);
            #print Dumper (\%cwiDirectoryHash);
            $ffiDirectories{$CWIDirName}{basename $cwiDirectory} = $cwiDirectoryHash{basename $cwiDirectory};
            #print Dumper (\%ffiDirectories);
            system "mv $konyappunzipdir/$cwiDirectory $rscHandler->{_FFI}/$CWIDirName/";
        }


        #print Dumper(\%ffiDirectories);
    } # End of processing KAR file
    # If the file is of type data (KBF), then process in next step
    elsif ( $filetype[0] =~ /data/) {
        print "KBF file retrieved\n";
        $kbfSrc = $kbfZip;
    }
    # Unsupported file type, exit
    else {
        if ($native == 0) { #VM mode, no kbf file found, exit
            die 'Not a KAR/KBF file!';
        }
        else {
            print "KBF not present, continuing in native code generation mode";
        }
    }

    ## Get the storyboard files and code behind generated by the watchAppHandler.
    if ($watchEnabled)
    {
        my $watchAppHandler = new WatchAppHandler();

        # Pass the watch theme info to watchAppHandler.
        $watchAppHandler->setSkinsTheme("$konyappunzipdir/themes/watch/default.theme");

        # Pass the watch startupForm info to watchAppHandler.
        if (defined $watchStartupForm) {
            $watchAppHandler->setWatchStartupForm($watchStartupForm);
        }

        # Update the Contents.json file for Watch App Icons.
        $watchAppHandler->updateContentsJSONForAppIcons(\%watchAppIconsImagesNameHash);

        ## Copy the default watch kit app storyboard file to the watch kit target..
        my $srcFile = "DefaultWatchInterface.storyboard";
        my $trgFile = "../KWatchOS2/Base.lproj/Interface.storyboard";
        if(-f $srcFile) {
            system "cp -f $srcFile \"$trgFile\"";
        }
        # Clean AppIcon.appiconset directory.
        my $appIconDirPath = "../KWatchOS2/Assets.xcassets/AppIcon.appiconset";
        open WatchAppIconDirPath, "ls \"$appIconDirPath\"/ |" or die 'Can not open AppIcon directory';
        chomp(my @imgFiles = <WatchAppIconDirPath>);
        close WatchAppIconDirPath;

        for my $imgFile (@imgFiles) {
            if ($imgFile ne "Contents.json") {
                my $imgFilePath = "../KWatchOS2/Assets.xcassets/AppIcon.appiconset/$imgFile";
                system "rm -rf \"$imgFilePath\"";
            }
        }

        # Copy the required images to AppIcon.appiconset directory.
        while ( my ($appIconKey, $appIconImgName) = each %watchAppIconsImagesNameHash ) {
            if	(defined $appIconImgName and (length($appIconImgName) > 0))
            {
                my $appIconImgSrcPath = $konyappunzipdir."/resources/watch/".$appIconImgName;
                my $appIconImgTargetPath = "../KWatchOS2/Assets.xcassets/AppIcon.appiconset/$appIconImgName";
                system "cp -f \"$appIconImgSrcPath\" \"$appIconImgTargetPath\"";
            }
        }
        if (defined $formsPath) {
            open FormsDir, "ls $formsPath/ |" or die 'Can not open forms directory';
            chomp(my @formDirectoryList = <FormsDir>);
            close FormsDir;

            for my $formDir (@formDirectoryList) {
                if ($formDir =~ /watch$/) {
                    my $watchFormsPath = $formsPath."/".$formDir;
                    my @tempWatchGeneratedFileNamesArray;
                    push @tempWatchGeneratedFileNamesArray, $watchAppHandler->getWatchAppFilesUsingJSONFiles($watchFormsPath);

                    # clean previously generated files in sources directory
                    my $appSourcesDirPath = "../KWatchOS2\ Extension/Sources";
                    open AppSourcesDir, "ls \"$appSourcesDirPath\"/ |" or die 'Can not open Sources directory';
                    chomp(my @appSourcesFiles = <AppSourcesDir>);
                    close AppSourcesDir;

                    # copy these generated files from WatchBindings/WatchGeneratedSources to KWatchOS2 Extension/Sources.
                    for my $fileName (@tempWatchGeneratedFileNamesArray) {
                        my $srcFile = "WatchBindings/WatchGeneratedSources/$fileName";
                        my $trgFile = "../KWatchOS2\ Extension/Sources/$fileName";
                        if ($fileName eq "Interface.storyboard") {
                            $trgFile = "../KWatchOS2/Base.lproj/$fileName";
                        } else {
                            push @watchGeneratedFileNamesArray, $fileName;
                        }
                        if(-f $srcFile) {
                            system "cp -f $srcFile \"$trgFile\"";
                        }
                    }

                    # add required header imports to ObjCBridgingHeader
                    $watchAppHandler->addHeaderImportsToObjCBridgingHeader(@watchGeneratedFileNamesArray);
                }
            }
        }

        # Create Interface.strings file for static internationalisation.
        createAndAddInterfaceDotStringsFile($watchAppHandler);
    }
    else{
        if($rscHandler->{_context} eq "MainApp"){
            # WatchEnabled Mode is false
            # Check if App is in WatchCompatablityMode then reset to default storyboard only
            # Else also with reseting the storyBoard, clean files under AppIcon.appiconset  and  Image.xassets directory.
            if (!$watchCompatabilityMode){

                ## Copy the default watch kit app storyboard file to the watch kit target..
                my $srcFile = "DefaultWatchInterface.storyboard";
                my $trgFile = "../KWatchOS2/Base.lproj/Interface.storyboard";
                if(-f $srcFile) {
                    system "cp -f $srcFile \"$trgFile\"";
                }


                # Clean AppIcon.appiconset directory.
                my $appIconDirPath = "../KWatchOS2/Assets.xcassets/AppIcon.appiconset";
                open AppIconDir, "ls \"$appIconDirPath\"/ |" or die 'Can not open AppIcon directory';
                chomp(my @imgFiles = <AppIconDir>);
                close AppIconDir;
                for my $imgFile (@imgFiles) {
                    if ($imgFile ne "Contents.json") {
                        my $imgFilePath = "../KWatchOS2/Assets.xcassets/AppIcon.appiconset/$imgFile";
                        system "rm -rf \"$imgFilePath\"";
                    }
                }


                # Clean folder Image.xassets directory except AppIcon.appiconset directory.
                my $imageSourcesDirPath = "../KWatchOS2/Assets.xcassets";
                open ImageSourcesDir, "ls \"$imageSourcesDirPath\"/ |" or die 'Can not open Assets.xcassets directory';
                chomp(my @imageSourcesFiles = <ImageSourcesDir>);
                close ImageSourcesDir;


                for my $sourceFile (@imageSourcesFiles) {
                    if ($sourceFile ne "AppIcon.appiconset") {
                        my $sourceFilePath = "../KWatchOS2/Assets.xcassets/$sourceFile";
                        system "rm -rf \"$sourceFilePath\"";
                    }
                }
            }
        }
    }

    # Widget to be enabled only if deployment target is 14.0 and above
    # Take input for bundle identifier
    # Take input for deployment target
    # Mimimum and default will be 14.0
    if($widgetEnabled){
    	
        my $widgetsCodegenHandler = new WidgetsCodegenHandler();
        $widgetsCodegenHandler->generateWidgets();

        my $generatedFilePathArray = $widgetsCodegenHandler->getGeneratedFilePathHashArray();
        foreach my $filePathHash (@{$generatedFilePathArray}){
            
            foreach my $file (keys %$filePathHash){
                my $path = $filePathHash->{$file};
                XCProjectEditor::addFileToGroupAndTargets($file, "<group>", $path, ["KonyWidgetExtension"]);
            }
        }

        # Inputs
        my $widgetExtensionBundleIdentifier = $bundleID.".KonyWidget";
        my $widgetExtensionDeploymentTarget = 14.2;
        my $widgetContainerEnabled = 1;
        my $sharedContainers = ["group.widget.testWidget"];
        
        if($widgetExtensionDeploymentTarget lt 14.0){
            # Mimimum deployment
            $widgetExtensionDeploymentTarget = 14.0
        }
        
        my $entitlementFile = "KonyWidget.entitlements";
        my $entitlemenstFilePath = "../KonyWidget/".$entitlementFile;
        my $plistconfigurator = new PlistConfigurator($entitlemenstFilePath);
        
        if($widgetContainerEnabled eq 1){
        	$plistconfigurator->setValueForKey("com.apple.security.application-groups", $sharedContainers, "array");
        }else{
        	$plistconfigurator->deleteKey("com.apple.security.application-groups");
        }

        # Updating KRelease target build phase by embedding widget extension 
        if(XCProjectEditor::isBuildPhasePresentInTarget("Embed App Extensions", "KRelease") ne 1){
            XCProjectEditor::addBuildPhaseToTarget(XCProjectEditor::makePBXCopyFilesBuildPhase("Embed App Extensions", undef, 13), "KRelease");
        }
        
        XCProjectEditor::addTargetAsBuildphaseInTargets("KonyWidgetExtension", undef, "Embed App Extensions", ['KRelease']);
        
        # Updating widget extension target build settings
        my %widgetExtensionBuildConfig = ();
        $widgetExtensionBuildConfig{'PRODUCT_BUNDLE_IDENTIFIER'} = $widgetExtensionBundleIdentifier;
        $widgetExtensionBuildConfig{'IPHONEOS_DEPLOYMENT_TARGET'} = "$widgetExtensionDeploymentTarget";
        
        XCProjectEditor::updateBuildSettingsForTarget("KonyWidgetExtension", \%widgetExtensionBuildConfig);
        
        # Adding image resources to widget target
        $widgetsCodegenHandler->addImagesToKonyWidgets();
        
        my $imagesList = $widgetsCodegenHandler->getImagesList();
        if(defined $imagesList){
        	my @sortedImagesList = sort {lc $a cmp lc $b} @$imagesList;
        
	        foreach my $image (@sortedImagesList) {
				XCProjectEditor::addFileToGroupAndTargets($image, "<group>", "KonyWidget/Images", ["KonyWidgetExtension"]);
			}
        }

        print "Widgets code generation complete\n";
    }

    # Adding Frameworks mentioned in the JSON file to App Targets when kony_frameworks.json file is present in KARFile/PlatformName/Resources folder
    if( -e "../VMAppWithKonylib.xcodeproj"){
        my $frameworksJSONFilePath = $konyappunzipdir."/"."resources/".$platformName."/kony_frameworks.json";
        if($rscHandler->{_context} eq "MainApp"){
            system "mkdir -p ModuleDependencies/PlatformDependencies/Debug";
        }
        addPlatformFrameworksFromJSON($frameworksJSONFilePath);
    }

    if ( $native == 0 ) { # VM mode of extracting
        if ( $dotOFile =~ /^$/ ) { # konyobject file not found, continue with extracting the KBF file.
            if ( $kbfSrc !~ /^$/ )
            { # may be JS... continue
                # Reading the kbf data
                open FILE, "<$kbfSrc";
                while (<FILE>) {
                    $kbfData .= $_;
                }
                close FILE;

                print "Extracting KBF...\n";


                $vmMajor = unpack('C', substr($kbfData, $offset, 1)); $offset++;
                $vmMinor = unpack('C', substr($kbfData, $offset, 1)); $offset++;
                $vmPatch = unpack('C', substr($kbfData, $offset, 1)); $offset++;
                $vmBuild = unpack('S', substr($kbfData, $offset, 2)); $offset += 2;

                $appMajor = unpack('C', substr($kbfData, $offset, 1)); $offset++;
                $appMinor = unpack('C', substr($kbfData, $offset, 1)); $offset++;
                $appPatch = unpack('C', substr($kbfData, $offset, 1)); $offset++;

                $appName = cleanStr(substr($kbfData, $offset, 16)); $offset += 16;
                $vendor  = cleanStr(substr($kbfData, $offset, 16)); $offset += 16;

                $entry = cleanStr(substr($kbfData, $offset, 12)); $offset += 12;
                $appID = cleanStr(substr($kbfData, $offset, 12)); $offset += 12;
                $logoRscID = cleanStr(substr($kbfData, $offset, 12)); $offset += 12;

                while ($offset < length($kbfData)) {
                    my $rscType = unpack('C', substr($kbfData, $offset, 1)); $offset++;

                    my $locale = 'NLResources';
                    if (11 == $rscType || 22 == $rscType || 33 == $rscType || 44 == $rscType) {
                        $locale = cleanStr(substr($kbfData, $offset, 5));
                            $locale = trim($locale);
                        $offset += 5;

                        if (!exists($localeDirs{$locale})) {
                            makeCleanRscDir($rscHandler->{_LocalizedResources}.'/'."$locale.lproj");
                            $localeDirs{$locale} = 1;
                        }
                    }

                my $rscSize = unpack('I', substr($kbfData, $offset, 4)); $offset += 4;
                my $rscIDLength = undef;
                # From Platform 2.6 the image names precedes with the length - 1 byte
                if ($vmMajor.$vmMinor >= 26) {
                    $rscIDLength = unpack('C', substr($kbfData, $offset, 1)); $offset += 1;
                } else {
                    $rscIDLength = 12;
                }

                my $rscID = cleanStr(substr($kbfData, $offset, $rscIDLength)); $offset += $rscIDLength;

                if ($rscID ne $entry) {
                    my $localeDir = $locale;
                    if ($locale eq 'NLResources') {
                        push(@globalRscFiles, $rscID);
                    } else {
                        # Resource IDs in the form LOCALE/LOCALE.prop are special
                        # cases.  They have to be renamed to Localizable.strings
                        if ($rscID =~ /.prop/) {
                            $rscID = "Localizable.strings";
                        }

                        if (!exists($rscLocales{$rscID})) {
                            $rscLocales{$rscID} = [ $locale ];
                        } else {
                            push(@{$rscLocales{$rscID}}, $locale);
                        }
                        $localeDir .= ".lproj";
                    }
                    open FILE, ">$rscHandler->{_LocalizedResources}/$localeDir/$rscID" or die "Can not open resource file $rscID to write!";
                } else {
                    open FILE, ">$rscHandler->{_NLResources}/$rscID" or die "Can not open resource file $rscID to write!";
                    push(@globalRscFiles, $rscID);
                }

                print FILE substr($kbfData, $offset, $rscSize); $offset += $rscSize;
                close FILE;
            }
            } else {
                $jsmode = "yes";
            }
        } # End of processing KBF file
        else { # Process the konyapp.o file
        system "cp '$dotOFile' $rscHandler->{_NLResources}/";
        push(@globalRscFiles, "konyapp.o");
    }

        if (-e $xmlfilename) {
            unless ($bundleID && $bundleID !~ /^$/) {
                $bundleID = "com.kony.swtest";
            }

            #need to capture return value from settings.pl
            #system "perl settings.pl $bundleID";
            $needsBackgroundFetchHandler = `perl settings.pl $bundleID $rscHandler->{_basePathForProjectAsset}`;
            
            my $filename = "$rscHandler->{_NLResources}/Settings.bundle";
            if (-e $filename) {
                push(@globalRscFiles, "Settings.bundle");
            }
        }

    # ffixmlfiles processing

        if($jsmode =~ /no/) {
            $ffigenscriptname = "ffibindings_gen.pl";
        } else {
            $ffigenscriptname = "ffijsbindings_gen.pl";
        }

        my @platformArr = ("iphone");
        if ($targetDeviceFamily == 2) {
            splice(@platformArr, 0, 1, "ipad");
            $platformName = 'ipad';
        }
        elsif($universalApp){
            splice(@platformArr, 0, 2, "iphone", "ipad");
        }

        my $FFITempDir = "$rscHandler->{_basePathForProjectAsset}/FFITemp";
        if(@ffixmlfiles){
            mkdir $FFITempDir;
        }
        
        for my $srcFile (@ffixmlfiles) {
            my $xmlFile = $srcFile;
            for my $platform (@platformArr){
                my $ffibindingsgenCmd = "perl ".$ffigenscriptname." -f $konyappunzipdir/$xmlFile -p $platform -s $swiftSupport -a $appID";
                #print "Starting ffibindings_gen : $ffibindingsgenCmd\n";
                my @generatedSrcFiles;
                chomp(@generatedSrcFiles = `$ffibindingsgenCmd`);
                if(@generatedSrcFiles){
                    my @ffiNameSpaceAndLib = GetNamespaceAndLibNameInFFIXMLFile($xmlFile, $platform);
                    if(@ffiNameSpaceAndLib < 2){
                        next;
                    }
                    my $ffiNameSpaceDir = $FFITempDir."/".$ffiNameSpaceAndLib[0];
                    mkdir $ffiNameSpaceDir unless( -e $ffiNameSpaceDir);
                    system "rm -rf $ffiNameSpaceDir/*";
                    # again we have to copy all of the FFI, (BUG: 92895)
                    foreach my $element (splice(@ffiNameSpaceAndLib, 1))
                    {
                        my $ffiDirectory = substr($element, 0, index($element, ".zip"));
                        system "cp -r $konyappunzipdir/$ffiDirectory $ffiNameSpaceDir/";
                    }
                    
                    for my $genSrcFile (@generatedSrcFiles) {
                        if ($genSrcFile =~ /[hm]$/) {
                            system "cp '$genSrcFile' $ffiNameSpaceDir";
                        } else {
                            push (@frameworksForFFI, $genSrcFile);
                        }
                    }
                }
                
            }
        #print Dumper(\@frameworksForFFI);
        }
        if ($swiftSupport =~ 1) {
            my $encodedAppName = $unicodeAppNameConfigurationFlag == 1 ? $unicodeAppName : $appName;
            createSwiftBridgeHeader($appName);
            my $bridgeHeaderName = $encodedAppName."-Bridging-Header.h";
            push(@filesForFFI , $bridgeHeaderName);
        }
        
        #coping all ffi mapping's and lib's from ../FFITemp to ../FFI
        if(-e $FFITempDir){
            open FFITemporaryDIR, "ls $FFITempDir/ |" or die 'Can not open $FFITempDir directory';
            chomp(my @ffiFilesList = <FFITemporaryDIR>);
            close FFITemporaryDIR;

            my $FFIContent = "$rscHandler->{_basePathForProjectAsset}/FFIContent";
            `mkdir $FFIContent`;
            for my $ffiDir (@ffiFilesList){
                system "cp -r $FFITempDir/$ffiDir/* $rscHandler->{_FFI}";
                system "cp -r $FFITempDir/$ffiDir/* $FFIContent";
            }
            my $ffiDir = $FFIContent;
            open FFIContentDIR, "ls $ffiDir/ |" or die 'Can not open $ffiDir directory';
            chomp(@ffiFilesList = <FFIContentDIR>);
            close FFIContentDIR;
            if(-e $ffiDir){
                for my $ffiDir (@ffiFilesList){
                    if(-f $ffiDir){
                        if ($ffiDir =~ /[hm]$/) {
                            push(@filesForFFI , $ffiDir);
                            push(@ffiHeaderFiles , basename $ffiDir) if ($ffiDir =~ /\.h$/);
                            $ffiDir =~ s/\.h$//g;
                            push(@ffibindings_APIs,$ffiDir) if ($ffiDir =~ /API$/);
                            push(@ffibindings_APIs,$ffiDir) if ($ffiDir =~ /FFIClass$/);
                        }
                    }
                    else{
                        my %ffiDirectoryHash = makeDirectoryHash($konyappunzipdir, $ffiDir);
                        $ffiDirectories{$ffiDir} = $ffiDirectoryHash{$ffiDir};
                    }
                }
            }

            system "rm -rf $FFITempDir";
            system "rm -rf $FFIContent" if -e $FFIContent;
        }
        
        $appPatch = "0" if (!defined $appPatch);

    # Processing CWI xml files
        if($jsmode =~ /yes/) {
            my $cwigenscriptname = "cwiffijsbindings_gen.pl";

            #print Dumper (\@cwixmlfiles);
            my $widgetIDfilename = "widgetIDs";
            system "echo '1200' > $widgetIDfilename";
            for my $srcFile (@cwixmlfiles) {
            #print "Processing CustomWidget mapping file : ". basename($srcFile) ."\n";
                my $xmlFile = $srcFile;
                my $cwibindingsgenCmd = "perl ".$cwigenscriptname." -f $xmlFile -p $platformName -w $widgetIDfilename -b $rscHandler->{'_basePathForProjectAsset'}";
                #print "Starting cwibindings_gen : $cwibindingsgenCmd\n";
                my @generatedSrcFiles;
                chomp(@generatedSrcFiles = `$cwibindingsgenCmd`);
                #print Dumper(@generatedSrcFiles);
                my @cwigenfiles = ();
                for my $genSrcFile (@generatedSrcFiles) {
                        if ($genSrcFile =~ /_bindingsGenFiles$/) {
                    my %cwiDirectoryHash = makeDirectoryHash(".", basename $genSrcFile);
                    #print Dumper (\%cwiDirectoryHash);
                    $ffiDirectories{$CWIDirName}{basename $genSrcFile} = $cwiDirectoryHash{basename $genSrcFile};
                    #print Dumper (\%ffiDirectories);
                    system "mv $genSrcFile $rscHandler->{_FFI}/$CWIDirName/";
                        } elsif ($genSrcFile =~ /JSBinding\.h$/) {
                                push(@cwigenfiles , $genSrcFile);
                                push(@cwiHeaderFiles , basename $genSrcFile);
                                $genSrcFile =~ s/\.h$//g;
                                push(@cwiJSbinding_Classes,$genSrcFile);
                        } elsif ($genSrcFile =~ /\.plist$/) {
                                # TODO : Verify if property map file clashes with Platform widgets'
                            if( -e "../VMAppWithKonylib.xcodeproj" ){
                                if($protectenabled){
                                    system "cp -f $genSrcFile ../PlatformFiles/Components/Protected/CoreComponent.xcframework/ios-arm64_armv7_armv7s/CoreComponent.framework/PropertyMaps/JS/";
                                }else{
                                    system "cp -f $genSrcFile ../PlatformFiles/Components/Release/CoreComponent.xcframework/ios-arm64_armv7_armv7s/CoreComponent.framework/PropertyMaps/JS/";
                                    system "cp -f $genSrcFile ../PlatformFiles/Components/Release/CoreComponent.xcframework/ios-arm64_i386_x86_64-simulator/CoreComponent.framework/PropertyMaps/JS/";
                                    system "cp -f $genSrcFile ../PlatformFiles/Components/Debug/CoreComponent.xcframework/ios-arm64_armv7_armv7s/CoreComponent.framework/PropertyMaps/JS/";
                                    system "cp -f $genSrcFile ../PlatformFiles/Components/Debug/CoreComponent.xcframework/ios-arm64_i386_x86_64-simulator/CoreComponent.framework/PropertyMaps/JS/";
                                }
                            }else{
                                system "cp -f $genSrcFile ../CoreComponents/CoreComponent/PropertyMaps/JS/";
                            }
                        } else {
                                push (@frameworksForFFI, $genSrcFile);
                        }
                }
                #print Dumper(\@frameworksForFFI);
                #print Dumper(\%ffiDirectories);
            }
            system "rm -f $widgetIDfilename";
        }

        print "Extracted $appName v$appMajor.$appMinor.$appPatch (id: $appID, vendor: $vendor)\n";

        print "Platform version : $vmMajor.$vmMinor.$vmPatch.$vmBuild\n";

        # Printing iOS plug-in version
        if (-f "../VERSION.txt") {
            open VERSION_FILE,"<../VERSION.txt";
            chomp (my $ios_version = <VERSION_FILE>);
            close VERSION_FILE;
            $ios_version =~ s/\.zip$//;
            print "iOS Plug-in version : $ios_version\n";
        }

        if ($jsmode =~ /no/) {
            $appFileName = 'LuaApplication.m';
        } else {
            $appFileName = 'JSApplication.m';
        }
        
        my $appnativeFileName = $nativecallbacksfilename;
        
        my $className = "JSApplication_".$appID;
        #In future if spaces in AppId is accepted, below statement can be used to trim the spaces.
        #$className =~ s/\s+//g;
        
#        my %KonyJSConfig = ('PRODUCT_NAME' => "$appID",'APP_BUNDLE_IDENTIFIER'=>"$bundleID");
#        for my $jsTrgt (@jsTargets){
#            XCProjectEditor::updateBuildSettingsForTarget($jsTrgt, \%KonyJSConfig);
#        }

        open COUT,">$appFileName" or die 'unable to create $appFileName file';

        my %appmetadataDict = %appMetaDataForSplash;

    print COUT <<_EOC12_;

\#import "JSUtil.h"

\#import "Runtime.h"

_EOC12_

    if ($dev) {
        print COUT "#import <Foundation/Foundation.h>\n";
        print COUT "#import <objc/runtime.h>\n";
        print COUT "#import <CoreComponent/JSScriptLoader.h>\n";
        print COUT "#import <CoreComponent/ApplicationContextManager.h>\n";
        print COUT "#import <CoreComponent/KonyMacros1.h>\n";
        print COUT "#import <CoreComponent/KonyModuleContext.h>\n";
    }

    for (@ffibindings_APIs) {
        print COUT "\n\#import \"$_\.h\"\n";
    }

    for (@cwiHeaderFiles) {
        print COUT "\#import \"$_\"\n";
    }


my $vmVersion = $vmMajor.$vmMinor.$vmPatch.$vmBuild;

if (!$dev) {
    $vmVersion .= $vmPatch.$vmBuild;
}

if ($dev && $jsmode !~ /no/) {
    $swizzleFunction = $extractDevSpecificObj->getSwizzleScriptLoaderMethodsInDevModeExtraction();
}

    print COUT <<_EOC13_;

$swizzleFunction
    
NSMutableDictionary *appMetaData;
    
\@interface $className : NSObject
\@end

\@implementation $className

+(NSMutableDictionary *) setAppMetaData
{
    appMetaData = [[NSMutableDictionary alloc] initWithCapacity:10];
    NSMutableDictionary *versionsDict = [NSMutableDictionary dictionaryWithCapacity:10];

_EOC13_
print COUT "\t[appMetaData setObject: @\"$sltk\" forKey: @\"sltk\"];\n" if (defined $sltk);
print COUT "\t[appMetaData setObject: @\"$ival\" forKey: @\"ival\"];\n" if (defined $ival);
print COUT "\t[appMetaData setObject: @\"$appName\" forKey: @\"appName\"];\n" if (defined $appName);
print COUT "\t[appMetaData setObject: @\"$appMajor.$appMinor.$appPatch\" forKey: @\"appVersion\"];\n" if (defined $appMajor.$appMinor.$appPatch);
print COUT "\t[appMetaData setObject: @\"$appID\" forKey: @\"appID\"];\n" if (defined $appID);
print COUT "\t[appMetaData setObject: @\"$vendor\" forKey: @\"vendor\"];\n" if (defined $vendor);
print COUT "\t[appMetaData setObject: [NSNumber numberWithInt:$vmVersion] forKey: @\"platformVersion\"];\n" if (defined $vmVersion);
print COUT "\t[appMetaData setObject: @\"$logoRscID\" forKey: @\"logoResourceID\"];\n" if (defined $logoRscID);
print COUT "\t[appMetaData setObject: [NSNumber numberWithInt:$isMVCModeEnabled] forKey: @\"isMVCMode\"];\n";
print COUT "\t[appMetaData setObject: @\"$DefaultLocale\" forKey: @\"DefaultLocale\"];\n" if (defined $DefaultLocale);

if ($dev) {
    for (@startupFiles) {
        $startupFilesArrayString = $startupFilesArrayString . "@\"$_\", ";
    }
}else {
    #In non-dev mode, all the startup js files will be zipped together..
    $startupFilesArrayString = "@\"K4C9S0V89DS9W\", ";
}
    
$startupFilesArrayString = $startupFilesArrayString . "nil";
print COUT "\t[appMetaData setObject: [NSArray arrayWithObjects:$startupFilesArrayString] forKey: @\"startupFiles\"];\n"if (@startupFiles);

    $startupFilesArrayString="";
    if($universalApp){
        if ($dev) {
            for (@ipadStartupFiles) {
                $startupFilesArrayString = $startupFilesArrayString . "@\"$_\", ";
            }
        }else {
            #In non-dev mode, all the startup js files will be zipped together..
            $startupFilesArrayString = "@\"K4C9S0V89DS9D\", ";
        }
        
        $startupFilesArrayString = $startupFilesArrayString . "nil";
        print COUT "\t[appMetaData setObject: [NSArray arrayWithObjects:$startupFilesArrayString] forKey: @\"iPadStartupFiles\"];\n"if (@ipadStartupFiles);
        print COUT "\t[appMetaData setObject:[NSNumber numberWithBool:YES] forKey:@\"universal\"];\n";
    }
    
if (%pluginVersionsPropHash) {
    while ((my $propName, my $propValue) = each %pluginVersionsPropHash) {
        print COUT "\t[versionsDict setObject: @\"$propValue\" forKey: @\"$propName\"];\n";
    }
    my $match;
    chomp($match = 'iOS_Plugin');
    print COUT "\t[appMetaData setObject: @\"$pluginVersionsPropHash{$match}\" forKey: @\"$match\"];\n";
}

while ((my $propName, my $propValue)  = each %appmetadataDict) {
        if ($propName =~ /(splashanimationimages|splashlandscapeanimationimages)/) {
                print COUT "\n\tNSMutableArray *$propName = [NSMutableArray arrayWithCapacity:3];\n";
                for my $animationImage  (@$propValue) {
                        print COUT "\t[$propName addObject: @\"$animationImage\"];\n";
                }

                print COUT "\t[appMetaData setObject: $propName forKey: @\"$propName\"];\n\n";
        }
        else {
                print COUT "\t[appMetaData setObject: @\"$propValue\" forKey: @\"$propName\"];\n";
        }
}

if ($dev && $jsmode !~ /no/) {
    my $swizzleFunctionCaller = "if([[ApplicationContextManager sharedApplicationContextManager]\ isCurrentApplicationContextTheMainContext]){\
    swizzleScriptLoaderMethods();\
    }else{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
    swizzleScriptLoaderMethods();\
    });\
    }";
    print COUT "\t".$swizzleFunctionCaller."\n";
}


print COUT <<_EOC14_;
    [appMetaData setObject:versionsDict forKey: @"pluginversions"];

    return appMetaData;
}

+(void) registerFFIAPIs:(Runtime *)rt
{

_EOC14_

    if ($jsmode =~ /no/) {
        print COUT "\t// Register the FFI APIs with the LuaVM\n";
        for (@ffibindings_APIs) {
            print COUT "\t[$_ performSelector: \@selector(loadLuaLib:) withObject: globalTable];\n";
        }
    }
    else {
        print COUT "\t// Register the FFI APIs with the JS Runtime\n";
        for (@ffibindings_APIs) {
            if($_ =~ /FFIClass/) {
                print COUT "\t[rt registerClass:[$_ class]];\n";
            }
            else {
                print COUT "\t[rt registerClassAsStaticAPI:[$_ class]];\n";
            }
        }

        for my $cwijsbindingclass (@cwiJSbinding_Classes) {
            print COUT "\t[rt registerClass:[$cwijsbindingclass class]];\n"
        }
    }

print COUT <<_EOC15_;
}

\@end
    
void execute()
{
_EOC15_

if ($jsmode =~ /no/) {
    print COUT "\tvoid bootStrap(const char *konyapp);\n";
    print COUT "\tvoid startTopClosure();\n";
    print COUT "\tbootStrap(\"konyapp.o\");\n";
    print COUT "\t// Register the FFI APIs\n";
    print COUT "\tregisterFFIAPIs(nil);\n";
    print COUT "\tstartTopClosure();\n";
}

print COUT "\n\}\n";

if ($dev && $jsmode !~ /no/) {
    $extractDevSpecificObj->addJSScriptLoaderCategoryImplInDevModeExtraction(\*COUT);
}

    #Background Fetch handler
    if ($needsBackgroundFetchHandler eq "YES") {

        print COUT "\n//Needs Background fetch handler \
\@interface VMAppDelegate \
\@end \n\
\@implementation VMAppDelegate(AppBackgroundFetchHandler) \
//Background fetch handler \
- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler \
{ \
    void handleFetch(id); \
    handleFetch(completionHandler); \
} \
\@end";
    }

    close COUT;
    push(@srcFiles, $appFileName);

    open COUT,">$appnativeFileName" or die 'unable to create $appnativeFileName file';
    print COUT  "\n #import <Foundation/Foundation.h>\n";
    print COUT  "\n #import <UIKit/UIKit.h>\n";
    print COUT  "\n \@interface ApplicationNativeCallBacks : NSObject\n";
    print COUT  "\n \@end\n";
    
    print COUT  "\n \@implementation ApplicationNativeCallBacks\n";
    
    print COUT  "\n +(void) konyNC_on_app_start \n { \n } \n";
    
    print COUT  "\n +(void) konyNC_on_app_active \n { \n } \n";
    
    print COUT  "\n +(void) konyNC_on_app_inactive \n { \n } \n";
    
    print COUT  "\n +(void) konyNC_on_app_foreground \n { \n } \n";
    
    print COUT  "\n +(void) konyNC_on_app_background \n { \n } \n";
    
    print COUT  "\@end\n";

    close COUT;
    
    my $nativeFlile = $rscHandler->{_basePathForProjectAsset}.'/'.$nativecallbacksfilename;
    unless (-e $nativeFlile)
    {
        system "cp $appnativeFileName $nativeFlile";
    }

    XCProjectEditor::addFileToGroupAndTargets($appnativeFileName, "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@targets);

} # End of - VM mode of extracting


    #################################### VM MODE #######################################


    for my $srcFile (@srcFiles)
    {
#        if(-e $srcFile){
            system "cp $srcFile $rscHandler->{_basePathForProjectAsset}/";
#        }
    }

    # At this point, there are three kinds of files generated that need to be added to the project file:
    # 1. Source files, names stored in @srcFiles
    # 2. Resource files not specific to any locale, stored in @globalRscFiles
    # 3. Locale specific resource files, stored in %rscLocales as a mapping from resource to all the
    #    locales the resource is present in.
    # 4. FFI resource and source files, names stored in @filesForFFI

    print "Generating Xcode project file...\n";


    if($enableJSBindings && $nfiTpOpt == 0)
    {
        if($enableMobileFirstAPIs)
        {
            print "Processing MobileFirst APIs \n";
        }
        createMasterFromSelfSufficientModules(@selfsufficientModulesForVM);
        #copyMasterToGeneratedJSBindings();
        copyThirdPartyFilesFromSelfSufficientModules();
        my $SSMDir = "selfsufficientmodules";
        #system "rm -rf '$konyappunzipdir/$SSMDir'";
        # my $newlibraryName = getLibraryName();
        # print "new libraryName:-$newlibraryName\n";
        # check in cache
        getFrameworkList();
        my $hash = getHash();
        my $flag = isAvailableInCache($hash);
        if ($flag == 0) #if there is any new framework
        {
            my $output_string = '';
            print "Building new Libraries....\n";
            my $archs = "armv7 armv7s arm64";
            if (isSupportedForSimulators())
            {
                $archs = $archs.' i386 x86_64';
            }
            # system ("python ./nativebinding/moveFilesToGivenPath.py ../nativebinding/thirdparty");
            system ("python3 ./nativebinding/usingPool.py -a $archs -i ../../nongeneratedJSBindings/ ../../handcodedWrappers/ ../../nativebinding/Headers/ -tp ../../handcodedWrappers/ ../../nongeneratedJSBindings/ ../../nativebinding/thirdparty/ -ds ../../generatedJSBindings_Device/*.m -ss ../../generatedJSBindings_Simulator/*.m -f \" -Wdeprecated-declarations\" \" -w\" \" -mios-simulator-version-min=5.1.1\" -dest ../nativebinding/Libraries");
            # # TODO:- clean thirdparty dir.˜˜˜˜˜

            # print "hhh---->>error:$output_string<----hh";
            if (-s "./err.txt")#this file will be created above cmd
            {
                    my $consoleLog = `cat ./err.txt`;
                    errorLog($consoleLog);
            }
            else
            {
                if ( not(-d './SSMLibs')) {
                    `mkdir ./SSMLibs`;
                }
                if ( not(-d "./SSMLibs/$hash")) {
                    `mkdir ./SSMLibs/$hash`;
                }
                `cp ../nativebinding/Libraries/libKonyUnifiedBindings.a ./SSMLibs/$hash/`;
                addNativeThirdpartyLibsToNativeBindingLibs();
            }
        }
        else
        {
                # copy lib from ./JSLibs/$newlibraryName to ../NativeBindingLibs/
                `cp ./SSMLibs/$hash/libKonyUnifiedBindings.a ../nativebinding/Libraries/`;
                addNativeThirdpartyLibsToNativeBindingLibs();
        }
        `rm -rf ../nativebinding/thirdparty 1>/dev/null 2>/dev/null `;
    }


    # Add necessary files and write KonyDummyExecute.m
    if ($native != 0) {
    open DUMMYFILE, ">KonyDummyExecute.m";
    print DUMMYFILE <<_EOVG3_;

//
//  KonyDummyExecute.m
//  VM
//
//  Created by extract.pl - Don't modify this file
void execute() {}
void setAppMetaData() {}

_EOVG3_
    close DUMMYFILE;

        system "cp KonyDummyExecute.m ../AppSource/";
        push(@filesForCodegen , "KonyDummyExecute.m");
    }

    # Processing FFI files (source files, library archive files and resource files)
    for my $ffiSrcFile (@filesForFFI) {
#        print ("Adding $ffiSrcFile to FFI_GROUP_SECTION\n");
        if ($ffiSrcFile =~ /\.m$/)
        {
            my %buildsetings = ('COMPILER_FLAGS' => "-fno-objc-arc");
            XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets($ffiSrcFile, "<group>", $rscHandler->{_FFIGroupPath}, \%buildsetings, undef, \@jsTargets);
        }
        else
        {
            XCProjectEditor::addFileToGroupAndTargets($ffiSrcFile, "<group>", $rscHandler->{_FFIGroupPath}, \@jsTargets);
        }
    }

    # For each of the ffiDirectory add reference in FFI_GROUP_SECTION, remember the fildID created

    for my $ffiSrcDir (keys(%ffiDirectories)) {
        print ("Adding $ffiSrcDir to FFI_GROUP_SECTION\n");
        processDirectoryFromDataHash("$ffiSrcDir", $ffiDirectories{$ffiSrcDir}, $rscHandler->{_FFI});
    }

    my @modDirectoriesList = @loadmodules;
    for my $modDirectory (@modDirectoriesList) {
        my %modDirectoryHash = makeDirectoryHash($rscHandler->{_Modules}, $modDirectory);
        $modDirectories{$modDirectory} = $modDirectoryHash{$modDirectory};
    }
    #print Dumper \%modDirectories;
    for my $ffiSrcDir (keys(%modDirectories)) {
        print ("Adding $ffiSrcDir to FFI_GROUP_SECTION\n");
        processDirectoryFromDataHash("$ffiSrcDir", $modDirectories{$ffiSrcDir}, $rscHandler->{_Modules});
    }
        
    my $SSMRootPath = $konyappunzipdir."/"."selfsufficientmodules/";
        
    for my $SSM (@selfsufficientModulesForVM){
        my $SSMPath = $SSMRootPath.$SSM;
        my $SSMThirdPartyDir = $SSMPath."/thirdparty";
        if(-d $SSMThirdPartyDir){
            my $NFIResourcesPath = "$rscHandler->{_NativeBinding}/NFIResources";
            my @thirdPartyDependencies = `find $SSMThirdPartyDir/* -type d -maxdepth 0`;
            chomp(@thirdPartyDependencies);
            #print Dumper(\@thirdPartyDependencies);
            for my $dependencyDir (@thirdPartyDependencies){
                if(-e $dependencyDir."/"."res"){
                    my $dependency = basename $dependencyDir;
                    `mkdir -p $NFIResourcesPath/$SSM/$dependency`;
                    `cp -rf $dependencyDir/res/ $NFIResourcesPath/$SSM/$dependency/`;
                    my %directoryHash = makeDirectoryHash($NFIResourcesPath, $SSM);
                    #print Dumper(\%directoryHash);
                    processDirectoryFromDataHash($SSM, $directoryHash{$SSM}, $NFIResourcesPath);
                }
            }
        }
    }


      
    my $areLocalesProvidedInFFI = keys %ffiRscLocales;

    if($areLocalesProvidedInFFI){
        if(exists($rscLocales{"Localizable.strings"}) && exists($ffiRscLocales{"Localizable.strings"})){
            push(@{$rscLocales{"Localizable.strings"}}, @{$ffiRscLocales{"Localizable.strings"}});
            delete $ffiRscLocales{"Localizable.strings"};
            $rscLocales{"Localizable.strings"} = [ removeDuplicatesInArray(@{$rscLocales{"Localizable.strings"}}) ];
            #print Dumper($rscLocales{"Localizable.strings"});
        }
    }

    my $localizedResourcesGroupRef = XCProjectEditor::getGroupRefWithPathFromRoot($rscHandler->{_LocalizedResourcesGroupPath});

    while ((my $rscID, my $value) = each(%rscLocales)) {
        my $variantGroupRef = XCProjectEditor::makePBXVariantGroup($rscID, "<group>");
        XCProjectEditor::addAsChildToGroup($localizedResourcesGroupRef, $variantGroupRef);
        for my $locale (@{$value}) {
            if($rscID eq "Localizable.strings"){
                if($areLocalesProvidedInFFI){
                    my @trgts = @targets;
                    push(@trgts,@jsTargets);
                    XCProjectEditor::addFileToGroupAndTargets("$locale.lproj/$rscID", "<group>", "$rscHandler->{_LocalizedResourcesGroupPath}/$rscID", \@trgts);
                    next;
                }
            }elsif($rscID eq "InfoPlist.strings"){
                XCProjectEditor::addFileToGroupAndTargets("$locale.lproj/$rscID", "<group>", "$rscHandler->{_LocalizedResourcesGroupPath}/$rscID", \@targets);
                next;
            }
#            print "$locale.lproj/$rscID****\n";
            XCProjectEditor::addFileToGroupAndTargets("$locale.lproj/$rscID", "<group>", "$rscHandler->{_LocalizedResourcesGroupPath}/$rscID", \@jsTargets);
        }
    }

    while ((my $rscID, my $value) = each(%ffiRscLocales)) {
        my $variantGroupRef = XCProjectEditor::makePBXVariantGroup($rscID, "<group>");
        XCProjectEditor::addAsChildToGroupWithPathFromRoot($rscHandler->{_LocalizedResourcesGroupPath}, $variantGroupRef);
        for my $locale (@{$value}) {
            if($isLibraryBuild){
                XCProjectEditor::addFileToGroupAndTargets("$locale.lproj/$rscID", "<group>", "$rscHandler->{_LocalizedResourcesGroupPath}/$rscID", \@jsTargets);
            }else{
                XCProjectEditor::addFileToGroupAndTargets("$locale.lproj/$rscID", "<group>", "$rscHandler->{_LocalizedResourcesGroupPath}/$rscID", \@targets);
            }
        }
    }
        
    # Adding assets catalog for app Icons.
    XCProjectEditor::addFileToGroupAndTargets("Assets.xcassets", "SOURCE_ROOT", $rscHandler->{_NLResourcesGroupPath}, \@targets);
        
    if($rscHandler->{_context} eq "MainApp"){
        my $appIconHandler = new AppIconHandler();
        if (%iphoneIpadAppIconsImagesNameHash){
            $appIconHandler->updateContentsJSONForIphoneIpadAppIcons(\%iphoneIpadAppIconsImagesNameHash,$targetDeviceFamily);
        }
    }


    for my $rscID (@watchGlobalRscFiles) {
        if ( exists($watchRscLocales{$rscID}) ) {
            ## This resource is internationalized.. Adding Base as locale to watchRscLocales hash..
            my $localesArrayRef = $watchRscLocales{$rscID};
            push (@$localesArrayRef, "Base");

            ## Also change the destPath for this particular rsc..
            $watchGlobalRscSrcDestHash{$rscID}->{"destPath"} = "../KWatchOS2/Base.lproj";
        } else {
            XCProjectEditor::addFileToGroupAndTargets("KWatchOS2/$rscID", "SOURCE_ROOT", "KWatchOS2/Resources", \@watchTargets);
        }
    }


    while ((my $rscID, my $value) = each(%watchRscLocales)) {
        my $variantGroupRef = XCProjectEditor::makePBXVariantGroup($rscID, "<group>");
        XCProjectEditor::addAsChildToGroupWithPathFromRoot("KWatchOS2", $variantGroupRef);
        for my $locale (@{$value}) {
            XCProjectEditor::addFileToGroupAndTargets("$locale.lproj/$rscID", "<group>", "KWatchOS2/$rscID", \@watchTargets);
        }
    }

    ## Copy all the watch global resource files to the proper folders...

    while ((my $rscID, my $srcDestHashRef) = each(%watchGlobalRscSrcDestHash)) {
        my $srcPath = $srcDestHashRef->{"srcPath"};
        my $destPath = $srcDestHashRef->{"destPath"};
        system "cp \"$srcPath\" \"$destPath\" ";
    }

    for my $rscID (@watchCustomFontFiles) {
        XCProjectEditor::addFileToGroupAndTargets("KWatchOS2/$rscID", "SOURCE_ROOT", "KWatchOS2/Resources", \@watchTargets);
    }

    # There's duplication here, yes.  At sometime a function could be made out of it.

    for my $srcFile (@srcFiles) {
        XCProjectEditor::addFileToGroupAndTargets($srcFile, "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@jsTargets);
    }

    # Processing FFI files (source files, library archive files and resource files)
    for my $codegenSrcFile (@filesForCodegen) {
            XCProjectEditor::addFileToGroupAndTargets($codegenSrcFile, "<group>", "AppSource", \@targets);
    }

    if ($watchEnabled || $watchCompatabilityMode) {
        `touch ../AppDelegateExtension/CustomVMAppDelegate.h ../AppDelegateExtension/CustomVMAppDelegate.m`;
    #	"#import \"VMAppDelegate.h\" \n\@interface CustomVMAppDelegate : VMAppDelegate \n\@end";
        my $cmd;
        
        if( -e "../VMAppWithKonylib.xcodeproj" ){
            $cmd = 'echo "\n#import \"VMAppDelegate.h\"\n#import <WatchConnectivity/WCSession.h>\n\n@interface CustomVMAppDelegate : VMAppDelegate <WCSessionDelegate>\n@property (nonatomic, retain)WCSession *session;\n@end\n" > ../AppDelegateExtension/CustomVMAppDelegate.h';
        }else{
            $cmd = 'echo "\n#import <CoreComponent/VMAppDelegate.h>\n#import <WatchConnectivity/WCSession.h>\n\n@interface CustomVMAppDelegate : VMAppDelegate <WCSessionDelegate>\n@property (nonatomic, retain)WCSession *session;\n@end\n" > ../AppDelegateExtension/CustomVMAppDelegate.h';
        }
       
        `$cmd`;
        $cmd = 'echo "\n#import \"CustomVMAppDelegate.h\"\n\n@implementation CustomVMAppDelegate\n\n\n/*Generated code please DO NOT remove*/\n- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions\n{\n  if ([WCSession isSupported]) {\n      self.session = [WCSession defaultSession];\n      self.session.delegate = self;\n      [self.session activateSession];\n  }\n  return [super application:application didFinishLaunchingWithOptions:launchOptions];\n}\n\n\n/*Generated code please DO NOT remove*/\n- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *, id> *)message replyHandler:(void(^)(NSDictionary<NSString *, id> *replyMessage))replyHandler{\n  [super callOnWatchRequestForSession:session withMessage:message andHandler:replyHandler];\n}\n\n@end\n" > ../AppDelegateExtension/CustomVMAppDelegate.m';
        `$cmd`;
        
        if( -e "../VMAppWithKonylib.xcodeproj" ){
            replaceStringInFile("VMAppDelegate.h", "CustomVMAppDelegate.h", "../AppDelegateExtension/KonyAppDelegateClassFactory.m");
        }else{
            replaceStringInFile("<CoreComponent/VMAppDelegate.h>", "\"CustomVMAppDelegate.h\"", "../AppDelegateExtension/KonyAppDelegateClassFactory.m");
        }
        
        replaceStringInFile("\\[VMAppDelegate", "\\[CustomVMAppDelegate", "../AppDelegateExtension/KonyAppDelegateClassFactory.m");

        XCProjectEditor::addFileToGroupAndTargets("CustomVMAppDelegate.h", "<group>", "AppDelegateExtension", []);
        XCProjectEditor::addFileToGroupAndTargets("CustomVMAppDelegate.m", "<group>", "AppDelegateExtension", \@targets);
    }

    if($enableCordova == 1) {
        if (-d "../Plugins/") {
            addSourceFilesToProject("../Plugins/");
            addCordovaPluginStaticLibrariesToProject();
            addCordovaFrameworksToEmbeddedBinariesAndFramework();
        }else{
            print "Cordova Plugins directory not found";
            exit -1;
        }
        AddCordovaConfigXmlToProject();

        AddCordovaLibToProject();
    }
    # From the current project file, retrieve content which was not generated by this script.

    if ($watchEnabled || $watchCompatabilityMode) {
        foreach my $targetName (@targets)
        {
            XCProjectEditor::createTargetDependency("KWatchOS2", undef, $targetName);
        }
        XCProjectEditor::addTargetAsBuildphaseInTargets('KWatchOS2', undef,  "Embed Watch Content", \@targets);
        if ($watchEnabled) {
            addWatchRelatedFilesToProject();
            addWatchLocaleEntriesToProject();
        }
        my @watchFrameworks = ("WatchConnectivity.framework");
        addFrameworksToProject(@watchFrameworks);
    }

    my %temp = uniqArrayHash(@frameworksForFFI);
    my @rframeworks = keys(%temp);

    foreach my $reqFramework (@rframeworks) {
        my $ffiSrcFile = $reqFramework;
        # adding suffix for the framework names if it doesn't exist.
        if(($ffiSrcFile =~ /\.tbd$/)){
            if (!$existing_frameworks_Hash{$ffiSrcFile}) {
                XCProjectEditor::addFileToGroupAndTargets("usr/lib/".$ffiSrcFile, "SDKROOT", "FFI", \@jsTargets);
                $existing_frameworks_Hash{$ffiSrcFile} = 1;
            }
        }else{
            $ffiSrcFile = $ffiSrcFile.".framework" if $ffiSrcFile !~ /.framework$/;
            if (!$existing_frameworks_Hash{$ffiSrcFile}) {
                XCProjectEditor::addFileToGroupAndTargets("System/Library/Frameworks/".$ffiSrcFile, "SDKROOT", "FFI", \@jsTargets);
                $existing_frameworks_Hash{$ffiSrcFile} = 1;
            }
        }
    }

    # If JSBindings is enabled make dynamic entries for all dependent frameworks
    if ($enableJSBindings && $nfiTpOpt == 0)
    {
        # Read the mastersConf.conf file to find the list of frameworks that all JSBinding modules are dependent on
        # This list has been updated while generating the masters from all frameworks in createMasters.sh
        my $filename = $SSMCONFIGFILE;
        open(my $fh, '<:encoding(UTF-8)', $filename) or die "Could not open file '$filename' $!";
        while (my $row = <$fh>) {
            chomp $row;
            if($row =~ "frameworksList:"){
                my ($key,$frameworksList) = split /:/,$row;
                @nativeBindingFrameworks = split /,/,$frameworksList;
            }
            elsif($row =~ "excludedFrameworksList:"){
                my ($key,$excludedFrameworksList) = split /:/,$row;
                @excludedNativeBindingFrameworks = split /,/,$excludedFrameworksList;
            }
        }
        close $fh;

        my %excludedframeworks = uniqArrayHash(@excludedNativeBindingFrameworks);
        # Remove duplicate entries from the frameworksList
        my %temp = uniqArrayHash(@nativeBindingFrameworks);
        my @rframeworks = keys(%temp);
        for my $nativeBindingFramework (@rframeworks) {
            # print "Current native Binding ".$nativeBindingFramework."\n";
            $nativeBindingFramework .= ".framework";
            $nativeBindingFramework =~ s/^\s+|\s+$//g; ## Trim any leading or trailing white-spaces in the framework name.
            if(!exists($existing_frameworks_Hash{$nativeBindingFramework} )  ## If the framework is not already existing in project file, create entries for it dynamically.
                    &&  !exists($excludedframeworks{$nativeBindingFramework} ) ## If the framework is not an excluded framework : Ex: AudioUnit.framework which has only headers and no lib
            )
            {
                my %buildSettings = ('ATTRIBUTES' => ['Weak']);
                XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets("System/Library/Frameworks/".$nativeBindingFramework, "SDKROOT", "Frameworks", \%buildSettings, undef, \@jsTargets);
                $existing_frameworks_Hash{$nativeBindingFramework} = 1;
            }
            elsif (exists($existing_frameworks_Hash{$nativeBindingFramework}))
            {
                my %buildSettings = ('ATTRIBUTES' => ['Weak']);
                XCProjectEditor::addBuilsettingsToFileInPath("Frameworks/$nativeBindingFramework", \%buildSettings);
            }
        }

        #Make dynamic entry for JSBinding library and also third party libraries if any
        my $nativeFunctionLibs = `find ../nativebinding/Libraries -name "*.a" -o -name "*.framework"`;
    $nativeFunctionLibs = $nativeFunctionLibs.(`find ../nativebinding/Libraries -name "*.xcframework"`);
        my @nativeFunctionLibsList = split('\n', $nativeFunctionLibs);
        my $lib = undef;
        for $lib (@nativeFunctionLibsList)
        {
            chomp($lib);
        if(index($lib,".framework") != -1 && index($lib,".xcframework") != -1)
        {
            next;
        }
        if(index($lib,".a") != -1 && index($lib,".xcframework") != -1)
        {
            next;
        }
            my $fileRef = XCProjectEditor::makePBXFileReference(basename($lib), "<group>");
            
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "nativebinding/Libraries", undef, undef, \@jsTargets);
        
        if (-d $lib)
            {
                if(isDynamicFramework($lib))
                {
                    if($copyDynamicFrameworksForLibraryBuild){
                        #print $lib."\n";
                        system "cp -rf $lib ModuleDependencies/FFIDynamicFrameworks/"
                    }
                    $hasDynamicFrameworks = 1;
                    my %builSettings =  (
                    "ATTRIBUTES" => ["CodeSignOnCopy"]
                    );
                    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, undef, undef, \@targets);
                    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, \%builSettings, "Embed Frameworks", \@targets);
                }
            }
        }
    }

    if ($appPropFile !~ /^$/) {
        my @plistData = ();

        my $isAvailableFriendlyWidgetIDKey = 0;

        my $json_ref = PlistUtil::convertPLISTFileToJSON("$rscHandler->{_basePathForProjectAsset}/Info.plist");
        $json_ref->{'UILaunchImages~ipad'} = [] if exists $json_ref->{'UILaunchImages~ipad'};
        $json_ref->{'UILaunchImages'} = [] if exists $json_ref->{'UILaunchImages'};
        $json_ref->{'UIAppFonts'} = [] if exists $json_ref->{'UIAppFonts'};
        # By default Info plist supports following:
        # For iphone: Supports all interface orientations except upside down
        # For ipad: Supports all interface orientations by default. If app launch mode specified, adjusts accordingly
        # $json_ref->{'UISupportedInterfaceOrientations'} = [] if exists $json_ref->{'UISupportedInterfaceOrientations'};
        $json_ref->{'CFBundleIconFiles'} = [] if exists $json_ref->{'CFBundleIconFiles'};
        $json_ref->{'UIKonySupportedInterfaceOrientations~ipad'} = [] if exists $json_ref->{'UIKonySupportedInterfaceOrientations~ipad'};
        
        my %PlistHash = ();
        if ($bundleID && $bundleID !~ /^$/) {
            $PlistHash{'CFBundleIdentifier'} = $bundleID;
            $PlistHash{'CFBundleDisplayName'} = $displayName;
            $PlistHash{'KonyBundleIdentifier'} = $bundleID;
        }
        if ($bundleVersion && $bundleVersion !~ /^$/)
        {
            if($rscHandler->{_context} eq "MainApp"){
                $PlistHash{'CFBundleVersion'} = $bundleVersion;
                $parentAppConfig{'CFBundleVersion'} = $bundleVersion;
            }else{
                $PlistHash{'CFBundleVersion'} = $parentAppConfig{'CFBundleVersion'};
            }
        }
        
        if ($applicationVersion && $applicationVersion !~ /^$/)
        {
            if($rscHandler->{_context} eq "MainApp"){
                $PlistHash{'CFBundleShortVersionString'} = $applicationVersion;
                $parentAppConfig{'CFBundleShortVersionString'} = $applicationVersion;
            }else{
                $PlistHash{'CFBundleShortVersionString'} = $parentAppConfig{'CFBundleShortVersionString'};
            }
        }
        $PlistHash{'Modules'} = join(",", @loadmodules);
        foreach my $key (keys %PlistHash)
        {
            $json_ref->{$key} = $PlistHash{$key};
        }
        if ($appLaunchMode && $appLaunchMode !~ /^$/ && $appLaunchMode !~ /both/) {
            $json_ref->{'UIInterfaceOrientation'} = 'UIInterfaceOrientationPortrait' if ($appLaunchMode =~ /portrait/);
            $json_ref->{'UIInterfaceOrientation'} = 'UIInterfaceOrientationLandscapeLeft' if ($appLaunchMode =~ /portrait/);
        }
        if($appLaunchMode ) {
            my @orientations = ();
            if ($appLaunchMode =~ /landscape/){ #if launch mode is set to  LANDSCAPE from KonyIDE.
                push(@orientations, 'UIInterfaceOrientationLandscapeLeft');
                push(@orientations, 'UIInterfaceOrientationLandscapeRight');
            }elsif ($appLaunchMode =~ /portrait/){ #if launch mode is set to  PORTRAIT from KonyIDE.
                push(@orientations, 'UIInterfaceOrientationPortrait');
                push(@orientations, 'UIInterfaceOrientationPortraitUpsideDown');
            }elsif ($appLaunchMode =~ /both/){ # if launch mode is set to BOTH from KonyIDE.
                push(@orientations, 'UIInterfaceOrientationLandscapeLeft');
                push(@orientations, 'UIInterfaceOrientationLandscapeRight');
                push(@orientations, 'UIInterfaceOrientationPortrait');
                push(@orientations, 'UIInterfaceOrientationPortraitUpsideDown');
            }
            $json_ref->{'UISupportedInterfaceOrientations~ipad'} = \@orientations;
        }

        #for application supported orientation from KonyIDE, we introduced new Key as UISupportedInterfaceOrientation should be used for initial launch mode of the application.
        if ($#supportedOrientations != -1) {
            my @Orientations = ();
            #print Dumper (\@supportedOrientations);
            if ($appLaunchMode && $appLaunchMode !~ /^$/ && $appLaunchMode =~ /both/) {
                @Orientations = ('UIInterfaceOrientationPortrait', 'UIInterfaceOrientationPortraitUpsideDown',
                'UIInterfaceOrientationLandscapeLeft', 'UIInterfaceOrientationLandscapeRight'
                );
            }
            else {
                for my $supportedOrientation (@supportedOrientations) {
                    if ($supportedOrientation =~ /landscape/)
                    {
                        push (@Orientations, 'UIInterfaceOrientationLandscapeLeft');
                        push (@Orientations, 'UIInterfaceOrientationLandscapeRight');
                    }
                    if ($supportedOrientation =~ /portrait/)
                    {
                        push (@Orientations, 'UIInterfaceOrientationPortrait');
                        push (@Orientations, 'UIInterfaceOrientationPortraitUpsideDown');
                    }
                }
            }
            $json_ref->{'UIKonySupportedInterfaceOrientations~ipad'} = \@Orientations;
        }

        #for application launch images, we introduced new Key as UILaunchImages which contain dictionary used by iOS7.0. Since this should be in line with deployment target, it is being set as 9.0 kony v9
        if ($enableLaunchScreenStoryBoard == 0 && ($targetDeviceFamily == 1 || $universalApp)) {
            my @launchImages = ();
            my $currentImageName = $appMetaDataForSplash{"splashimage"};
            if ($currentImageName && $currentImageName !~ /^$/) {
                my $endIndex = index($currentImageName, '.png');
                my $newImageName = substr $currentImageName, 0, $endIndex;
                @launchImages = (
                    {
                        'UILaunchImageMinimumOSVersion' => '9.0',
                        'UILaunchImageName'             => $newImageName,
                        'UILaunchImageOrientation'      => 'Portrait',
                        'UILaunchImageSize'             => '{320, 480}'
                    },
                    {
                        'UILaunchImageMinimumOSVersion' => '9.0',
                        'UILaunchImageName'             => "$newImageName-568h",
                        'UILaunchImageOrientation'      => 'Portrait',
                        'UILaunchImageSize'             => '{320, 568}'
                    },
                    {
                        'UILaunchImageMinimumOSVersion' => '9.0',
                        'UILaunchImageName'             => "$newImageName-667h",
                        'UILaunchImageOrientation'      => 'Portrait',
                        'UILaunchImageSize'             => '{375, 667}'
                    },
                    {
                        'UILaunchImageMinimumOSVersion' => '9.0',
                        'UILaunchImageName'             => "$newImageName-736h",
                        'UILaunchImageOrientation'      => 'Portrait',
                        'UILaunchImageSize'             => '{414, 736}'
                    },
                    {
                        'UILaunchImageMinimumOSVersion' => '9.0',
                        'UILaunchImageName'             => "$newImageName-812h",
                        'UILaunchImageOrientation'      => 'Portrait',
                        'UILaunchImageSize'             => '{375, 812}'
                    },
                    {
                        'UILaunchImageMinimumOSVersion' => '9.0',
                        'UILaunchImageName'             => "$newImageName-896h",
                        'UILaunchImageOrientation'      => 'Portrait',
                        'UILaunchImageSize'             => '{414, 896}'
                    }
                );
            }
            #iphone landscape
            my $currentlandscapeImageName = $appMetaDataForSplash{"splashlandscapeimage"};
            if ($currentlandscapeImageName && $currentlandscapeImageName !~ /^$/) {
                my $endIndex = index($currentlandscapeImageName, '.png');
                my $newImageName = substr $currentlandscapeImageName, 0, $endIndex;
                my %imageDetailsHash1 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName' => $currentlandscapeImageName,
                    'UILaunchImageOrientation' => 'Landscape',
                    'UILaunchImageSize' => '{320, 480}'
                );
                my %imageDetailsHash2 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName'             => "$newImageName-568h",
                    'UILaunchImageOrientation'      => 'Landscape',
                    'UILaunchImageSize'             => '{320, 568}'
                );
                my %imageDetailsHash3 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName'             => "$newImageName-667h",
                    'UILaunchImageOrientation'      => 'Landscape',
                    'UILaunchImageSize'             => '{375, 667}'
                );
                my %imageDetailsHash4 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName'             => "$newImageName-736h",
                    'UILaunchImageOrientation'      => 'Landscape',
                    'UILaunchImageSize'             => '{414, 736}'
                );
                my %imageDetailsHash5 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName'             => "$newImageName-812h",
                    'UILaunchImageOrientation'      => 'Landscape',
                    'UILaunchImageSize'             => '{375, 812}'
                );
                
                my %imageDetailsHash6 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName'             => "$newImageName-896h",
                    'UILaunchImageOrientation'      => 'Landscape',
                    'UILaunchImageSize'             => '{414, 896}'
                );
                
                push (@launchImages, \%imageDetailsHash1);
                push (@launchImages, \%imageDetailsHash2);
                push (@launchImages, \%imageDetailsHash3);
                push (@launchImages, \%imageDetailsHash4);
                push (@launchImages, \%imageDetailsHash5);
                push (@launchImages, \%imageDetailsHash6);
            }
            $json_ref->{'UILaunchImages'} = \@launchImages;
        }else{
            delete($json_ref->{'UILaunchImages'});
        }

        if ($enableLaunchScreenStoryBoard == 0 && ($targetDeviceFamily == 2 || $universalApp)) {
            my $currentLandscapeImageName = $appMetaDataForSplash{"splashlandscapeimage"};
            my $currentPotraitImageName;
            if($universalApp)
            {
                $currentPotraitImageName = $appMetaDataForSplash{"splashimageipad"};
            }
            else
            {
                $currentPotraitImageName = $appMetaDataForSplash{"splashimage"};
            }
            #print $currentPotraitImageName."\n";
            my @launchImages = ();

            if ($currentLandscapeImageName && $currentLandscapeImageName !~ /^$/) {
                my $endLandscapeIndex = index($currentLandscapeImageName, '.png');
                my $newLandscapeImageName = substr $currentLandscapeImageName, 0, $endLandscapeIndex;
                my %imageDetailsHash = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName' => $newLandscapeImageName,
                    'UILaunchImageOrientation' => 'Landscape',
                    'UILaunchImageSize' => '{768, 1024}'
                );
                
                my %imageDetailsHash1 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName' => $newLandscapeImageName,
                    'UILaunchImageOrientation' => 'Landscape',
                    'UILaunchImageSize' => '{834, 1194}'
                );
                
                push (@launchImages, \%imageDetailsHash);
                push (@launchImages, \%imageDetailsHash1);
            }

            if ($currentPotraitImageName && $currentPotraitImageName !~ /^$/) {
                my $endPotraitIndex = index($currentPotraitImageName, '.png');
                my $newPotraitImageName = substr $currentPotraitImageName, 0, $endPotraitIndex;
                my %imageDetailsHash = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName' => $newPotraitImageName,
                    'UILaunchImageOrientation' => 'Portrait',
                    'UILaunchImageSize' => '{768, 1024}'
                );
                my %imageDetailsHash1 = (
                    'UILaunchImageMinimumOSVersion' => '9.0',
                    'UILaunchImageName' => $newPotraitImageName,
                    'UILaunchImageOrientation' => 'Portrait',
                    'UILaunchImageSize' => '{834, 1194}'
                );
                push (@launchImages, \%imageDetailsHash);
                push (@launchImages, \%imageDetailsHash1);
            }
            $json_ref->{'UILaunchImages~ipad'} = \@launchImages;
        }else{
            delete($json_ref->{'UILaunchImages~ipad'});
        }

        if ($#customFontFiles != -1) {
            $json_ref->{'UIAppFonts'} = \@customFontFiles;
        }

        if ($appIconGlossyEffect && $appIconGlossyEffect =~ /false/) {
            $json_ref->{'UIPrerenderedIcon'} = "true";
        }

    #    Added image assets to project.

    #    if ($logoRscID !~ /^$/) {
    #        my $logoRscName = $logoRscID;
    #        $logoRscName =~ s/\.png$//g;
    #
    #        my @resourcesList = ();
    #        # Find all the resource files
    #        open DIR, "ls  $rscHandler->{_NLResources}/$logoRscName* 2>/dev/null |" or die 'Can not open \"$srcDir\" directory';
    #        chomp(@resourcesList = <DIR>);
    #        close DIR;
    #        my @logoNames = ();
    #        for my $logoResource (@resourcesList) {
    #            my $logobasename = basename $logoResource;
    #            push(@logoNames, $logobasename);
    #        }
    #        $json_ref->{'CFBundleIconFiles'} = \@logoNames;
    #    }
        $json_ref->{'CFBundleIconName'} = "AppIcon";
        $json_ref->{'CFBundleIcons~ipad'} = {};
        $json_ref->{'appID'} = "$appID";

        if($enableLaunchScreenStoryBoard == 0){
            if ($appLaunchMode && $appLaunchMode =~ /landscape/) {
                if ($appMetaDataForSplash{"splashlandscapeimage"} && $appMetaDataForSplash{"splashlandscapeimage"} !~ /^$/) {
                    $json_ref->{'UILaunchImageFile'} = $appMetaDataForSplash{'splashlandscapeimage'};
                } else {
                    my $splashImageName = "";
                    if ($projectFilePath !~ /VMAppWithKonylib/)
                    {
                        $splashImageName = "splashscreen.png" ;
                    }
                    $json_ref->{'UILaunchImageFile'} = $splashImageName;
                }
            }
            else {
                if ($appMetaDataForSplash{"splashimage"} && $appMetaDataForSplash{"splashimage"} !~ /^$/) {
                    $json_ref->{'UILaunchImageFile'} = $appMetaDataForSplash{'splashimage'};
                } else {
                    my $splashImageName = "";
                    if ($projectFilePath !~ /VMAppWithKonylib/)
                    {
                        $splashImageName = "splashscreen.png" ;
                    }
                    $json_ref->{'UILaunchImageFile'} = $splashImageName ;
                }
            }
            
            $launchImageFile = $json_ref->{'UILaunchImageFile'};
        }else{
            delete($json_ref->{'UILaunchImageFile'});
        }

        PlistUtil::createPLISTFromJSON($json_ref, "./Info.plist");


        ########### adding 3DTouch Static Quick Actions ##################
        my $staticQuickActionsFile = 'konyappunzipped/StaticQuickActions.xml';

        if (-e $staticQuickActionsFile)
        {
            my $output=`python3 AddingSaticQuickActions.py Info.plist ./konyappunzipped/StaticQuickActions.xml`;
            print $output;
        }
        ########### adding 3DTouch Static Quick Actions ##################

        ##################Writing json dict to Info.plist ############################
        
        my $jsonFile = $konyappunzipdir."/"."resources/".$platformName."/infoplist_configuration.json";
        
        my %jsDict;
        
        if (-f $jsonFile) {
        
            my %perlDict = JSON_PLIST::readJsonFileAndConvertToPerlDict($jsonFile);
            my %appDict;

            keys %perlDict;
            
            #Custom Configurations defined by kony that can given either through infoplist_configuration.json (or)
            # Info.plist of KonyJS Target
            my @konyCustomConfigs = ("statusBarHidden", "KONY_CAMERA", "accessibilityEnabled" ,
                                     "statusBarStyle", "genericexceptionalert", "encoding",
                                     "enableIntegralsInLayout", "supported_environment", "exceptionOnInvalidPopupContext",  "FileProtection",
                                     "Always Run on Main Thread", "ServiceSimulator", "FriendlyWidgetIDMode",
                                     "destroyWidgetViewsOnlyOnLowMemory", "exceptionalert", "extendBottom",
                                     "extendTop", "inputaccessoryviewtype", "respectShadowDirection",
                                     "backward_compatibility_mode", "CanAddWidgetToMultipleParents", "pasteboardtype" ,
                                     "globalsmonitoring", "allowselfsignedcertificate","fileExcludeFromBackup",
                                     "imageWidgetURLCache", "textBoxDefaultLeftPadding", "showBackgroundUpdateIndicator",
                                     "allowbundledandsystemdefault", "allowbundledonly", "JSReadOnlyPropertyModifyExceptionRequired",
                                     "oldToolBar", "ShouldReturnOldDeviceInfo","enableVideoWidget","defaultRemoteNotificationCallbackBehaviour", "KonyHTTPPublicKeyPinning","enablePeriodAtBeginningForTextBoxWidget", "NFIConfig", "shouldValidateDefaultNumbers", "enableImageWithZeroCompression", "setSplashVideoGravityType","enableLoggerFramework"
                                    );
            
            while(my($key, $value) = each %perlDict) {
                if(grep { $_ eq $key} @konyCustomConfigs){
                    #print $key." = ".$value."\n";
                    $jsDict{$key} = $value;
                }else{
                    $appDict{$key} = $value;
                }
            }
            
            if(%appDict)
            {
                if(exists($appDict{'unicodeAppNameFlag'})){
                    delete($appDict{'unicodeAppNameFlag'});
                }
                if(exists($appDict{'decodeAppName'})){
                    delete($appDict{'decodeAppName'});
                }
                if(exists($appDict{'useLaunchScreenStoryBoard'})){
                    delete($appDict{'useLaunchScreenStoryBoard'});
                }
                open(PLISTFILE, "<","Info.plist") or die "Couldn't openInfo.plist file, $!";
                JSON_PLIST::WriteJsonDictToPlist(\%appDict, \*PLISTFILE,"Info.plist");
            }
        }

        #If video widget is enabled, add an entry to the info.plist file.
        if ($enableVideoWidget) {
            $jsDict{'enableVideoWidget'} = "true";
        }
        
        if($isLibraryBuild){
            $jsDict{'CFBundleIdentifier'} = $bundleID;
        }else{
            $jsDict{'CFBundleIdentifier'} = "com.kony.KonyJS";
        }
        
        if ($FriendlyWidgetDisabled) {
            $jsDict{'FriendlyWidgetIDMode'} = 'false';
        }else {
            $jsDict{'FriendlyWidgetIDMode'} = 'true';
        }
        
        #print Dumper(\%jsDict);
        #print Dumper(\%appDict);
        
        open(PLISTFILE, "<","$rscHandler->{_basePathForProjectAsset}/KonyJS/Info.plist") or die "Couldn't openInfo.plist file, $!";
        JSON_PLIST::WriteJsonDictToPlist(\%jsDict, \*PLISTFILE,"JSInfo.plist");
        system "cp JSInfo.plist $rscHandler->{_basePathForProjectAsset}/KonyJS/Info.plist";
        
        # writeFromJsonFileToPlistIfPresent($konyappunzipdir."/"."resources/".$platformName."/infoplist_configuration.json", "Info.plist","Info.plist");
        ##################Writing json dict to Info.plist ############################

        system "cp Info.plist $rscHandler->{_basePathForProjectAsset}/Info.plist";

    }
        

    #print Dumper(\@appsplashmetadata);
    my $launchImageFileForLandscapeMode = $appMetaDataForSplash{"splashlandscapeimage"};
    #print "Launch Image : ".$launchImageFile."\n";
    #print "Landscape Launch Image : ".$launchImageFileForLandscapeMode."\n";
    my ($imageName,$extension) = undef;
    if($enableLaunchScreenStoryBoard == 0){
        ($imageName,$extension) = split (/(\.[^.]+)$/,$launchImageFile);
    }
        
    my @splashimagenamesiphone = (
        '',
        '-568h@2x',
        '-667h@2x',
        '-736h@3x',
        '-812h@3x',
        '-896h@2x',
        '-896h@3x'
    );

    my @splashimagenamesipad = (
        '',
        '@2x',
        '-1194h@2x'
    );


    my @templatesplashimages = (
        '2048x1496',
        '1668×2224',
        '1536×2048',
        '1496x2048',
        '2224x1668',
        '2048x1536',
        '-Landscape',
        '-LandscapeLeft',
        '-LandscapeRight',
        '-Portrait',
        '-PortraitUpsideDown',
        '-Landscape@2x',
        '-Portrait@2x',
        '-Landscape@2x~ipad',
        '-Landscape~ipad',
        '-Portrait~ipad'
    );

    for my $rscID (@mainBundleRscFiles) {
        XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
    }

    for my $rscID (@globalRscFiles) {
        my $resourceToAdd = "true";
        while ( my ( $key, $value ) = each %iphoneIpadAppIconsImagesNameHash ) {
            if ($targetDeviceFamily == 3){
                my $substring = "ipad";
                if (index($key, $substring) != -1) {
                    my $find = ".png";
                    my $replace = "~ipad.png";
                    $value =~ s/$find/$replace/g;
                }
            }
            if($value eq $rscID){
                $resourceToAdd = "false";
            }
        }
        if ($resourceToAdd eq "true"){
            #Adding Splash Images to the App Targets and all other resources
            # to JS targets
            if($launchImageFileForLandscapeMode){
                my ($landScapeImageName,$landScapeExtension) = split (/(\.[^.]+)$/,$launchImageFileForLandscapeMode);
                
                if($universalApp){
                    if((grep { $landScapeImageName.$_.'~ipad'.$landScapeExtension eq $rscID} @splashimagenamesipad)){
                        XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                        #print $rscID."\n";
                        next;
                    }
                }
                
                if((grep { $landScapeImageName.$_.$landScapeExtension eq $rscID} @splashimagenamesipad) || (grep { $landScapeImageName.$_.$landScapeExtension eq $rscID} @splashimagenamesiphone)){
                    XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                    #print $rscID."\n";
                    next;
                }
            }
            
            if($launchImageFile){
                
                if($universalApp){
                    if(grep { $imageName.$_.'~ipad'.$extension eq $rscID} @splashimagenamesipad){
                        XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                        #print $rscID."\n";
                        next;
                    }
                }
                
                if((grep { $imageName.$_.$extension eq $rscID} @splashimagenamesiphone) || (grep { $imageName.$_.$extension eq $rscID} @splashimagenamesipad)){
                    XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                    #print $rscID."\n";
                    next;
                }
            }
            
            if(@appsplashmetadata){
                if($universalApp){
                    my $rscAdded = 0;
                    for my $rsc (@appsplashmetadata){
                        my ($rscName,$rscExtension) = split (/(\.[^.]+)$/,$rsc);
                        if(grep { $rscName.$_.'~ipad'.$rscExtension eq $rscID} @splashimagenamesipad){
                            XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                            #print $rscID."\n";
                            $rscAdded = 1;
                            next;
                        }
                    }
                    if($rscAdded){
                        next;
                    }
                }
                
                if((grep { $_ eq $rscID} @appsplashmetadata)){
                    XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                    #print $rscID."\n";
                    next;
                }
            }
            
            if((grep { index($_,$rscID)!=-1 } @templatesplashimages)){
                XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                #print $rscID."\n";
                next;
            }
            
            if(($rscID eq "Settings.bundle") || ($rscID =~ /\.ttf$/)){
                XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@targets);
                #print $rscID."\n";
                next;
            }
            
            XCProjectEditor::addFileToGroupAndTargets($rscID, "<group>", $rscHandler->{_NLResourcesGroupPath}, \@jsTargets);
        }
    }
      
    ############################ Updating plist of watchKit ###########################

    if ($watchEnabled || $watchCompatabilityMode) {

        my $json_ref = PlistUtil::convertPLISTFileToJSON("../KWatchOS2 Extension/Info.plist");
        if ($bundleID && $bundleID !~ /^$/)
        {
            $json_ref->{"CFBundleIdentifier"} = $bundleID.".watchkitapp.watchkitextension";
            $json_ref->{"KonyBundleIdentifier"} = $bundleID;
            $json_ref->{'NSExtension'}{'NSExtensionAttributes'}{"WKAppBundleIdentifier"} = $bundleID.".watchkitapp";
        }
        PlistUtil::createPLISTFromJSON($json_ref, "../KWatchOS2 Extension/Info.plist");

        $json_ref = PlistUtil::convertPLISTFileToJSON("../KWatchOS2/Info.plist");
        if ($bundleID && $bundleID !~ /^$/)
        {
            $json_ref->{"CFBundleIdentifier"} =  $bundleID.".watchkitapp";
            $json_ref->{"WKCompanionAppBundleIdentifier"} = $bundleID;
        }
        if ($bundleVersion && $bundleVersion !~ /^$/)
        {
            $json_ref->{"CFBundleVersion"} = $bundleVersion;
        }
        if ($applicationVersion && $applicationVersion !~ /^$/)
        {
            $json_ref->{'CFBundleShortVersionString'} = $applicationVersion;
        }
        if ($appName && $appName !~ /^$/)
        {
            $json_ref->{"CFBundleDisplayName"} = $appName;
        }
        PlistUtil::createPLISTFromJSON($json_ref, "../KWatchOS2/Info.plist");
    }

    ########################### Updating plist of watchKit ###########################

     if($arxanProtectionNeeded == 1){
         print "Arxan EnsureIT Flags are added to the Xcode project. MAKE SURE \"gs.cpp\" is in same folder as xcode project. \n"
     }


    makeCleanRscDir("$rscHandler->{_NativeBinding}/Extension");
    #Remove dynamically created scheme's for extension which doesnot contain in '@arrScheme' array.
    #Array holding valid sceheme names.


    if (-e $existingSchemedir) {
        opendir (DIR, $existingSchemedir) or die $!;
        while (my $file = readdir(DIR)) {
            if ($file ne ".DS_Store" & $file ne "." & $file ne "..") {
                $file = $file =~ s/.xcscheme//r;
                if (!grep( $_ eq $file, @arrScheme)) {
                    if (-e "$existingSchemedir/$file.xcscheme"){
                        system("rm '$existingSchemedir/$file.xcscheme'");
                    }
                }
            }
        }
    }

    if (-e $appExtenionPath){
        #Clean Generated Bindling folder
        foreach my $targetName (@targets)
        {
            XCProjectEditor::addBuildPhaseToTarget(XCProjectEditor::makePBXCopyFilesBuildPhase("Embed App Extensions", undef, 13), $targetName);
        }
        my @extensionFOldername = ();
        opendir my $dh, $appExtenionPath
        or die "$0: opendir: $!";
        while (defined(my $name = readdir $dh)) {
            next unless -d "$appExtenionPath/$name";
            if($name ne ".DS_Store" & $name ne "." & $name ne ".."){
                push @extensionFOldername, $name ;
            }
        }
        close $dh;
        for (my $i = 0; $i < @extensionFOldername; $i++){
            my $file = $extensionFOldername[$i];
            if($nfiTpOpt){
                my $extensionFolderPath = "$appExtenionPath/$file";
                my $extensionName = $file;
                print("[App-Extensions]: Generating for $extensionName\n");
                #create Unified Library.
                my $destinationPathForUnifiedLibForExtension = "nativebinding/Extension/$extensionName";
                #Run Share script.
                system "perl extract-extension.pl $extensionFolderPath $destinationPathForUnifiedLibForExtension";
                addAppExtension($extensionFolderPath, undef);
            }else{
                my $extensionFolderPath = "$appExtenionPath/$file";
                my $extensionName = $file;
                #create Unified Library.
                my $destinationPathForUnifiedLibForExtension = "$rscHandler->{_NativeBinding}/Extension/$extensionName";
                makeCleanRscDir("$rscHandler->{_NativeBinding}/Extension/$extensionName");
                my $isUnifiedLibGenerated = genrateUnifiedLibraryForExtension($extensionFolderPath,$extensionName);
                #Run Share script.
                my @extensionFramework = createFrameworkListFromNativeBinding();
                system "perl extract-extension.pl $extensionFolderPath $destinationPathForUnifiedLibForExtension";
                addAppExtension($extensionFolderPath, \@extensionFramework);
            }
        }
    }

    # To create the .xcasset file.
    my $vectorImagePath = "$konyappunzipdir/resources/common/vector";
    my $vectorAssetName = "Vector.xcassets";

    if (-e $vectorImagePath) {
        print "Vector Images Found.\n";
        #create the *.xcasset represenation for pdf vector images at luavmiphone location.
        my $newCurrentPath = "../gen";
        chdir $newCurrentPath;
        my $vectordir = "$rscHandler->{_basePathForProjectAsset}/$vectorAssetName";
        if (-e $vectordir){
            system "rm -rf $vectordir/*"
        }
        mkdir $vectordir unless -d $vectordir;
        system "cp '../gen/VectorHelperFiles/Contents.json' '$vectordir'";
        #now create the sub directory *.imageset under Vector.xcassets
        opendir (DIR, $vectorImagePath) or die $!;
        while (my $file = readdir(DIR)) {
            if($file ne ".DS_Store" & $file ne "." & $file ne ".."){
                my $fileName = $file;
                $fileName =~ s/\.\w{3}$//; #remove the extension from fileName.
                my $imageSetDir  = "$vectordir/$fileName.imageset";
                mkdir $imageSetDir unless -d $imageSetDir;
                system "cp '$vectorImagePath/$file' '$imageSetDir'";
                if(-e "$imageSetDir/Contents.json"){
                    system("rm -rf $imageSetDir/Contents.json");
                }
                open my $fileHandle, ">>", "$imageSetDir/Contents.json" or die "Can't open '$imageSetDir/Contents.json'\n";
                print $fileHandle "";
                print $fileHandle "{ \n".
                "\t\"images\" : [ \n".
                "\t\t{\n".
                    "\t\t\t\"idiom\" : \"universal\",\n".
                    "\t\t\t\"filename\" : \"$file\"\n".
                "\t\t}\n".
                "\t],\n".
                "\t\"info\" : {\n".
                    "\t\t\"version\" : 1,\n".
                    "\t\t\"author\" : \"xcode\"\n".
                "\t},\n".
                "\t\"properties\" : {\n".
                    "\t\t\"preserves-vector-representation\" : true\n".
                "\t}\n".
            "\}";
                close $fileHandle;
            }
        }
        # add the created Vector.xcassets into xcode project
        XCProjectEditor::addFileToGroupAndTargets($vectorAssetName, "<group>", $rscHandler->{_basePathForGroupFromRoot}, \@jsTargets);
    }
        
    if($rscHandler->{_context} eq "AppClip"){
        # Setting Mandatory Key "com.apple.developer.parent-application-identifiers" in AppClip Entitlements File with value "$(AppIdentifierPrefix)<Main App Bundle ID>".
        $capabilitiesEnabled = 1;
        my $parentAppBundleIdentifier = $parentAppConfig{'CFBundleIdentifier'};
        my @parentIdentifiers = ( "\$\(AppIdentifierPrefix\)$parentAppBundleIdentifier" );
        $projectCapabilities{"com.apple.developer.parent-application-identifiers"} = \@parentIdentifiers ;
    }
        
    my %hash = (
        "enabled" => ''.$capabilitiesEnabled
    );
#    print Dumper(\%projectCapabilities);
    my $encodedAppName = $unicodeAppNameConfigurationFlag == 1 ? $unicodeAppName : $appName;
    if(%projectCapabilities){
        # Cleaning Entitlements files only in case of Main App as cleaning of App Clip's Entitlements files happens while cleaning App Clips Folder.
        if($rscHandler->{_context} eq "MainApp"){
            XCProjectEditor::cleanCapabilities($appName);
        }
        XCProjectEditor::addCapabilitiesToProject($appName,$encodedAppName,\%projectCapabilities,\@targets,\%hash);
    }
    
    updateProductName();
    
    # NFI configurator call here
    if($enableJSBindings && $nfiTpOpt){
        my $projectFilePath = '';
        if( -e "../VMAppWithKonylib.xcodeproj" ){
            $projectFilePath = "../VMAppWithKonylib.xcodeproj/project.pbxproj";
        }else{
            $projectFilePath = "../VMAppWithKonylib.xcodeproj/project.pbxproj";
        }
        my $appPropFilePath = "../../gen/konyappunzipped/application.properties";
        my $videoJSFilePath = "../preBundledSSM/video/konyVideoWidget.js";
        my $nficonfigurator;
        my $NFILoaderTarget = "NFILoader";
        if($rscHandler->{_context} eq "AppClip"){
            $NFILoaderTarget = "KAppClipNFILoader";
        }
        
        if(defined $nfiDebugOpt && $nfiDebugOpt =~ /sim/){
            print "Debug Mode For Simulator\n";
            $nficonfigurator = new NFIConfigurator($nfiVersion, $projectFilePath, $appPropFilePath, $rscHandler, \@targets, $NFILoaderTarget, $konyappunzipdir, "debug", "simulator", $enableVideoWidget, $videoJSFilePath, $isLibraryBuild);
            $nficonfigurator->configure_debug();
        }elsif (defined $nfiDebugOpt && $nfiDebugOpt =~ /dev/){
            print "Debug Mode For Device\n";
            $nficonfigurator = new NFIConfigurator($nfiVersion, $projectFilePath, $appPropFilePath, $rscHandler, \@targets, $NFILoaderTarget, $konyappunzipdir, "debug", "device", $enableVideoWidget, $videoJSFilePath, $isLibraryBuild);
            $nficonfigurator->configure_debug();
        }else{
            print "Release Mode\n";
            $nficonfigurator = new NFIConfigurator($nfiVersion, $projectFilePath, $appPropFilePath, $rscHandler, \@targets, $NFILoaderTarget,$konyappunzipdir, "release", "simulator", $enableVideoWidget, $videoJSFilePath, $isLibraryBuild);
            $nficonfigurator->configure();
        }
        
    }

    #************************ Modification for Automation Starts *********************
    # To add automationScripts .js in ../AutomationScripts/
    my $projectName = "VMAppWithKonylib.xcodeproj";
    my $targetName = "KRelease";
    my $node = "//Scheme/BuildAction/BuildActionEntries";
        
    if($rscHandler->{_context} eq "AppClip"){
        $targetName = "KAppClip";
    }
        
    if ($automationEnabled){
        print "Into Automation Mode\n";
        cleanAutomationScriptsFolder();
        my $existingSchemedir = "../$projectName/xcshareddata/xcschemes";
        my $automationScriptPath = "$konyappunzipdir/javascript/Automation/";
        my $targetFolderName = "AutomationScripts";
        XCProjectEditor::addFileToGroupAndTargets("AutomationScripts", "<group>", "", ["KRelease"]);
        my @systemFrameworksForAutomationFramework = ('JavaScriptCore.framework','MapKit.framework','CoreLocation.framework');
        addSystemFrameworksToTargets(\@systemFrameworksForAutomationFramework,\@targets);
        modifyBuildSettingBasedOnProjectType($targetName,$projectName,$existingSchemedir);
        addTestFrameworksToEmbededBinariesAndFramework();

        my %AutomationBuildConfig = ('AUTOMATION_MODE' => 'YES');
        XCProjectEditor::updateBuildSettingsForTarget($targetName, \%AutomationBuildConfig);
        #createAndAddKonyTestTarget();
        modifyKReleaseSchemeForAutomation($targetName,$node,$existingSchemedir,$projectName);
    }else{
        if($rscHandler->{_context} eq "MainApp"){
            my $existingSchemedir = "../$projectName/xcshareddata/xcschemes";
            resetKReleaseSchemeToOriginalStateWhenAutomationIsNotInUse($targetName,$node,$existingSchemedir,$projectName);
            my %AutomationBuildConfig = ('AUTOMATION_MODE' => 'NO');
            XCProjectEditor::updateBuildSettingsForTarget($targetName, \%AutomationBuildConfig);
        }
    }

    #************************ Modification for Automation Ends *********************

    #Using Storyboard as Launch Screen
    if ($enableLaunchScreenStoryBoard) {
        print "Launch screen storyboard enabled\n";
                        
        if($targetDeviceFamily == 3){
            #for universal build, copying KonyLaunch.storyboard to KonyLaunchIpad.storyboard
            system "cp $rscHandler->{_LaunchStoryBoard}/KonyLaunch.storyboard $rscHandler->{_LaunchStoryBoard}/KonyLaunchIpad.storyboard";
        }
        
        my $launchStoryboardHelper = new LaunchStoryboardHandler($targetDeviceFamily,$rscHandler);
        $launchStoryboardHelper->generateLaunchStoryboard();
        
        XCProjectEditor::addFileToGroupAndTargets("KonyLaunch.storyboard", "<group>", "$rscHandler->{_LaunchStoryBoardGroupPath}/KonyLaunch.storyboard", \@targets);
        if($targetDeviceFamily == 3){
            #for universal build adding KonyLaunchIpad.storyboard to app target
            XCProjectEditor::addFileToGroupAndTargets("KonyLaunchIpad.storyboard", "<group>", "$rscHandler->{_LaunchStoryBoardGroupPath}/KonyLaunchIpad.storyboard", \@targets);
        }

    #	add Launch screen interface file base name to info plist
    #	UILaunchStoryboardName	UILaunchStoryboardName~ipad
        my $json_ref = PlistUtil::convertPLISTFileToJSON("$rscHandler->{_basePathForProjectAsset}/Info.plist");
        $json_ref->{'UILaunchStoryboardName'} = 'KonyLaunch';
        if($targetDeviceFamily == 3){
            #Adding KonyLaunchIpad.storyboard to info.plist
            $json_ref->{'UILaunchStoryboardName~ipad'} = 'KonyLaunchIpad';
        }
        PlistUtil::createPLISTFromJSON($json_ref, "$rscHandler->{_basePathForProjectAsset}/Info.plist");
    }

    configureSQLCipherIfNeeded();

    if($enableReactNative == 1){
        my @pathReactXcodeproj = `find "$konyappunzipdir/ReactNativeProjects" -name "React.xcodeproj"`;
        chomp(@pathReactXcodeproj);
        if(scalar(@pathReactXcodeproj) > 0){
            addReactNativeLibrariesToProject();
        }
    }
    
    # In KAR file neither konylogger.xcframework nor konylogger.framework exists
    # Adding default konylogger.xcframework
    my $konyLoggerXCFrameworkFileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('FFI/konyLogger/KonyLogger.xcframework', "SOURCE_ROOT");
    my $konyLoggerFrameworkFileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('FFI/konyLogger/KonyLogger.framework', "SOURCE_ROOT");
    unless($konyLoggerXCFrameworkFileRef || $konyLoggerFrameworkFileRef){
        my $fileRef = XCProjectEditor::makePBXFileReference("FFI/konyLogger/KonyLogger.xcframework", "SOURCE_ROOT");
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "FFI/konyLogger/", undef, undef, \@targets);
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "FFI/konyLogger/", undef, undef, \@jsTargets);
        my %builSettings =  ( "ATTRIBUTES" => ["CodeSignOnCopy"] );
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "FFI/konyLogger/", \%builSettings, "Embed Frameworks", \@targets);
    }

    # In KAR file neither CMS.xcframework nor CMS.framework exists
    # Adding default CMS.xcframework
    my $cmsXCFrameworkFileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('KonySDK/CMS.xcframework', "SOURCE_ROOT");
    my $cmsFrameworkFileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('KonySDK/CMS.framework', "SOURCE_ROOT");
    unless($cmsXCFrameworkFileRef || $cmsFrameworkFileRef){
        my $fileRef = XCProjectEditor::makePBXFileReference("KonySDK/CMS.xcframework", "SOURCE_ROOT");
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "KonySDK/", undef, undef, \@targets);
        my %builSettings =  ( "ATTRIBUTES" => ["CodeSignOnCopy"] );
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, "KonySDK/", \%builSettings, "Embed Frameworks", \@targets);
    }

    if(! -e "../VMAppWithKonylib.xcodeproj"){
        require DevAutomation;
        DevAutomation::setup($devAutomationMode);
    }
}


my $mainAppArtefact = shift(@ARGV); # KAR file of Main Application
    
@targets = XCProjectEditor::getApplicationTargets();  # Setting App Target for Main App.
@jsTargets = ("KonyJS"); # Setting JS Target for MainApp.
    
require ResourceHandler;
$rscHandler =  new ResourceHandler("MainApp","..",""); # Resource handler instance contains absolute path and group path for each resource w.r.t MainApp
    
XCProjectEditor::setResourceHandler($rscHandler); # Setting current Resource handler to MainApp's Resource Handler
    
processVizArtefact($mainAppArtefact); # Process the MainApp KAR file.
    
######################### Processing AppClip #########################
    
makeCleanRscDir("$rscHandler->{_basePathForProjectAsset}/AppClips"); # Cleans AppClip Folder

# When --appClip <KAR File Path> is passed in perl extraction
if(defined $appClip){
    
    @targets = ("KAppClip"); # Setting App Target for AppClip.
    @jsTargets = ("KAppClipJS"); # Setting JS target for AppClip.
    
    my $appClipHandler = new AppClipHandler("KAppClip","KAppClipJS", "KAppClipNFILoader","AppClips/KAppClip");# Adds KAppClip, KAppClipJS and KAppClipNFILoader targets to project.
    $appClipHandler->init(); # Initialization
    
    $rscHandler =  new ResourceHandler("AppClip","../AppClips/KAppClip","AppClips/KAppClip/"); # Resource handler instance contains absolute path and group path for each resource w.r.t AppClip
    
    XCProjectEditor::setResourceHandler($rscHandler); # Setting current Resource handler to AppClip's Resource Handler
    
    processVizArtefact($appClip); # Process the AppClip KAR file.
}
    
######################################################################
    
XCProjectEditor::createProject();# end of creating project file...
if($enableReactNative == 1){
    installReactNativeSpecificPodlibs();
}
    
#During plugin build, all the instances of VMAppWithKonylib.xcodeproj will get replaced with VMAppWithKonyLib.xcodeproj making the conditional statement true.
#That is the reason we shouldn't have any condition containing VMAppWithKonylib.xcodeproj.
    
if(! -e "../VMAppWithKonylib.xcodeproj"){
    replaceStringInFile("VM_DIR=.*","VM_DIR=$luavmiphone_absolute_path",'../SharedConfig/Shared.xcconfig');
}

my $iosCustomBuildFile = "ios_custom_build.pl";
if(-f $iosCustomBuildFile){
    system "perl $iosCustomBuildFile";
}

#Execute the main perlscript file and pass project path as parameter.
my $platformCustomBuildFile = $customPerlScriptsFolder."/".$customPerlScriptsMainFileName;
if(-f $platformCustomBuildFile){
    system "perl $platformCustomBuildFile $projectFilePath";
}
print "Done.\n";
