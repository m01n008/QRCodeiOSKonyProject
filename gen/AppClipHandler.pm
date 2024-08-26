#==================================================================================================================================
#
#          FILE:  AppClipHandler.pm
#
#         USAGE:
#
#   DESCRIPTION:  This module creates and adds App Clips targets to project.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Aravind.Macharla KH2008
#       COMPANY:  Kony Labs
#       VERSION:  1.0
#       CREATED:  12/01/2021 7:34:01 PM IST
#      REVISION:  ---
#==================================================================================================================================

package AppClipHandler;

use Data::Dumper;
use JSON;
use File::Basename;
use XCProjectEditor;

use lib 'PerlLogger';
use PerlLogger ':constants';

my $logger;

sub new {
    my ($class, $appTarget, $jsTarget, $NFILoaderTarget , $basePathFromRoot, $debugMode) = @_;
    
    $class = ref $class if ref $class;
    my $self = bless {
        
        # AppClip Application Target
        appTarget        => $appTarget,
        
        # AppClip JS Target
        jsTarget      => $jsTarget,
        
        # App NFILoader Target
        NFILoaderTarget => $NFILoaderTarget,
        
        # Path relative to VM.xcodeproject
        basePathFromRoot     => $basePathFromRoot,
        
        #enables Debug Mode
        debugMode => $debugMode
        
    }, $class;
    
    return $self;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 init

 Parameters  : None
 Returns     : None
 Description : init method for cleaning Targets/Resources, creating targets, build phases for AppClip.

=cut

sub init{
    my $self = shift;
    
    print "\n############################################\n";
    print "#           Processing App Clip            #\n";
    print "############################################\n\n";
    
    $logger = new PerlLogger("AppClip", $self->{'debugMode'});
    
    $self->clean();
    
    $self->setup();
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 setup

 Parameters  : None
 Returns     : None
 Description : Setup method for AppClips

=cut

sub setup{
    my $self = shift;
    
    $self->setupTargets();
    
    $logger->log("Added App Target, JS Target and NFILoader Target.", INFO);

    $self->setupResourceGroups();
    
    $logger->log("Added Resource Groups.", INFO);
    
    # Adding Sub Project Dependencies only in VM Mode. Pre-Built Frameworks will be added incase of Plugin Mode.
    unless (-e "../VMAppWithKonylib.xcodeproj"){
        $self->addSubProjectDependenciesOfMainAppToAppClip();
        $logger->log("Added Sub-Project Framework Dependencies.", INFO);
    }
    
    $logger->log("Added Static Dependencies.", INFO);
    
    $self->addAppClipToEmbedAppClipsBuildPhase();
    
    $logger->log("AppTarget : $self->{'appTarget'}", INFO);
    $logger->log("JSTarget : $self->{'jsTarget'}", INFO);
    $logger->log("NFILoaderTarget : $self->{'NFILoaderTarget'}", INFO);
    
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 setupResourceGroups

 Parameters  : None
 Returns     : None
 Description : Adds Resource Groups to AppClip's App Target and JS Target

=cut

sub setupResourceGroups{
    
    my $self = shift;
    
    my $parentGroupRef = XCProjectEditor::makePBXGroup("AppClips"); # Creates AppClips Group in Xcode.
    my $groupRef = XCProjectEditor::makePBXGroup($self->{'appTarget'},"<group>"); # Creates a Group with AppClip AppTarget name.
    
    XCProjectEditor::addAsChildToGroup($parentGroupRef, $groupRef); # Adds the created group to AppClips Group as child.

    $self->addResourceGroupToTarget("JSScripts", $self->{'jsTarget'}); # Adds JSScripts to AppClip JS Target
    $self->addResourceGroupToTarget("UserWidgetJSScripts", $self->{'jsTarget'}); # Adds UserWidgetJSScripts to AppClip JS Target.
    $self->addResourceGroupToTarget("WorkerThreadScripts", $self->{'jsTarget'}); # Adds WorkerThreadScripts to AppClip JS Target.
    $self->addResourceGroupToTarget("Themes", $self->{'jsTarget'}); # Adds Themes to AppClip JS Target.
    $self->addResourceGroupToTarget("web", $self->{'jsTarget'}); # Adds web to AppClip JS Target.
    
    my $res_groupref = XCProjectEditor::makePBXGroup("NLResources","<group>"); # Creates NLResources Group.
    XCProjectEditor::addAsChildToGroup($groupRef,$res_groupref); # Adds NLResources group as child to Group with App target's name.
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 setupBuildPhases

 Parameters  : None
 Returns     : None
 Description : Creates required build phases for AppClip App Target and JS Target

=cut

sub setupBuildPhases{
    my $self = shift;
    
    my $buildphaseid = XCProjectEditor::makePBXCopyFilesBuildPhase("Embed Frameworks",undef,10); # Creates Embed Frameworks Build Phase
    XCProjectEditor::addBuildPhaseToTarget($buildphaseid, $self->{'appTarget'}); # Adds Embed Frameworks Build Phase to AppClip's App target
    
    $buildphaseid = XCProjectEditor::makePBXHeadersBuildPhase(); # Creates Copy Headers Build Phase
    XCProjectEditor::addBuildPhaseToTarget($buildphaseid, $self->{'appTarget'}); # Adds Copy Headers Build Phase to AppClip's App target
    
    $buildphaseid = XCProjectEditor::makePBXHeadersBuildPhase(); # Creates Copy Headers Build Phase
    XCProjectEditor::addBuildPhaseToTarget($buildphaseid, $self->{'jsTarget'}); # Adds Copy Headers Build Phase to AppClip's JS target
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createAppTarget

 Parameters  : None
 Returns     : None
 Description : Creates and adds App Target for AppClip.

=cut

sub createAppTarget{
    
    my $self = shift;
    
    my $SEARCH_PATHS = "\$(inherited) \$(SRCROOT)/HelperHeaders/** \$(SRCROOT)/$self->{'basePathFromRoot'}/FFI/** \$(SRCROOT)/$self->{'basePathFromRoot'}/KonySDK/** \$(SRCROOT)/$self->{'basePathFromRoot'}/nativebinding/**";
    
    my $appClipInfoPlist = $self->{'basePathFromRoot'}."/Info.plist";
    
    my %targetBuildSettingsAppClip = (
        'FRAMEWORK_SEARCH_PATHS' => $SEARCH_PATHS,
        'LIBRARY_SEARCH_PATHS' => $SEARCH_PATHS,
        'HEADER_SEARCH_PATHS' => $SEARCH_PATHS,
        'INFOPLIST_FILE' => $appClipInfoPlist,
        'GCC_PRECOMPILE_PREFIX_HEADER' => 'YES',
        'GCC_PREFIX_HEADER' => 'VM_Prefix.pch'
    );
    
    `cp bkup.plist ../$appClipInfoPlist`;
    
    XCProjectEditor::addTargetToProject($self->{'appTarget'}, "AppClip", \%targetBuildSettingsAppClip);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createJSTarget

 Parameters  : None
 Returns     : None
 Description : Creates and adds JS target for AppClip

=cut

sub createJSTarget{
    
    my $self = shift;
    
    my $SEARCH_PATHS = "\$(inherited) \$(SRCROOT)/HelperHeaders/** \$(SRCROOT)/$self->{'basePathFromRoot'}/FFI/** \$(SRCROOT)/$self->{'basePathFromRoot'}/KonySDK/** \$(SRCROOT)/$self->{'basePathFromRoot'}/nativebinding/**";
    
    my $appClipJSInfoPlist = $self->{'basePathFromRoot'}."/KonyJS/Info.plist";
    `cp jsinfobkup.plist ../$appClipJSInfoPlist`;
    
    my %targetBuildSettingsAppClipJS = (
        'FRAMEWORK_SEARCH_PATHS' => $SEARCH_PATHS,
        'LIBRARY_SEARCH_PATHS' => $SEARCH_PATHS,
        'HEADER_SEARCH_PATHS' => $SEARCH_PATHS,
        'INFOPLIST_FILE' => $appClipJSInfoPlist,
        'OTHER_LDFLAGS' => "\$(inherited)",
        'SKIP_INSTALL' => 'YES',
        'GCC_PRECOMPILE_PREFIX_HEADER' => 'YES',
        'GCC_PREFIX_HEADER' => 'VM_Prefix.pch'
    );
    
    XCProjectEditor::addTargetToProject($self->{'jsTarget'}, "Framework", \%targetBuildSettingsAppClipJS);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createNFILoaderTarget

 Parameters  : None
 Returns     : None
 Description : Creates and adds NFILoader Target for AppClip

=cut

sub createNFILoaderTarget{
    my $self = shift;
    
    my $SEARCH_PATHS = "\$(inherited) \$(SRCROOT)/HelperHeaders/** \$(SRCROOT)/$self->{'basePathFromRoot'}/FFI/** \$(SRCROOT)/$self->{'basePathFromRoot'}/KonySDK/** \$(SRCROOT)/$self->{'basePathFromRoot'}/nativebinding/**";
    
    my %buildSettings = (
        'FRAMEWORK_SEARCH_PATHS' => $SEARCH_PATHS,
        'LIBRARY_SEARCH_PATHS' => $SEARCH_PATHS,
        'HEADER_SEARCH_PATHS' => $SEARCH_PATHS,
        'INFOPLIST_FILE' => $self->{'basePathFromRoot'}."/NFILoader/Info.plist",
        'PRODUCT_NAME' => $self->{'NFILoaderTarget'},
        'PRODUCT_BUNDLE_IDENTIFIER' => 'com.kony.NFILoader',
        'SKIP_INSTALL' => 'YES'
    );
    
    XCProjectEditor::addTargetToProject($self->{'NFILoaderTarget'}, "Framework", \%buildSettings);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 setupTargets

 Parameters  : None
 Returns     : None
 Description : Handles creation of required targets for AppClips and adds corresponding dependencies to AppClip targets

=cut

sub setupTargets{
    
    my $self = shift;
    
    $self->createAppTarget();
    $self->createJSTarget();
    
    $self->setupBuildPhases();
    
    $self->createNFILoaderTarget();
    
    my %embedBuildSettings =  ( 'ATTRIBUTES' => ['CodeSignOnCopy'] );
    
    XCProjectEditor::addTargetAsBuildphaseInTargets($self->{'jsTarget'} , undef, undef, [ $self->{'appTarget'} ]); # Adds AppClip JS Target to "Link Binary With Libraries" Build Phase of AppClip App Target
    
    XCProjectEditor::addTargetAsBuildphaseInTargets($self->{'jsTarget'}, \%embedBuildSettings,"Embed Frameworks", [ $self->{'appTarget'} ]); # Adds AppClip JS Target to "Embed Frameworks" Build Phase of AppClip App Target
    
    XCProjectEditor::addFileToGroupAndTargets("NFIAllLoader.m", "<group>", $self->{'basePathFromRoot'}."/NFILoader", [ $self->{'NFILoaderTarget'} ]); # Adds NFIAllLoader.m file to NFILoader Target.
    
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makeCleanRscDir

 Parameters  : Directory path[String]
 Returns     : None
 Description : Creates a directory at the given directory path or else cleans it, if a directory is already present.

=cut

sub makeCleanRscDir{
    my $self = shift;
    my $dir = shift;
    $dir = "../".$self->{'basePathFromRoot'}."/".$dir;
    if (-d "$dir") {
        $logger->log("Cleaning $dir", DEBUG);
        system "rm -rf $dir/*";
    } else {
        $logger->log("Creating $dir", DEBUG);
        mkdir "$dir";
    }
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addResourceGroupToTarget

 Parameters  : Group Name[String], Target[String]
 Returns     : None
 Description : Adds given group to target

=cut

sub addResourceGroupToTarget{
    my $self = shift;
    my $groupName = shift;
    my $target = shift;
    my $fileref = XCProjectEditor::makePBXFileReference($groupName, "<group>"); # Creates PBX Reference for given Group.
    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileref, $self->{'basePathFromRoot'}, undef, undef, [ $target ]); # Adds Group to Target.
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 clean

 Parameters  : None
 Returns     : None
 Description : AppClips Clean Stuff.

=cut

sub clean{
    
    my $self = shift;
    
    $self->makeCleanRscDir("");
    
    $self->makeCleanRscDir("KonySDK");
    
    $self->makeCleanRscDir("nativebinding");
    
    `cp -rf ../NFILoader ../$self->{'basePathFromRoot'}/`;
    
    `cp -rf ../KonyLaunchStoryBoard ../$self->{'basePathFromRoot'}/`;
    
    `cp -rf ../KonySDK/ ../$self->{'basePathFromRoot'}/KonySDK/`;
    
    $self->makeCleanRscDir("KonyJS");
    
    $logger->log("Cleaning Done.", DEBUG);
    
}


#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addSubProjectDependenciesOfMainAppToAppClip

 Parameters  : None
 Returns     : None
 Description : Adds Sub Project Dependencies of VM Project to AppClip Targets(Adds CoreComponent, Button, Camera...... Target Dependencies to App Clip Targets)

=cut

sub addSubProjectDependenciesOfMainAppToAppClip{
    
    my $self = shift;
    
    my $projectRefs = XCProjectEditor::getSubProjectRefs(); # Returns Array of Sub Project refs of VM project.
    
    my %embedBuildSettings =  ( 'ATTRIBUTES' => ['CodeSignOnCopy'] );
    
    my @subProjectsNotSupportedForAppClips = ( "CordovaLib/CordovaLib.xcodeproj", "libarchive.xcodeproj", "KonySwiftUISource.xcodeproj", "KonyWidgetSource.xcodeproj");

    for my $ref (@{$projectRefs}){
        
        my $subProjectObject = XCProjectEditor::getObjectRefWithId($ref->{"ProjectRef"});
        
        if(defined $subProjectObject){
        
            my $subProjectPath = $subProjectObject->{"path"};
            
            if((grep { $_ eq $subProjectPath } @subProjectsNotSupportedForAppClips)){
                $logger->log("Skipping $subProjectPath", WARNING);
                next;
            }
        
            my $productRefID = XCProjectEditor::getObjectRefWithId($ref->{"ProductGroup"}); # Accessing Product group Ref of Sub Project
            my $fileRef = $productRefID->{"children"}[0]; # Accessing reference of framework in Product Group
            my $PBXFileObject = XCProjectEditor::getObjectRefWithId($fileRef); # Accessing PBX File Object.
            
            
            # Processing only Framework Sub Projects(As Existing Sub Projects are of type framework(Ex: Button, Camera......))
            if($PBXFileObject->{'fileType'} eq "wrapper.framework"){
                # CoreComponent should be added to JS Target along with App target
                if($PBXFileObject->{'path'} eq "CoreComponent.framework"){
                    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef , undef, undef, [ $self->{'jsTarget'} ]); # Adds CoreComponent Dependency to "Link Binary With Libraries" Build Phase of AppClip JS Target
                }
                
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef , undef, undef, [ $self->{'appTarget'} ]); # Adds Framework Dependency to "Link Binary With Libraries" Build Phase of AppClip App Target
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileRef, undef, \%embedBuildSettings, "Embed Frameworks", [ $self->{'appTarget'} ]); # Adds Framework Dependency to "Embed Frameworks" Build Phase of AppClip App Target
            }
        }
    }

}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addAppClipToEmbedAppClipsBuildPhase

 Parameters  : None
 Returns     : None
 Description : Adds AppClip product to "Embed App Clips" Build Phase of Main App Targets.

=cut

sub addAppClipToEmbedAppClipsBuildPhase{
    my $self = shift;
    
    my @targets = XCProjectEditor::getApplicationTargets(); # Application Targets.(Ex : KRelease, KProtected)
    my %buildSettings =  ( 'ATTRIBUTES' => ['RemoveHeadersOnCopy'] );
    
    for my $target (@targets){
        
        my $isBuildPhasePresent = XCProjectEditor::isBuildPhasePresentInTarget("Embed App Clips", $target); # Checks whether a build phase named "Embed App Clips" is present.
        
        if(!$isBuildPhasePresent){
            my $buildphaseid = XCProjectEditor::makePBXCopyFilesBuildPhase("Embed App Clips", "\$(CONTENTS_FOLDER_PATH)/AppClips", 16); # Creates "Embed App Clips" Build Phase.
            XCProjectEditor::addBuildPhaseToTarget($buildphaseid, $target); # Adds Build Phase to Target.
            $logger->log("Adding Embed App Clips Build Phase to $target", INFO);
        }
        
        XCProjectEditor::createTargetDependency($self->{'appTarget'}, undef, $target); # Adds AppClip App Target as dependency to Main App Target.
    }
    
    XCProjectEditor::addTargetAsBuildphaseInTargets($self->{'appTarget'}, \%buildSettings, "Embed App Clips" ,\@targets); # Adds AppClip product to "Embed App Clips" Build Phase.
}

1;
