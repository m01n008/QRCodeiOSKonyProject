#!/usr/bin/perl -w

# Create a cordova app using AppName
# Add CordovaLib Project to VM
# Add config.xml to project root
# Add CordovaLib dependency
# Add Plugins to  Plugins Directory


#Querries
#1. Where will the appname come from
#2. Where will the list of plugins come from

use Getopt::Long;
use Data::Dumper;
use Cwd;
use File::Copy;

my $cordovaAppName ;
my $appPropFile = $ARGV[1];
my $cordovaGlobal = $ARGV[2];
my $cordovaVersion = $ARGV[3];
my $cordovaPath = $ARGV[4];
#my $cordovaPath = 'cordova';

sub isCordovaInstalled {

	my $retVal = system "$cordovaPath --version";
	#if ($retVal)
	#TODO add logic to process retVal

	return 1;

}

sub makeCleanAppDir {
	my $dir = shift @_;

	if (-d "$dir") {
		system "rm -rf $dir";
	}
}
my $cordova_app_config_file = '../web/cordova/config.xml';
#GetOptions("AppName=s" => \$cordovaAppName);

if (! -e $cordova_app_config_file) {
	die "Cordova App not found in KAR file";
}

# read the cordova app name from config.xml in web/cordova/ directory
my $extract_app_name_cmd = 'sed -ne \'/name/{s/.*<name>\(.*\)<\/name>.*/\1/p;q;}\' ../web/cordova/config.xml';

$cordovaAppName = `$extract_app_name_cmd`;
chomp($cordovaAppName);
print "CordovaApp $cordovaAppName found \n";

if (!$cordovaAppName) {
	print "AppName missing : usage cordova_app_gen.pl --AppName=<MyApp> \n";
	exit 0;
}

# Check if cordova is installed
if (!isCordovaInstalled) {
	print "Cordova not installed \n";
	exit 0;
}


#cleanup the dir
makeCleanAppDir($cordovaAppName);

#store current working directory for future use
my $cwd = getcwd();
my $project_root_dir = "../";
#Create cordova app using cordova CLI
#print "Generating cordova app :$cordovaAppName \n";
system "$cordovaPath create $cordovaAppName com.kony.$cordovaAppName $cordovaAppName";

# Create cordova app directory for temporary app building
#mkdir $cordovaAppName unless -e  $cordovaAppName and -d $cordovaAppName;

#copy cordova app source files from web folder
system "cp -r ../web/cordova/* $cordovaAppName";

#Change current working directory to run cordova CLI commands
chdir($cordovaAppName);

#add ios platform to cordova app
system "$cordovaPath platform add ios";

#Now build the cordova app
system "$cordovaPath build ios --device > /dev/null 2>&1";

system "$cordovaPath build ios --emulator > /dev/null 2>&1";

chdir($cwd);
print "Cordova app : $cordovaAppName built succesfully \n";

#copy config.xml
my $config_xml_path = "./$cordovaAppName/platforms/ios/$cordovaAppName/config.xml";

if (-e $config_xml_path) {
	system "cp $config_xml_path $project_root_dir";
}else{
	print "config.xml not found. exiting ";
	exit;
}

#copy CordovaLib
system "cp -R ./$cordovaAppName/platforms/ios/CordovaLib ../ ";


#remove existing plugins
system "mkdir ../Plugins/" unless (-d "../Plugins") ;

my @pluginFiles = glob("../Plugins/*");

foreach $pluginfile (@pluginFiles) {
	next unless (-f $pluginfile) ;
	unlink $pluginfile;
}

#Copy frameworks if any to Plugins Folder
my $cordovaFrameworks = `find ./$cordovaAppName/platforms/ios/$cordovaAppName/Plugins -name "*.framework"`;
my $cordovaXCFrameworks = `find ./$cordovaAppName/platforms/ios/$cordovaAppName/Plugins -name "*.xcframework"`;
$cordovaFrameworks = $cordovaFrameworks.$cordovaXCFrameworks;
my @cordovaFrameworksList = split('\n',$cordovaFrameworks);

for my $framework (@cordovaFrameworksList)
{
    if(-d $framework ){
    	if(index($framework,".framework") != -1 && index($pluginfile,".xcframework") != -1)
    	{
    		next;
    	}
        #copying frameworks
        `cp -r $framework ../Plugins/`;
    }
}

# Copy all plugins available under plugins diectory of cordova app
@pluginFiles = glob("./$cordovaAppName/platforms/ios/$cordovaAppName/Plugins");


$fileList = `find "./$cordovaAppName/platforms/ios/$cordovaAppName/Plugins" -type f`;
@pluginFiles = split('\n', $fileList);

foreach $pluginfile (@pluginFiles){
	next unless (-f $pluginfile) ;
    if (index($pluginfile,".framework") == -1 && index($pluginfile,".xcframework") == -1){
        copy($pluginfile,"../Plugins/");
    }
}


#copy platform specific cordova app source files from newly built app
system "cp -r ./$cordovaAppName/platforms/ios/www/* ../web/cordova/www/";
#system "cp -r ./$cordovaAppName/www/* ../web/cordova/www/";

#Remove cordova plugins folder
my @dirs = grep { -d } glob '../web/cordova/plugins';
foreach $plugins (@dirs){
    if ((index($plugins, "plugins") != -1) && (-d $plugins)) {
        system "rm -rf $plugins";
        print "Removed $plugins \n";
    }
}

#Remove node_modules folder
@dirs = grep { -d } glob '../web/cordova/node_modules';
foreach $nodemodules (@dirs){
    if ((index($nodemodules, "node_modules") != -1) && (-d $nodemodules)) {
        system "rm -rf $nodemodules";
        print "Removed $nodemodules \n";
    }
}

#Remove platforms folder from cordova
my @platformDir = grep { -d } glob '../web/cordova/platforms';
foreach $platforms (@platformDir){
    if ((index($platforms, "platforms") != -1) && (-d $platforms)) {
        system "rm -rf $platforms";
        print "Removed $platforms \n";
    }
}

#makeCleanAppDir($cordovaAppName);
exit 0;
