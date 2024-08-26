use File::Copy;
use Cwd qw(abs_path);
use XML::LibXML;
my ($appExtensionFolderPath,$unifiedLibPath) = @ARGV;

my $projectName = "VMAppWithKonylib.xcodeproj";
my $extensionTypeValue = undef;
my $displayNameFound = 0;
my $extensionTypeFound = 0;
my $typeExtensionOfShareIsDefault = 0;
my $typeExtension = undef;
my $type = undef;
if(-e "$appExtensionFolderPath/Info.plist")
{
    open PLISTFILE, "<", "$appExtensionFolderPath/Info.plist"  or die "Can not open Info.plist file!";
    while (<PLISTFILE>) {
        $line = $_;
        if ($line =~ /<key>CFBundleDisplayName<\/key>/) {
            $displayNameFound = 1;
        } elsif ($displayNameFound) {
            $displayNameFound = 0;
            $extensionName = $line;
        } elsif ($line =~ /<key>NSExtensionPointIdentifier<\/key>/) {
            $extensionTypeFound = 1;
        } elsif ($extensionTypeFound) {
            $extensionTypeFound = 0;
            $extensionTypeValue = $line;
        }elsif ($line =~ /<key>NSExtensionMainStoryboard<\/key>/){
            $typeExtensionOfShareIsDefault = 0;
            $typeExtension =  "Default";
        } elsif ($line =~ /<key>NSExtensionPrincipalClass<\/key>/){
            $typeExtensionOfShareIsDefault = 1;
            $typeExtension =  "CustomUI";
        }
    }
    close PLISTFILE;
}
else{
    print ("Cannot Found Info.plist\n");
}
$extensionName = ltrim($extensionName);
$extensionName = rtrim($extensionName);
$extensionName = filterString($extensionName);
if ($extensionName eq ""){
    print "AppExtension Error : Extension Name is empty, please provide extension name in Info.plist!\n";
    exit;
}
$extensionTypeValue = filterString($extensionTypeValue);
$extensionTypeValue = ltrim($extensionTypeValue);
$extensionTypeValue = rtrim($extensionTypeValue);
$extensionTypeValue = trim($extensionTypeValue);

if($extensionTypeValue eq ""){
    print "AppExtension Error : Missing NSExtensionPointIdentifier key or its value in Info.plist!\n";
    exit;
}

#Triming string subroutine
sub ltrim { my $s = shift; $s =~ s/^\s+//;       return $s };
sub rtrim { my $s = shift; $s =~ s/\s+$//;       return $s };
sub trim { my $s = shift; $s =~ s/ //g;       return $s };

if ($extensionTypeValue eq "com.apple.share-services"){
    $type = "Share";
}elsif($extensionTypeValue eq "com.apple.message-payload-provider"){
    $type = "Message";
}elsif($extensionTypeValue eq "com.apple.ui-services"){
    $type = "Action";
    $typeExtension = "UI";
}elsif($extensionTypeValue eq "com.apple.services"){
    $type = "Action";
    $typeExtension = "NON-UI";
}elsif($extensionTypeValue eq "com.apple.widget-extension"){
    $type = "Today";
}elsif($extensionTypeValue eq "com.apple.intents-service"){
    $type = "Intent";
}elsif($extensionTypeValue eq "com.apple.usernotifications.service"){
    $type = "NotificationService";
}elsif($extensionTypeValue eq "com.apple.usernotifications.content-extension"){
    $type = "NotificationContent";
}elsif($extensionTypeValue eq "com.apple.intents-ui-service"){
    $type = "IntentUI";
}elsif($extensionTypeValue eq "com.apple.PassKit.issuer-provisioning.authorization"){
    $type = "WalletUI";
}elsif($extensionTypeValue eq "com.apple.PassKit.issuer-provisioning"){
    $type = "Wallet";
}

if($type eq ""){
    print "AppExtension Error : NSExtensionPointIdentifier key is empty, please provide value in Info.plist!\n";
    exit;
}

sub filterString{
    my ($str) = @_;
    $str = $str =~ s/string//r;
    $str = $str =~ s/string//r;
    $str = $str =~ s/<>//r;
    $str = $str =~ s/<\/>//r;
    $str = $str =~ s/\n//r;
    $str = $str =~ s/\t//r;
    $str = $str =~ s/\t//r;
    return $str;
}

my $genPath = abs_path();
my $directory = "../$extensionName";
if (-d $directory){
    system("rm -rf '$directory'");
}
unless(mkdir $directory) {
    #die "Unable to create $directory\n";
}
chdir $directory;
my $currentPath = abs_path();
my $basedir = "$currentPath/Base.lproj";
mkdir $basedir unless -d $basedir;
system "cp '$genPath/$appExtensionFolderPath/Info.plist' '$currentPath'";
if ($type eq "Share"){
    if ($typeExtension eq "Default"){
        system "cp '$genPath/ExtensionHelperClasses/ShareExtension/DefaultUI/ShareViewController.h' '$currentPath'";
        system "cp '$genPath/ExtensionHelperClasses/ShareExtension/DefaultUI/ShareViewController.m' '$currentPath'";
        system "cp '$genPath/ExtensionHelperClasses/ShareExtension/DefaultUI/MainInterface.storyboard' '$currentPath/Base.lproj'";
    }else{
        system "cp '$genPath/ExtensionHelperClasses/ShareExtension/UI/ShareViewController.h' '$currentPath'";
        system "cp '$genPath/ExtensionHelperClasses/ShareExtension/UI/ShareViewController.m' '$currentPath'";
    }
    #Add App Icon Asset
    addIntoAsset("ShareExtension");
}elsif($type eq "Message"){
    system "cp '$genPath/ExtensionHelperClasses/MessageExtension/MessagesViewController.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/MessageExtension/MessagesViewController.m' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/MessageExtension/MainInterface.storyboard' '$currentPath/Base.lproj'";
    my $assestDir = "$currentPath/Assets.xcassets";
    mkdir $assestDir unless -d $assestDir;
    system "cp '$genPath/ExtensionHelperClasses/MessageExtension/Assets.xcassets/Contents.json' '$currentPath/Assets.xcassets'";
    my $assestDir1 = "$currentPath/Assets.xcassets/iMessage App Icon.stickersiconset";
    mkdir $assestDir1 unless -d $assestDir1;
    system "cp -r '$genPath/ExtensionHelperClasses/MessageExtension/Assets.xcassets/iMessage App Icon.stickersiconset/Contents.json' '$currentPath/Assets.xcassets/iMessage App Icon.stickersiconset'";
    #Add Message app Icon Asset
    my $appIconPath = "$genPath/$appExtensionFolderPath/resources/StickerIcon";
    if(-e $appIconPath){
        opendir (DIR, $appIconPath) or die $!;
        while (my $file = readdir(DIR)) {
            if($file ne ".DS_Store" && $file ne "." && $file ne ".."){
                system "cp -r '$appIconPath/$file' '$currentPath/Assets.xcassets/iMessage App Icon.stickersiconset'";
            }
        }
    }
}elsif($type eq "Action"){
    if ($typeExtension eq "NON-UI"){
        system "cp '$genPath/ExtensionHelperClasses/ActionExtension/NON-UI/ActionController.h' '$currentPath'";
        system "cp '$genPath/ExtensionHelperClasses/ActionExtension/NON-UI/ActionController.m' '$currentPath'";
    }elsif($typeExtension eq "UI"){
        system "cp '$genPath/ExtensionHelperClasses/ActionExtension/UI/ActionViewController.h' '$currentPath'";
        system "cp '$genPath/ExtensionHelperClasses/ActionExtension/UI/ActionViewController.m' '$currentPath'";
        system "cp '$genPath/ExtensionHelperClasses/ActionExtension/UI/MainInterface.storyboard' '$currentPath/Base.lproj'";
    }
    addIntoAsset("ActionExtension");
}elsif($type eq "Today"){
    system "cp '$genPath/ExtensionHelperClasses/TodayExtension/TodayViewController.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/TodayExtension/TodayViewController.m' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/TodayExtension/MainInterface.storyboard' '$currentPath/Base.lproj'";
    #Add App Icon Asset
    addIntoAsset("TodayExtension");
}elsif($type eq "Intent"){
    system "cp '$genPath/ExtensionHelperClasses/IntentExtension/IntentHandler.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/IntentExtension/IntentHandler.m' '$currentPath'";
    #Add App Icon Asset
    addIntoAsset("IntentExtension");
}elsif($type eq "NotificationService"){
    system "cp '$genPath/ExtensionHelperClasses/NotificationService/NotificationService.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/NotificationService/NotificationService.m' '$currentPath'";
}elsif($type eq "NotificationContent"){
    system "cp '$genPath/ExtensionHelperClasses/NotificationContent/NotificationViewController.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/NotificationContent/NotificationViewController.m' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/NotificationContent/MainInterface.storyboard' '$currentPath/Base.lproj'";
}elsif($type eq "IntentUI"){
    system "cp '$genPath/ExtensionHelperClasses/IntentUIExtension/IntentViewController.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/IntentUIExtension/IntentViewController.m' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/IntentUIExtension/MainInterface.storyboard' '$currentPath/Base.lproj'";
    #Add App Icon Asset
    addIntoAsset("IntentUIExtension");
}elsif($type eq "WalletUI"){
    system "cp '$genPath/ExtensionHelperClasses/WalletExtension/UI/WalletViewController.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/WalletExtension//UI/WalletViewController.m' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/WalletExtension/UI/MainInterface.storyboard' '$currentPath/Base.lproj'";
    #Add App Icon Asset
    addIntoAsset("WalletExtension");
}elsif($type eq "Wallet"){
    system "cp '$genPath/ExtensionHelperClasses/WalletExtension/NON-UI/WalletController.h' '$currentPath'";
    system "cp '$genPath/ExtensionHelperClasses/WalletExtension/NON-UI/WalletController.m' '$currentPath'";
    #Add App Icon Asset
    addIntoAsset("WalletExtension");
}
sub addAppiconIntoProject{
    #Add AppIcon In Image Asset for Appicon
    my $appIconPath = "$genPath/$appExtensionFolderPath/resources/AppIcon";
    if(-e $appIconPath){
        opendir (DIR, $appIconPath) or die $!;
        while (my $file = readdir(DIR)) {
            if($file ne ".DS_Store" && $file ne "." && $file ne ".."){
                system "cp '$appIconPath/$file' '$currentPath/Assets.xcassets/AppIcon.appiconset'";
            }
        }
    }
}

sub addIntoAsset{
    my ($extensionName) = @_;
    if (-e "$genPath/$appExtensionFolderPath/resources/AppIcon"){
        #Add Asset
        my $assestDir = "$currentPath/Assets.xcassets";
        mkdir $assestDir unless -d $assestDir;
        system "cp '$genPath/ExtensionHelperClasses/$extensionName/Assets.xcassets/Contents.json' $currentPath/Assets.xcassets";
        my $assestDir1 = "$currentPath/Assets.xcassets/AppIcon.appiconset";
        mkdir $assestDir1 unless -d $assestDir1;
        system "cp '$genPath/ExtensionHelperClasses/$extensionName/Assets.xcassets/AppIcon.appiconset/Contents.json' $currentPath/Assets.xcassets/AppIcon.appiconset";
        #Add AppIcon In Image Asset for Appicon
        addAppiconIntoProject();
    }
}
system "cp '$genPath/ExtensionHelperClasses/BridgeSupport.h' '$currentPath'";
#create Javascript directory inside extension folder
my $directoryJavascript = "JSScripts";
unless(mkdir $directoryJavascript) {
    die "Unable to create $directory\n";
}

my $javascriptPath = "$genPath/$appExtensionFolderPath/javascript";
if (-e $javascriptPath){
    opendir (DIR, $javascriptPath) or die $!;
    while (my $file = readdir(DIR)) {
        if($file ne ".DS_Store" & $file ne "." & $file ne ".."){
            system "cp '$genPath/$appExtensionFolderPath/javascript/$file' '$currentPath/JSScripts'";
        }
    }
}
#create Javascript,resource folder inside extension folder
chdir $currentPath;
my $directoryResources = "resources";
unless(mkdir $directoryResources) {
    die "Unable to create $directory\n";
}

my $resourcePath = "$genPath/$appExtensionFolderPath/resources";
if (-e $resourcePath){
    opendir (DIR, $resourcePath) or die $!;
    while (my $file = readdir(DIR)) {
        if($file ne ".DS_Store" & $file ne "." & $file ne ".." && $file ne "AppIcon"  && $file ne "StickerIcon"){
            system "cp '$genPath/$appExtensionFolderPath/resources/$file' '$currentPath/resources'";
        }
    }
}
chdir "..";
$currentPath = abs_path();
#copy the unified Lib into extension
my $unifiedLibCompletePath = "$currentPath/$unifiedLibPath";
if (-e $unifiedLibCompletePath){
    if (-e $unifiedLibPath){
        opendir (DIR, $unifiedLibCompletePath) or die $!;
        while (my $file = readdir(DIR)) {
            if($file ne ".DS_Store" & $file ne "." & $file ne ".."){
                system "cp '$unifiedLibCompletePath/$file' '$currentPath/$extensionName'";
            }
        }
    }
}

my $path = "$genPath/ExtensionHelperClasses/scheme.xml";
my $xml = 'XML::LibXML'->load_xml(location => $path) ;
my @actionList = ("BuildAction", "TestAction");
my $node = "//Scheme/BuildAction/BuildActionEntries/BuildActionEntry/BuildableReference/\@BlueprintIdentifier";
for my $url ($xml->findnodes($node)) {
    my $value = $url->getValue;
    if ($value =~ "ExtensionNativeTargetID"){
        $value = $keyNativeTarget;
    }
    $url->setValue($value);
}

$node = "//Scheme/BuildAction/BuildActionEntries/BuildActionEntry/BuildableReference/\@BuildableName";
for my $url ($xml->findnodes($node)) {
    my $value = $url->getValue;
    if ($value =~ "ExtensionName.appex"){
        $value = $extensionName.".appex";
    }
    $url->setValue($value);
}
$node = "//Scheme/BuildAction/BuildActionEntries/BuildActionEntry/BuildableReference/\@BlueprintName";
for my $url ($xml->findnodes($node)) {
    my $value = $url->getValue;
    if ($value =~ "ExtensionName"){
        $value = $extensionName;
    }
    $url->setValue($value);
}

$node = "//Scheme/TestAction/MacroExpansion/BuildableReference/\@BlueprintIdentifier";
for my $url ($xml->findnodes($node)) {
    my $value = $url->getValue;
    if ($value =~ "ExtensionNativeTargetID"){
        $value = $keyNativeTarget;
    }
    $url->setValue($value);
}

$node = "//Scheme/TestAction/MacroExpansion/BuildableReference/\@BuildableName";
for my $url ($xml->findnodes($node)) {
    my $value = $url->getValue;
    if ($value =~ "ExtensionName.appex"){
        $value = $extensionName.".appex";
    }
    $url->setValue($value);
}
$node = "//Scheme/TestAction/MacroExpansion/BuildableReference/\@BlueprintName";
for my $url ($xml->findnodes($node)) {
    my $value = $url->getValue;
    if ($value =~ "ExtensionName"){
        $value = $extensionName;
    }
    $url->setValue($value);
}
my $existingSchemedir = "$projectName/xcshareddata/xcschemes";
mkdir $existingSchemedir unless -d $existingSchemedir; # Check if dir exists. If not create it.
if (-e "$existingSchemedir/$extensionName.xcscheme"){
    system("rm '$existingSchemedir/$extensionName.xcscheme'");
}
open my $fileHandle, ">>", "$existingSchemedir/$extensionName.xcscheme" or die "Can't open '$existingSchemedir/xcscheme'\n";
print $fileHandle $xml;
close $fileHandle;
