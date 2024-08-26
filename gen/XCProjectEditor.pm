#==================================================================================================================================
#
#          FILE:  XCProjectEditor.pm
#
#         USAGE:
#
#   DESCRIPTION:  This module provides API's to edit Xcode project file.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  Documentation/comments are not available for private methods because they are self explanatory :P
#        AUTHOR:  Hareesh.Veligeti Kh2032
#       COMPANY:  Kony Labs
#       VERSION:  1.0
#       CREATED:  27/05/2017 4:30:01 PM IST
#      REVISION:  ---
#==================================================================================================================================

package XCProjectEditor;
use strict;
use warnings FATAL => 'all';
use File::Basename;
use PlistUtil;
use Data::Dumper;

use XML::Writer;
use PlistConfigurator;

my $projectFilePath = undef;
my $json;
my $objects_ref;
my $rootObject_ref;
my %subProjectsData = ();
my %existing_frameworks_Hash = ();
my @targets = ();
my @watchTargets = ();
my %addedVariantGroups = ();
my $isEntitlementsFileCreatedByKony = 1;
my $rscHandler;

#^^^^^^^^^^^^^^^^^^^^^^ Util Methods ^^^^^^^^^^^^^^^^^^^^^^

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 generateUID

 Parameters  : String
 Returns     : Generates a unique ID of length 24.
 Description : Generates a unique ID of length 24 using the input string.
  				This ID has prefix as '58725ABC' to identify that it is genrated using this API.

=cut

sub generateUID {
	my $fileName = shift @_;

	$fileName .= rand();
	return "58725ABC" . uc(substr(`echo '$fileName' | md5`, 0, 16));
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 cleanGroup

 Parameters  : Group key
 Returns     : None
 Description : Removes all childrens in groups whose ID starts with 58725ABC.
  				All objects which are created by using this package has this prefix
  				as part of their key.

=cut

sub cleanGroup
{
	my $group_ref = shift;
	my @children = ();
	my $groupObj_ref = $objects_ref->{$group_ref};
	foreach my $child_ref (@{$groupObj_ref->{'children'}})
	{
		if ($child_ref !~ /^58725ABC/)
		{
			push @children, $child_ref;
			if($objects_ref->{$child_ref})
			{
				if ($objects_ref->{$child_ref}{'isa'} eq 'PBXGroup' || $objects_ref->{$child_ref}{'isa'} eq 'PBXVariantGroup')
				{
					cleanGroup($child_ref);
				}
			}
		}
		else
		{
			delete $objects_ref->{$child_ref};
		}
	}
	$groupObj_ref->{'children'} = \@children;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 cleanBuildPhases

 Parameters  : BuildPhase key
 Returns     : None
 Description : Removes all build phases whose ID starts with 58725ABC.
  				All objects which are created by using this package has this prefix
  				as part of their key.

=cut

sub cleanBuildPhases
{
	my $buildPhases_ref = shift;
	my @files = ();
	foreach my $files_ref (@{$objects_ref->{$buildPhases_ref}{'files'}})
	{
		if ($files_ref !~ /^58725ABC/)
		{
			push(@files, $files_ref);
		}
	}
	$objects_ref->{$buildPhases_ref}{'files'} = \@files;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 cleanTargets

 Parameters  : None
 Returns     : None
 Description : Removes all targets whose ID starts with 58725ABC.
  				All objects which are created by using this package has this prefix
  				as part of their key.

=cut

sub cleanTargets
{
	my @projectTargets = ();
	my @phoneTargets = ();
	my @_watchTargets = ();

	foreach my $target_Ref (@{$rootObject_ref->{'targets'}})
	{
		if ($target_Ref !~ /^58725ABC/)
		{
			my $targetObj_ref = $objects_ref->{$target_Ref};
			if ($targetObj_ref->{'productType'} =~ /application$/)
			{
				push(@phoneTargets, $targetObj_ref->{'name'});
			}
			elsif ($targetObj_ref->{'productType'} =~ /(watchapp.|watchkit.-extension)$/)
			{
				push(@_watchTargets, $targetObj_ref->{'name'});
			}

			push(@projectTargets, $target_Ref);

			my @dependencies = ();
			foreach my $dependencies_ref (@{$targetObj_ref->{'dependencies'}})
			{
				if ($dependencies_ref !~ /^58725ABC/)
				{
					push(@dependencies, $dependencies_ref);
				}
			}
			$targetObj_ref->{'dependencies'} = \@dependencies;
			my @buildPhases = ();
			foreach my $buildPhase_ref (@{$targetObj_ref->{'buildPhases'}})
			{
				if ($buildPhase_ref !~ /^58725ABC/)
				{
					cleanBuildPhases($buildPhase_ref);
					push(@buildPhases, $buildPhase_ref);
				}
			}
			$targetObj_ref->{'buildPhases'} = \@buildPhases;
		}
	}
	$rootObject_ref->{'targets'} = \@projectTargets;
	@targets = @phoneTargets;
	@watchTargets = @_watchTargets;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 cleanContainers

 Parameters  : None
 Returns     : None
 Description : Cleans container like groups and targets.

=cut

sub cleanContainers
{
	cleanGroup($rootObject_ref->{'mainGroup'});
	cleanTargets();
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 setResourceHandler

 Parameters  : Resource Handler Instance
 Returns     : None
 Description : Sets Resource Handler for current context.

=cut

sub setResourceHandler{
    $rscHandler = shift;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 resourceHandler

 Parameters  : None
 Returns     : Resource Handler for current context.

=cut

sub resourceHandler{
    return $rscHandler;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getProductType

 Parameters  : Type of target
 Returns     : Product type
 Description : Returns product type associated with type of target.
 				Note:- For watch and watch extensions only version 2.0 is supported.

=cut

sub getProductType
{
    my $type = shift;
    my %productTypeToExtensionType = (
    "GenericExtension" 		=> "com.apple.product-type.app-extension",
    "MessageExtension" 		=> "com.apple.product-type.app-extension.messages",
	"Framework"				=> "com.apple.product-type.framework",
	"Application"			=> "com.apple.product-type.application",
	"Static"				=> "com.apple.product-type.library.static",
	"WatchApp"				=> "com.apple.product-type.application.watchapp2",
	"WatchExtension"		=> "com.apple.product-type.watchkit2-extension",
	"UITest"				=> "com.apple.product-type.bundle.ui-testing",
	"UnitTest"				=> "com.apple.product-type.bundle.unit-test",
    "AppClip"               => "com.apple.product-type.application.on-demand-install-capable"
    );
    return $productTypeToExtensionType{$type};
}

sub getAllObjects
{
    return $objects_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 listOfXCBuildConfigNames

 Parameters  : None
 Returns     : Ref to Array containing names of build configs.
 Description : Returns a reference to an array holding all build configuration names.

=cut

my @buildConfigurationName = ();
sub listOfXCBuildConfigNames
{
	if (!@buildConfigurationName)
	{
		my $targetObj_ref = getObjectRefWithId(getTargetRefByName('KRelease'));
		my $XCConfigListObj_ref = getObjectRefWithId($targetObj_ref->{'buildConfigurationList'});
		foreach my $XCBuildConfig_ref (@{$XCConfigListObj_ref->{buildConfigurations}})
		{
			push(@buildConfigurationName, getObjectRefWithId($XCBuildConfig_ref)->{'name'});
		}
	}
	return \@buildConfigurationName;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 typeOfFile

 Parameters  : File name
 Returns     : File type
 Description : Returns file type based on file extension if the extension is not
 				in the list it will exit with a message.

=cut

sub typeOfFile
{
	my $fileName = $_[0];
    $fileName = lc $fileName; # converting string to lower case
	# Note:- Folder type is not handled here because folders doesn't have any extension...
	my $retVal = undef;
	# horizontal scroll for code...
    if( $fileName =~ /\.h$/ 	)																			{ $retVal = "SourceCodeHeader"; }
    elsif( $fileName =~ /\.c$/ 	)																			{ $retVal = "SourceCodeC"; }
    elsif( $fileName =~ /\.m$/ 	)																			{ $retVal = "SourceCodeObjC"; }
    elsif( $fileName =~ /\.framework$/ )																	{ $retVal = "Framework"; }
    elsif( $fileName =~ /\.xcframework$/ )																	{ $retVal = "XCFramework"; }
    elsif( $fileName =~ /\.plist$/ 	)																		{ $retVal = "PropertyList"; }
    elsif( $fileName =~ /\.mm$/ 	)																		{ $retVal = "SourceCodeObjCPlusPlus"; }
    elsif( $fileName =~ /\.cpp$/ 	)																		{ $retVal = "SourceCodeCPlusPlus"; }
    elsif( $fileName =~ /\.xib$/ 	)																		{ $retVal = "XibFile"; }
    elsif( $fileName =~ /\.zip$/ 	)																		{ $retVal = "Zip"; }
	elsif( $fileName =~ /\.gif$/ 	)																		{ $retVal = "GIF"; }
	elsif( $fileName =~ /\.xib$/ 	)																		{ $retVal = "XIB"; }
	elsif( $fileName =~ /\.wav$/ 	)																		{ $retVal = "WAV"; }
	elsif( $fileName =~ /\.mov$/ 	)																		{ $retVal = "MOV"; }
	elsif( $fileName =~ /\.mp3$/ 	)																		{ $retVal = "MP3"; }
	elsif( $fileName =~ /\.mp4$/ 	)																		{ $retVal = "MP4"; }
	elsif( $fileName =~ /\.cer$/ 	)																		{ $retVal = "CER"; }
	elsif( $fileName =~ /\.m4v$/ 	)																		{ $retVal = "M4V"; }
	elsif( $fileName =~ /\.avi$/ 	)																		{ $retVal = "AVI"; }
	elsif( $fileName =~ /\.3gp$/ 	)																		{ $retVal = "3gp"; }
	elsif( $fileName =~ /\.p12$/ 	)																		{ $retVal = "p12"; }
	elsif( $fileName =~ /\.pkcs12$/ 	)																	{ $retVal = "pkcs12"; }
	elsif( $fileName =~ /\.(jpg|jpeg)$/ 	)																{ $retVal = "JPEG"; }
	elsif( $fileName =~ /\.(png)$/	)																		{ $retVal = "ImageResourcePNG"; }
    elsif( $fileName =~ /\.(bundle|octet)$/ )																{ $retVal = "Bundle"; }
    elsif( $fileName =~ /\.a$/ )																			{ $retVal = "Archive"; }
    elsif( $fileName =~ /\.html$/ )																			{ $retVal = "HTML"; }
    elsif( $fileName =~ /\.txt$/ )																			{ $retVal = "TEXT"; }
    elsif( $fileName =~ /\.xcodeproj$/ 	)																	{ $retVal = "XcodeProject"; }
    elsif( $fileName =~ /\.swift$/ 	)																		{ $retVal = "SourceCodeSwift"; }
    elsif( $fileName =~ /\.app$/ )																			{ $retVal = "Application"; }
	elsif( $fileName =~ /\.appex$/ )																		{ $retVal = "AppExtension"; }
    elsif( $fileName =~ /\.playground$/) 																	{ $retVal = "Playground"; }
    elsif( $fileName =~ /\.sh$/ )																			{ $retVal = "ShellScript"; }
    elsif( $fileName =~ /\.plist$/) 																		{ $retVal = "XMLPropertyList"; }
    elsif( $fileName =~ /\.storyboard$/) 																	{ $retVal = "Storyboard"; }
    elsif( $fileName =~ /\.xcconfig$/ )																		{ $retVal = "XCConfig"; }
    elsif( $fileName =~ /\.xcdatamodel$/) 																	{ $retVal = "XCDataModel"; }
    elsif( $fileName =~ /\.strings$/ )																		{ $retVal = "LocalizableStrings"; }
    elsif( $fileName =~ /\.js$/) 																			{ $retVal = "JavaScript"; }
	elsif( $fileName =~ /\.ttf$/)																			{ $retVal = "File"; }
    elsif( $fileName =~ /\.otf$/)																			{ $retVal = "File"; }
    elsif( $fileName =~ /\.dylib$/)																			{ $retVal = "DynamicLibrary"; }
	elsif( $fileName =~ /\.xctest$/)																		{ $retVal = "Test"; }
	elsif( $fileName =~ /\.xml$/)																			{ $retVal = "XML"; }
	elsif( $fileName =~ /\.tbd$/)																			{ $retVal = "TBD"; }
	elsif( $fileName =~ /\.xcassets$/)																		{ $retVal = "AssetCatalog"; }
	elsif( $fileName =~ /\.entitlements$/)																	{ $retVal = "Entitlements"; }
    elsif( $fileName =~ /\.mom$/)                                                                           { $retVal = "mom"; }
    elsif( $fileName =~ /\.db$/)                                                                            { $retVal = "DB"; }
    elsif( $fileName =~ /\.json$/)                                                                          { $retVal = "JSON"; }
    elsif( $fileName =~ /\.rtf$/)                                                                           { $retVal = "RTF"; }
    elsif( $fileName =~ /\.pch$/ )                                                                          { $retVal = "PCH"; }
	else { $retVal = "File"; }
	return $retVal;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getFileTypeForFileName

 Parameters  : File name
 Returns     : Project file type
 Description : Returns Project file type based on file extension if the extension is not
 				in the list it will exit with a message.

=cut

sub getFileTypeForFileName
{
	my $fileName = shift;
	my %xcodeFileTypes = (
		"SourceCodeHeader"       =>		   "sourcecode.c.h",
    	"SourceCodeObjC"         =>        "sourcecode.c.objc",
		"SourceCodeC"         	 =>        "sourcecode.c.c",
		"Framework"              =>        "wrapper.framework",
		"XCFramework"              =>        "wrapper.xcframework",
    	"PropertyList"           =>        "text.plist.strings",
    	"SourceCodeObjCPlusPlus" =>        "sourcecode.cpp.objcpp",
    	"SourceCodeCPlusPlus"    =>        "sourcecode.cpp.cpp",
		"TBD"					 => 	   "sourcecode.text-based-dylib-definition",
    	"XibFile"                =>        "file.xib",
    	"ImageResourcePNG"       =>        "image.png",
    	"Bundle"                 =>        "wrapper.cfbundle",
    	"Archive"                =>        "archive.ar",
    	"HTML"                   =>        "text.html",
    	"TEXT"                   =>        "text",
    	"XcodeProject"           =>        "wrapper.pb-project",
    	"Folder"                 =>        "folder",
    	"AssetCatalog"           =>        "folder.assetcatalog",
    	"SourceCodeSwift"        =>        "sourcecode.swift",
    	"Application"            =>        "wrapper.application",
    	"Playground"             =>        "file.playground",
    	"ShellScript"            =>        "text.script.sh",
    	"XMLPropertyList"        =>        "text.plist.xml",
    	"Storyboard"             =>        "file.storyboard",
    	"XCConfig"               =>        "text.xcconfig",
    	"XCConfig"               =>        "wrapper.xcconfig",
    	"XCDataModel"            =>        "wrapper.xcdatamodel",
    	"LocalizableStrings"     =>        "text.plist.strings",
    	"JavaScript"             =>        "sourcecode.js",
    	"Markdown"               =>  	   "net.daringfireball.markdown",
		"File"					 =>		   "file",
		"AppExtension"           =>        "wrapper.app-extension",
		"DynamicLibrary"		 =>	       "compiled.mach-o.dylib",
		"Test"					 =>		   "wrapper.cfbundle",
		"XML"				     => 	   "text.xml",
		"Entitlements"			 => 	   "text.plist.entitlements",
		"Zip"					 =>		   "archive.zip",
		"JPEG"					 => 	   "image.jpeg",
		"GIF"					 =>        "image.gif",
		"XIB"					 => 	   "file.xib",
		"WAV"					 => 	   "audio.wav",
		"MOV"					 => 	   "video.quicktime",
		"MP3"					 => 	   "audio.mp3",
		"MP4"					 => 	   "text",
		"CER"					 => 	   "text",
		"M4V"					 =>	       "file",
		"AVI"					 =>	       "video.avi",
		"3gp"					 =>	       "file",
		"p12"					 =>	       "file",
		"pkcs12"				 =>	       "file",
        "mom"                    =>        "file.bplist",
        "DB"                     =>        "text",
        "JSON"                   =>        "text.json",
        "RTF"                    =>        "text.rtf",
        "PCH"                    =>        "sourcecode.c.h"
	);
	return $xcodeFileTypes{typeOfFile($fileName)};
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getVMProjectRef

 Parameters  : None
 Returns     : Root Object key
 Description : Returns Root Object reference i.e., Project Object key.

=cut

sub getVMProjectRef()
{
	return $json->{'rootObject'};
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addProjectReferencesToProject

 Parameters  : Project Reference Hash
 Returns     : None
 Description : Adds sub-projects reference to main Project.

=cut

sub addProjectReferencesToProject
{
	my $productReference_hashref = shift;
	push(@{$rootObject_ref->{'projectReferences'}}, $productReference_hashref);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addObjectToProject

 Parameters  : Key/Id, Value
 Returns     : None
 Description : Adds Object to project.

=cut

sub addObjectToProject
{
	my ($key, $value) = @_;
	$objects_ref->{$key} = $value;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getObjectRefWithId

 Parameters  : Key/Id
 Returns     : Object
 Description : Returns associated Value/Object for Key in Objects Hash.

=cut

sub getObjectRefWithId
{
    my $object_ref = shift;
    my $retVal = $objects_ref->{$object_ref};
    return $retVal;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getTargetRefByName

 Parameters  : target name
 Returns     : target Id/key
 Description : Returns Key/Id for given target name. Using this key we can get
 				target object.

=cut

sub getTargetRefByName
{
	my $targetName = shift;
	foreach my $target_ref (@{$rootObject_ref->{'targets'}})
	{
		if (getObjectRefWithId($target_ref)->{'name'} eq $targetName)
		{
			return $target_ref;
		}
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getProjectRefFromName

 Parameters  : Project name
 Returns     : Root Object key of sub-projects
 Description : Returns Root Object reference of sub-projects i.e., Project Object key.

=cut

sub getProjectRefFromName
{
	my $projectName = shift;
	return $subProjectsData{$projectName}{'fileref'};
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getSubProjectTargetRefByName

 Parameters  : Sub-project name, target name
 Returns     : target Id/key
 Description : Returns Key/Id for given target name in sub-project. Using this key we can get
 				target object.

=cut

sub getSubProjectTargetRefByName
{
	my ($subProjectName, $targetName) = @_;
	my $targetObjHash_ref = $subProjectsData{$subProjectName}{'targets'};
	foreach my $targetObj_ref (keys %$targetObjHash_ref)
	{
		if ($targetObjHash_ref->{$targetObj_ref}{'name'} eq $targetName)
		{
			return $targetObj_ref
		}
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 isBundle

 Parameters  : File type
 Returns     : Bool
 Description : Returns 1 if it is of bundle type.

=cut

sub isBundle
{
	my $fileType = shift;
	my @bundles = ("wrapper.cfbundle", "archive.ar", "wrapper.app-extension", "wrapper.application", "text.xcconfig", "wrapper.xcdatamodel");
	my $retVal = 0;
	if ( grep {$_ eq $fileType} @bundles )
	{
		$retVal = 1;
	}
	return $retVal;
}

# TODO :- to include script files
#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getCategoryFromType

 Parameters  : File type
 Returns     : Build phase category
 Description : Returns category to which the given file type belong.
 				These category are used to decide the buildphases.

=cut

sub getCategoryFromType
{
	my $fileType = shift;
	my %sourceTypes = (
		"sourcecode.c.h" => 'Header', "sourcecode.c.objc"=> 'Source', "sourcecode.c.c"=> 'Source', "sourcecode.cpp.objcpp"=> 'Source',
		"sourcecode.cpp.cpp"=> 'Source', "sourcecode.swift"=> 'Source', "sourcecode.js"=> 'Source',"sourcecode.h"=> 'Header'
	);
	my %resourseTypes = (
		"image.png" => 'Resource', "folder" => 'Resource', "folder.assetcatalog" => 'Resource',
		"file.strings" => 'Resource',"file.playground" => 'Resource',"text.plist.strings" => 'Resource',
		"file.xib" => 'Resource', "text.html" => 'Resource', "text" => 'Resource', "text.plist.xml" => 'Resource',
		"text.xcconfig" => 'Resource',"file.storyboard" => 'Resource',"net.daringfireball.markdown" => 'Resource',
		"file" => "Resource", "text.xml" => "Resource", "archive.zip" => 'Resource', "image.jpeg" => 'Resource',
		"image.gif" => 'Resource', "file.xib" => "Resource", "audio.wav" => 'Resource', "video.quicktime" => 'Resource',
		"audio.mp3" => 'Resource', "video.avi" => 'Resource', "file.bplist" => 'Resource', "text.json" => 'Resource',
        "text.rtf" => 'Resource',
		"wrapper.xcconfig" => 'Resource',"wrapper.xcdatamodel" => 'Resource', "wrapper.cfbundle" => 'Resource' # sceptic about these 3 types
	);
	my %frameworkTypes = ("wrapper.framework" => 'Framework', "archive.ar" => 'Framework',  'compiled.mach-o.dylib' => 'Framework',
		"sourcecode.text-based-dylib-definition"=> 'Framework', "wrapper.xcframework" => 'Framework'
	);
	if (exists $sourceTypes{$fileType})
	{
		return $sourceTypes{$fileType};
	}
	elsif (exists $resourseTypes{$fileType})
	{
		return $resourseTypes{$fileType};
	}
	elsif (exists $frameworkTypes{$fileType})
	{
		return $frameworkTypes{$fileType};
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getProductReferenceOfTarget

 Parameters  : target name
 Returns     : product refernce key/Id
 Description : Returns product refernce key/Id of given target name in main project

=cut

sub getProductReferenceOfTarget
{
	my $targetName = shift;
	my $target_ref = getObjectRefWithId(getTargetRefByName($targetName));
	return $target_ref->{'productReference'};
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 groupWithPathFromRoot

 Parameters  : Path from root group
 Returns     : group key/Id
 Description : Returns group key/Id for given path from root group i.e., main group.
 				Here we are using a cache to avoid taversal of same path.

=cut

my %pathCache = (); # to avoid multiple travarsels...
sub groupWithPathFromRoot
{
	my $path = shift;
	if (exists $pathCache{$path})
	{
		return $pathCache{$path};
	}
	my $groupID = $rootObject_ref->{'mainGroup'};
	my $groupName = '';
	for $groupName  (split /\//, $path)
	{
		my $children = $objects_ref->{$groupID}{'children'};
		for my $childID (@$children)
		{
			if ($objects_ref->{$childID}{'isa'} eq 'PBXGroup' || $objects_ref->{$childID}{'isa'} eq 'PBXVariantGroup')
			{
				if ((exists $objects_ref->{$childID}{'name'} && $groupName eq $objects_ref->{$childID}{'name'}) || (exists $objects_ref->{$childID}{'path'} && $groupName eq $objects_ref->{$childID}{'path'}))
				{
					$groupID =  $childID;
					last;
				}
			}
		}
	}
	return $groupID;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addAsChildToGroup

 Parameters  : group ID, child Id
 Returns     : None
 Description : add child Id as children to group ID.

=cut

sub addAsChildToGroup
{
    my ($group_ref, $child_ref) = @_;
    my $parentGroupObject_ref = getObjectRefWithId($group_ref);
    push(@{$parentGroupObject_ref->{'children'}}, $child_ref);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addAsChildToGroupWithPathFromRoot

 Parameters  : Path from Root group, child Id
 Returns     : None
 Description : add child Id as children to group in Path.

=cut

sub addAsChildToGroupWithPathFromRoot
{
    my ($pathFromRoot, $chid_ref) = @_;
    my $parentGroup_ref = groupWithPathFromRoot($pathFromRoot);
    addAsChildToGroup($parentGroup_ref, $chid_ref);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 productTypeToExtension

 Parameters  : Target type. (Static/Application...)
 Returns     : extension for product.
 Description : Returns appropriate product extension else it exits with a message.

=cut

sub productTypeToExtension
{
	my $productType = shift;
	$productType =~ s/\s+$//g;
	if ($productType =~ /application$/) 				{ return ".app"; }
	elsif ($productType =~ /(-type.framework|Framework)$/)      {return ".framework";}
	# elsif ($productType =~ /(-type.xcframework|Framework)$/)      {return ".xcframework";} #Need to check here (-type.framework|XCFramework)$/)
	elsif ($productType =~ /library.static$/) 			{ return ".a"; }
	elsif ($productType =~ /application.watchapp.$/) 	{ return ".app"; }
	elsif ($productType =~ /(-extension|-extension\.messages)$/) 		        { return ".appex"; }
	elsif ($productType =~ /(unit-test|ui-testing)$/)	{ return ".xctest";}
    elsif ($productType =~ /on-demand-install-capable$/)    { return ".app";}
	else{ print "need to add new product type $productType...\n"; exit(); }
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getFileTypeForFileName

 Parameters  : Product type i.e., this is available in every target and it looks like a bundle Id.
 Returns     : Project file type.
 Description : Returns Project type of product type.

=cut

sub fileTypefromProductType
{
	my $productType = shift;
	return getFileTypeForFileName(productTypeToExtension($productType));
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getPBXFileRefWithPathFromRoot

 Parameters  : File Path from root group. ex: /AppDelegateExtension/KonyAppDelegateClassFactory.h
 Returns     : PBXFileRef.
 Description : Return PBXFileRefence of given file path.

=cut

sub getPBXFileRefWithPathFromRoot
{
    my $path = shift;
    my $groupObj_ref = getObjectRefWithId(getGroupRefWithPathFromRoot(dirname($path)));
    my $filename = basename($path);
    my $PBXFileref = undef;
    foreach my $fileref (@{$groupObj_ref->{'children'}})
    {
        my $obj_ref = getObjectRefWithId($fileref);
        if (defined $obj_ref->{'name'} && $obj_ref->{'name'} eq $filename)
        {
            $PBXFileref = $fileref;
            last;
        }
        elsif(defined $obj_ref->{'path'} && $obj_ref->{'path'} =~ /$filename$/)
        {
            $PBXFileref = $fileref;
            last;
        }
    }
    return $PBXFileref;
}


#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addBuilsettingsToFileInPath

 Parameters  : File Path from root group, Build settings hash.
 Returns     : None.
 Description : Adds buildsettings to existing file in Project.

=cut

sub addBuilsettingsToFileInPath
{
	my ($path, $buildSettings) = @_;
    #print $path."\n";
    my $PBXFileref = getPBXFileRefWithPathFromRoot($path);
    if ($PBXFileref)
	{
		my ($key, $value);
		while (($key, $value) = each %$objects_ref)
		{
#            print $key." ".$value->{'fileRef'}." ".$PBXFileref."\n";
            if (exists $value->{'fileRef'} && $value->{'isa'} eq 'PBXBuildFile' && $value->{'fileRef'} eq $PBXFileref)
			{
				$value->{'settings'} = $buildSettings;
			}
		}
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getApplicationTargets

 Parameters  : None.
 Returns     : Array of target names.
 Description : Used to get all app targets in main project.

=cut

sub getApplicationTargets
{
    return @targets;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getSubProjectRefs

 Parameters  : None.
 Returns     : Array of sub-project references in VM.xcodeproject

=cut

sub getSubProjectRefs{
    my $projectRefs = $rootObject_ref->{'projectReferences'};
    return $projectRefs;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getWatchTargets

 Parameters  : None.
 Returns     : Array of watch names.
 Description : Used to get all watch in main project.

=cut

sub getWatchTargets
{
	return @watchTargets;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getExistingFrameworkList

 Parameters  : None.
 Returns     : Hash of framework names.
 Description : Hash of all Frameworks in main project. Key is framework name and value will be 1.
  				Should be called after cleaning project

=cut

sub getExistingFrameworkList
{
	return %existing_frameworks_Hash;
}

sub addBuildPhaseToTarget
{
	my ($buildPhase_ref, $targetName) = @_;
	my $targetObj_ref = getObjectRefWithId(getTargetRefByName($targetName));
    push(@{$targetObj_ref->{'buildPhases'}}, $buildPhase_ref);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addFileToTarget

 Parameters  : PBXBuildFileReference key, Target name, BuildPhase name.
 Returns     : None.
 Description : Adds build file to the Target.
 				If buildphase name is not mentioned then it's buildphase is determined based on its type.


=cut

sub addFileToTarget
{
	my ($buildFile_ref, $targetName, $buildPhaseName) = @_;
	my $targetObj_ref = getObjectRefWithId(getTargetRefByName($targetName));
	my $fileReference_ref = getFileRefernceObjectFromBuildFileRef($buildFile_ref);
	my $type = undef;
	if (exists $fileReference_ref->{'lastKnownFileType'})
	{
		$type = $fileReference_ref->{'lastKnownFileType'};
	}
	elsif (exists $fileReference_ref->{'explicitFileType'})
	{
		$type = $fileReference_ref->{'explicitFileType'};
	}
    elsif (exists $fileReference_ref->{'fileType'})
    {
        $type = $fileReference_ref->{'fileType'};
    }
	else
	{
		# Variant groups go in resources...
		$type = "text.plist.strings";
	}
	my $buildPhase_ref = undef;
	if (defined $buildPhaseName)
	{
		$buildPhase_ref = getBuildPhaseRefWithNameInTarget($buildPhaseName, $targetObj_ref);
	}
	else
	{
		$buildPhase_ref = getBuildPhaseRefOfTypeInTarget(getCategoryFromType($type), $targetObj_ref);
	}
	if ($buildPhase_ref)
	{
		my $buildPhaseObj_ref = getObjectRefWithId($buildPhase_ref);
        push(@{$buildPhaseObj_ref->{'files'}}, $buildFile_ref);
	}
}

#^^^^^^^^^^^^^^^^^^^^^^ End Of Util Methods ^^^^^^^^^^^^^^^^^^^^^^

#^^^^^^^^^^^^^^^^^^^^^^ Private Methods ^^^^^^^^^^^^^^^^^^^^^^
sub makeBuildPhaseHashTemplate
{
	my $type = shift;
	my %PBXtypeBuildPhase = ();
	$PBXtypeBuildPhase{'isa'} = "PBX".$type."BuildPhase";
	$PBXtypeBuildPhase{'buildActionMask'} = '2147483647';
	$PBXtypeBuildPhase{'files'} = [];
	$PBXtypeBuildPhase{'runOnlyForDeploymentPostprocessing'} = '0';
	return \%PBXtypeBuildPhase;
}

sub makePBXBuildPhaseOfType
{
	my $type = shift;
	my $buildPhase_ref = generateUID($type);
	addObjectToProject($buildPhase_ref, makeBuildPhaseHashTemplate($type));
	return $buildPhase_ref;
}

sub getFileRefernceObjectFromBuildFileRef
{
	my $buildFile = shift;
	return getObjectRefWithId($objects_ref->{$buildFile}{'fileRef'});
}

sub getBuildPhaseRefOfTypeInTarget
{
	my ($type, $targetObject_ref) = @_;
	foreach my $buildphase_ref (@{$targetObject_ref->{'buildPhases'}})
	{
		if (getObjectRefWithId($buildphase_ref)->{'isa'} =~ /$type/ )
		{
			return $buildphase_ref;
		}
	}
	return undef;
}

sub getBuildPhaseRefWithNameInTarget
{
	my ($name, $targetObject_ref) = @_;
	foreach my $buildphase_ref (@{$targetObject_ref->{'buildPhases'}})
	{
		my $objref = getObjectRefWithId($buildphase_ref);
		if (exists $objref->{'name'} && $objref->{'name'} eq $name)
		{
			return $buildphase_ref;
		}
	}
}

sub getXCBuildConfigurationRefFromTargetRef
{
	my ($targetObj_ref, $buildConfigName) = @_;
	my $xcconfigList = $targetObj_ref->{'buildConfigurationList'};
	foreach my $XCConfig_ref (@{$objects_ref->{$xcconfigList}{'buildConfigurations'}})
	{
		my $XCConfigObj_ref = $objects_ref->{$XCConfig_ref};
		return $XCConfig_ref if ($XCConfigObj_ref->{'name'} eq $buildConfigName);
	}
}

sub loadSubProject
{
	my $filePath = shift;

	my $json_ref = PlistUtil::convertProjectFileToJSON("$filePath/project.pbxproj");
	my $objects_ref = $json_ref->{'objects'};
	my $rootObject_ref = $objects_ref->{$json_ref->{'rootObject'}};
	my %targetHash_ref = ();
	my %targetFileRefs = ();
	foreach my $target_ref (@{$rootObject_ref->{'targets'}})
	{
		$targetHash_ref{$target_ref} = $objects_ref->{$target_ref};
		$targetFileRefs{$target_ref} = $objects_ref->{$objects_ref->{$target_ref}{'productReference'}} if $objects_ref->{$target_ref}{'productReference'};
	}
	# storing data which will be useful for other API's
	$subProjectsData{basename($filePath)}{'targets'} = \%targetHash_ref;
	$subProjectsData{basename($filePath)}{'targetFileRefs'} = \%targetFileRefs;
}

sub getTargetsOfSubProject
{
	my $projectName = shift;
	my $targetsHash_ref = $subProjectsData{$projectName}{'targets'};
	return $targetsHash_ref;
}

sub getReferenceProxyOfSubProjectTarget
{
	my ($projectName, $targetName) = @_;
	return $subProjectsData{$projectName}{'referenceProxies'}{getSubProjectTargetRefByName($projectName, $targetName)};
}

sub getFileRefOfTargetInSubProject
{
	my ($projectName, $targetName) =@_;
	return $subProjectsData{$projectName}{'targetFileRefs'}{getSubProjectTargetRefByName($projectName, $targetName)};
}

#^^^^^^^^^^^^^^^^^^^^^^ End Of Private Methods ^^^^^^^^^^^^^^^^^^^^^^


#^^^^^^^^^^^^^^^^^^^^^^ Object Creation Methods ^^^^^^^^^^^^^^^^^^^^^^

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXFileReference

 Parameters  : File path, Source tree , name(optional)
 Returns     : Return key/Id.
 Description : Creates a new PBXFileReference Object and returns the key/Id to associated to this object.
 				Source tree values are of different type
 				- <group> (Relative to group)
 				- SDKROOT (System fw path)
 				- BUILT_PRODUCTS_DIR (Build path)
 				- SOURCE_ROOT (Project path) ...
 				To access the file 'XCode' adds Source tree path as prefix to file path.

=cut

sub makePBXFileReference
{
	my ($path, $sourceTree, $name) = @_;
	# if path has more than one component then last component will become its name
	# depending on type of file we'll decide on explicitFileType or lastlastKnownFileType
	# fileEncoding will be 4 by default
	my %fileReference = ();
	$fileReference{'isa'} = "PBXFileReference";
	my @pathComponents = split /\//, $path;
	if (defined $name)
	{
		$fileReference{'name'} = $name;
	}
	else
	{
		$fileReference{'name'} = ($path =~ /\.lproj/) ? (split /\./, $pathComponents[0])[0] : $pathComponents[- 1];
	}
	my $fileType = ($path =~ /(\.[^\/]+)$/)?getFileTypeForFileName($path):"folder";
	if (isBundle($fileType))
	{
		$fileReference{'explicitFileType'} = $fileType;
		$fileReference{'includeInIndex'} = "0";
	}
	else
	{
		$fileReference{'lastKnownFileType'} = $fileType;
		$fileReference{'fileEncoding'} = "4";
	}
	$fileReference{'path'} = $path;
	$fileReference{'sourceTree'} = $sourceTree;
	my $file_ref = generateUID($path);
	addObjectToProject($file_ref, \%fileReference);
	return $file_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXBuildFile

 Parameters  : PBXFilerence key, Buildsettings hash ref.
 Returns     : Return key/Id.
 Description : Creates a new makePBXBuildFile Object and returns the key/Id to associated to this object.

=cut

sub makePBXBuildFile
{
	my ($fileref, $settingsHash_ref) = @_;
	my %buildFile = ();
	$buildFile{'isa'} = 'PBXBuildFile';
	$buildFile{'fileRef'} = $fileref;
	if (defined $settingsHash_ref)
	{
		$buildFile{'settings'} = $settingsHash_ref;
	}
	my $buildFile_ref = generateUID("$fileref/build");
	addObjectToProject($buildFile_ref, \%buildFile);
	return $buildFile_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXGroup

 Parameters  : Path/Name of group, Source tree.
 Returns     : Return key/Id.
 Description : Creates a new makePBXGroup Object and returns the key/Id to associated to this object.
 				Source tree values are of different type
 				- <group> (Relative to group)
 				- SDKROOT (System fw path)
 				- BUILT_PRODUCTS_DIR (Build path)
 				- SOURCE_ROOT (Project path) ...
 				To access the file 'XCode' adds Source tree path as prefix to file path.

=cut

sub makePBXGroup
{
    my ($path, $sourceTree) = @_;
	$sourceTree //= '<group>';
    my %pbxGroup = ();
    my @pathComponents = split /\//, $path;
	$pbxGroup{'isa'} = 'PBXGroup';
	$pbxGroup{'name'} = $pathComponents[-1];
	$pbxGroup{'path'} = $path;
    $pbxGroup{'sourceTree'} = $sourceTree;
    $pbxGroup{'children'} = [];
    my $group_ref = generateUID($path);
    addObjectToProject($group_ref, \%pbxGroup);
    return $group_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXVariantGroup

 Parameters  : Path/Name of group, Source tree.
 Returns     : Return key/Id.
 Description : Creates a new makePBXVariantGroup Object and returns the key/Id to associated to this object.
 				Variant group are created for .strings and .storyboard files. It contains different localized files
 				of with same names.

=cut

sub makePBXVariantGroup
{
    my ($path, $sourceTree) = @_;
	$sourceTree //= '<group>';
    my %pbxVariantGroup = ();
    my @pathComponents = split /\//, $path;
	$pbxVariantGroup{'isa'} = 'PBXVariantGroup';
	$pbxVariantGroup{'name'} = $pathComponents[-1];
    $pbxVariantGroup{'sourceTree'} = $sourceTree;
    $pbxVariantGroup{'children'} = [];
    my $group_ref = generateUID($path);
    addObjectToProject($group_ref, \%pbxVariantGroup);
    return $group_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXContainerItemProxy

 Parameters  : Project Object key, Target Object key, Target name, Proxy type(optional).
 Returns     : Return key/Id.
 Description : Creates a new makePBXContainerItemProxy Object and returns the key/Id to associated to this object.
 				ProxyType defalut value is 1 and for sub-poject it is 2.
 				These are proxy objects created when a target is added to another target as dependency
 				and to make subporject targets accessible in current project.

=cut

sub makePBXContainerItemProxy
{
	my ($containerPortal, $remoteGlobalIDString, $remoteInfo, $proxyType) = @_;
	$proxyType //= "1"; #defalut is 1, for sub-projects it is 2
	my %PBXContainerItemProxy = ();
	$PBXContainerItemProxy{'isa'} = 'PBXContainerItemProxy';
	$PBXContainerItemProxy{'containerPortal'} = $containerPortal; # project object or sub-project PBXfileref
	$PBXContainerItemProxy{'remoteGlobalIDString'} = $remoteGlobalIDString; # dependent target ID
	$PBXContainerItemProxy{'remoteInfo'} = $remoteInfo;
	$PBXContainerItemProxy{'proxyType'} = $proxyType;
	my $container_ref = generateUID("$PBXContainerItemProxy{'remoteInfo'}/$containerPortal");
    addObjectToProject($container_ref, \%PBXContainerItemProxy);
    return $container_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXTargetDependency

 Parameters  : Target Id, PBXContainerItemProxy Object key, Target name.
 Returns     : Return key/Id.
 Description : Creates a new makePBXTargetDependency Object and returns the key/Id to associated to this object.
 				For Sub-projects Target ID is optional and Target name is mandatory.
 				For main project Target ID is mandatory and Target name is optional.

=cut

sub makePBXTargetDependency
{
	# $name is optional
	my ($target, $targetProxy, $name) = @_;
	my %PBXTargetDependency = ();
	$PBXTargetDependency{'isa'} = 'PBXTargetDependency';
	$PBXTargetDependency{'target'} = $target if (defined $target); # dependent target ID
	$PBXTargetDependency{'targetProxy'} = $targetProxy; # PBXContainerItemProxy created for dependent target
	$PBXTargetDependency{'name'} = $name if (defined $name);
	my $dependency_ref = generateUID("$PBXTargetDependency{'targetProxy'}");
    addObjectToProject($dependency_ref, \%PBXTargetDependency);
    return $dependency_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makeXCConfigurationList

 Parameters  : ConfigurationName, Configuration Visiblility.
 Returns     : Return key/Id.
 Description : Creates a new makeXCConfigurationList Object and returns the key/Id to associated to this object.
 				Both input params are optional.
 				Default value for
 					defaultConfigurationName is Release
 					defaultConfigurationIsVisible is 0

=cut

sub makeXCConfigurationList
{
	my ($defaultConfigurationName, $defaultConfigurationIsVisible) = @_;
	$defaultConfigurationIsVisible //= '0'; #defalut value is 0
	$defaultConfigurationName //= 'Release';
	my %XCConfigurationList = ();
	$XCConfigurationList{'isa'} = 'XCConfigurationList';
	$XCConfigurationList{'buildConfigurations'} = [];
	$XCConfigurationList{'defaultConfigurationName'} = $defaultConfigurationName;
	$XCConfigurationList{'defaultConfigurationIsVisible'} = $defaultConfigurationIsVisible;
	my $configurationList_ref = generateUID($XCConfigurationList{'defaultConfigurationName'});
	addObjectToProject($configurationList_ref, \%XCConfigurationList);
	return $configurationList_ref;
}

sub makeXCBuildConfiguration
{
	my ($name) = @_;
	my %XCBuildConfiguration = ();
	$XCBuildConfiguration{'isa'} = 'XCBuildConfiguration';
	$XCBuildConfiguration{'name'} = $name;
	$XCBuildConfiguration{'buildSettings'} = ();
	my $configuration_ref = generateUID("XCBuildConfiguration/$name");
	addObjectToProject($configuration_ref, \%XCBuildConfiguration);
	return $configuration_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXSourcesBuildPhase

 Parameters  : None.
 Returns     : Return key/Id.
 Description : Creates a new makePBXSourcesBuildPhase Object and returns the key/Id to associated to this object.
 				This object contain all source files attached to the target.
 				You can find this under BuildPhases->Compile Sources

=cut

sub makePBXSourcesBuildPhase
{
	return makePBXBuildPhaseOfType('Sources');
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXResourcesBuildPhase

 Parameters  : None.
 Returns     : Return key/Id.
 Description : Creates a new makePBXResourcesBuildPhase Object and returns the key/Id to associated to this object.
 				This object contain all resource files attached to the target.
 				You can find this under BuildPhases->Copy Bundle Resources

=cut

sub makePBXResourcesBuildPhase
{
	return makePBXBuildPhaseOfType('Resources');
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXHeadersBuildPhase

 Parameters  : None.
 Returns     : Return key/Id.
 Description : Creates a new makePBXHeadersBuildPhase Object and returns the key/Id to associated to this object.
 				This object contain all header files attached to the target.
 				You can find this under BuildPhases->Headers

=cut

sub makePBXHeadersBuildPhase
{
	return makePBXBuildPhaseOfType('Headers');
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXFrameworksBuildPhase

 Parameters  : None.
 Returns     : Return key/Id.
 Description : Creates a new makePBXFrameworksBuildPhase Object and returns the key/Id to associated to this object.
 				This object contain all Framework files attached to the target.
 				You can find this under BuildPhases->Headers

=cut

sub makePBXFrameworksBuildPhase
{
	return makePBXBuildPhaseOfType('Frameworks');
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXCopyFilesBuildPhase

 Parameters  : None.
 Returns     : Return key/Id.
 Description : Creates a new makePBXCopyFilesBuildPhase Object and returns the key/Id to associated to this object.
 				This object contain all files that needs to be copied while creating app like watch app, app-extensions, embed FWs.
 				You can find this under BuildPhases-><Embed <watch content>>

=cut

sub makePBXCopyFilesBuildPhase
{
	my ($name, $dstPath, $dstSubfolderSpec) = @_;
	$name //= 'Copy Build Phase';
	my $buildPhase_ref = makePBXBuildPhaseOfType('CopyFiles');
	my $PBXCopyFilesBuildPhaseObj_ref = getObjectRefWithId($buildPhase_ref);
	$PBXCopyFilesBuildPhaseObj_ref->{'name'} = $name;
	$PBXCopyFilesBuildPhaseObj_ref->{'dstPath'} = $dstPath if defined $dstPath;
	$PBXCopyFilesBuildPhaseObj_ref->{'dstSubfolderSpec'} = $dstSubfolderSpec if defined $dstSubfolderSpec;
	return $buildPhase_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXShellScriptBuildPhase

 Parameters  : None.
 Returns     : Return key/Id.
 Description : Creates a new makePBXShellScriptBuildPhase Object and returns the key/Id to associated to this object.
 				Any scripts that needs to execute while creating app.
 				Ex:- creating library for all archs.

=cut

sub makePBXShellScriptBuildPhase
{
	#not giving "inputPaths", "outputPaths"
	my ($shellPath, $shellScript) = @_;
	my $buildPhase_ref = makePBXBuildPhaseOfType('ShellScript');
	my $PBXShellScriptBuildPhaseObj_ref = getObjectRefWithId($buildPhase_ref);
	$PBXShellScriptBuildPhaseObj_ref->{'buildActionMask'} = '12';
	$PBXShellScriptBuildPhaseObj_ref->{'shellPath'} = $shellPath;
	$PBXShellScriptBuildPhaseObj_ref->{'shellScript'} = $shellScript;
	$PBXShellScriptBuildPhaseObj_ref->{'files'} = [];
	$PBXShellScriptBuildPhaseObj_ref->{'inputPaths'} = [];
	$PBXShellScriptBuildPhaseObj_ref->{'outputPaths'} = [];
	return $buildPhase_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXNativeTarget

 Parameters  : Target Name, Product type, Default settings hash ref., Product name.
 Returns     : Return key/Id.
 Description : Creates a new makePBXNativeTarget Object and returns the key/Id to associated to this object.
 				Product type represent the type(static library, app, app-extension) of object.
 				Default settings are mandatory.
 				Product name is optional because all products generally go by its target name.

=cut

sub makePBXNativeTarget
{
	# TODO:- should read static instead of com.---.static
	my ($name, $productType, $defaultTargetSettingsHash_ref, $productName) = @_;
	my %PBXNativeTarget = ();

	$productName //= $name;
	$PBXNativeTarget{'isa'} = 'PBXNativeTarget';
	$PBXNativeTarget{'name'} = $name;
	$PBXNativeTarget{'productName'} = $productName;
	$PBXNativeTarget{'productReference'} = generateUID("$name.productReference");
	$PBXNativeTarget{'productType'} = $productType;
	$PBXNativeTarget{'dependencies'} = [];
	$PBXNativeTarget{'buildRules'} = [];

	my $XCConfigList_ref = makeXCConfigurationList();
	my $XCConfigListObj_ref = getObjectRefWithId($XCConfigList_ref);
	my @configNames = @{listOfXCBuildConfigNames()};
	foreach my $configName (@configNames)
	{
		my $XCConfig_ref = makeXCBuildConfiguration($configName);
		my $XCConfigObj_ref = getObjectRefWithId($XCConfig_ref);
		my %defaultSettings = %{$defaultTargetSettingsHash_ref};
		$XCConfigObj_ref->{'buildSettings'} = \%defaultSettings;

        push(@{$XCConfigListObj_ref->{'buildConfigurations'}}, $XCConfig_ref);
	}
	$PBXNativeTarget{'buildConfigurationList'} = $XCConfigList_ref;

	$PBXNativeTarget{'buildPhases'} = [];
	my @buildPhases = ('Sources', 'Resources', 'Frameworks');#todo:- need to freeze the list...
	foreach my $buildName (@buildPhases)
	{
        push(@{$PBXNativeTarget{'buildPhases'}}, makePBXBuildPhaseOfType($buildName));
	}

	my $target_ref = generateUID("$name");
	addObjectToProject($target_ref, \%PBXNativeTarget);
	return $target_ref;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 makePBXReferenceProxy

 Parameters  : Product path/name in sub-project, Container item proxy key, Target's product type, Soure tree.
 Returns     : Return key/Id.
 Description : Creates a new makePBXReferenceProxy Object and returns the key/Id to associated to this object.
 				This objects are refernces/alias to targets in sub projects.
 				Sourcetree is optional and its default value is BUILT_PRODUCTS_DIR

=cut

sub makePBXReferenceProxy
{
	#$path is name of product EX:- HelloBoxy.app
	my ($path, $containerProxy_ref, $fileType, $sourceTree) = @_;
	$sourceTree //= 'BUILT_PRODUCTS_DIR';
	my %PBXReferenceProxy = ();

	$PBXReferenceProxy{'isa'} = "PBXReferenceProxy";
	$PBXReferenceProxy{'path'} = $path;
	$PBXReferenceProxy{'remoteRef'} = $containerProxy_ref;
	$PBXReferenceProxy{'fileType'} = $fileType;
	$PBXReferenceProxy{'sourceTree'} = $sourceTree;
	my $PBXRef_ref = generateUID($path);
	addObjectToProject($PBXRef_ref, \%PBXReferenceProxy);
	return $PBXRef_ref;
}

#^^^^^^^^^^^^^^^^^^^^^^ End Of Object Creation Methods ^^^^^^^^^^^^^^^^^^^^^^

#~~~~~~~~~~~~~~~~~~~~~~ API's ~~~~~~~~~~~~~~~~~~~~~~

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 init

 Parameters  : Project file path
 Returns     : None
 Description : Project file will be converted to JSON using "plutil" command.
 				This method is like constructor for this module.
 				This method must be called before calling any other subroutine.

=cut

sub init
{
    my @phoneTargets = ();
    my @_watchTargets = ();
	$projectFilePath = shift;
	$json = PlistUtil::convertProjectFileToJSON($projectFilePath);
	$objects_ref = $json->{'objects'};
	$rootObject_ref = $objects_ref->{$json->{'rootObject'}};
    foreach my $target_Ref (@{$rootObject_ref->{'targets'}})
    {
        my $targetObj_ref = $objects_ref->{$target_Ref};
        if ($targetObj_ref->{'productType'} =~ /application$/)
        {
            push(@phoneTargets, $targetObj_ref->{'name'});
        }
        elsif ($targetObj_ref->{'productType'} =~ /(watchapp.|watchkit.-extension)$/)
        {
            push(@_watchTargets, $targetObj_ref->{'name'});
        }
    }
    @targets = @phoneTargets;
    @watchTargets = @_watchTargets;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createProject

 Parameters  : None
 Returns     : None
 Description : Writes the JSON back to same File path given to init() .

=cut

sub createProject
{
	PlistUtil::createProjectFromJSON($json, $projectFilePath);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 cleanProject

 Parameters  : None
 Returns     : None
 Description : Removes all objects, childrens in groups, build phases,
  				target dependencies, targets, starts with 58725ABC.
  				All objects which are created by using this package has this prefix
  				as part of their key.

=cut

sub cleanProject
{
	cleanContainers();
	foreach my $key (keys %$objects_ref)
    {
		if ($key =~ /^58725ABC/)
		{
			delete $objects_ref->{$key};
		}
		elsif ($objects_ref->{$key}{'isa'} eq 'PBXFrameworksBuildPhase')
		{
			foreach my $FWBuild_ref (@{$objects_ref->{$key}{'files'}})
			{
				my $fileRef = $objects_ref->{$FWBuild_ref}{'fileRef'};
				if ($fileRef && $objects_ref->{$fileRef})
				{
					$existing_frameworks_Hash{basename($objects_ref->{$fileRef}{'path'})} = 1;
				}
			}
		}
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 getGroupRefWithPathFromRoot

 Parameters  : Path from Root group
 Returns     : Group key/Id
 Description : Returns group key/Id which exists in the path.
 				This API will add group if there is no group created in path.
 				That mean it will defenately return Group ref. :P .

=cut

sub getGroupRefWithPathFromRoot
{
	my $groupPathFromRoot = shift;
	if (exists $pathCache{$groupPathFromRoot})
	{
		return $pathCache{$groupPathFromRoot};
	}
	my $groupID = $rootObject_ref->{'mainGroup'};
	my $groupName = '';
	foreach $groupName (split /\//, $groupPathFromRoot)
	{
		my $children = $objects_ref->{$groupID}{'children'};
		my $found = 0;
		for my $childID (@$children)
		{
			if ($objects_ref->{$childID}{'isa'} eq 'PBXGroup' || $objects_ref->{$childID}{'isa'} eq 'PBXVariantGroup')
			{
				if ((exists $objects_ref->{$childID}{'name'} && $groupName eq $objects_ref->{$childID}{'name'}) || (exists $objects_ref->{$childID}{'path'} && $groupName eq $objects_ref->{$childID}{'path'}))
				{
					$groupID = $childID;
					$found = 1;
					last;
				}
			}
		}
		if ( !$found )
		{
			my $temp = undef;
			# create a new group
			if ($groupName =~ /(\.strings|\.storyboard)$/) {
				$temp = makePBXVariantGroup($groupName, "<group>");
			}
			else {
				$temp = makePBXGroup($groupName, "<group>");
			}
            push(@{$objects_ref->{$groupID}{'children'}}, $temp);# add it as child to groupID
			$groupID = $temp;
		}
	}
	$pathCache{$groupPathFromRoot} = $groupID;
	return $groupID;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addFileRef_WithBuildSettings_IntoBuilPhase_InTargets

 Parameters  : PBXFileReference objects key, Group path from root, Build setting hash ref, Builphase name, Target names array ref.
 Returns     : None.
 Description : Adds given file refernce to group and then creates a build file with settings if any, for each target
 				and adds build files to build phases in target.
 				Note:- Build phase name is "optional" for Sources, Resources, Headers, Frameworks.

=cut

#addFileAsChildToGroupWithBuildSettingsIntoBuilPhaseInTargets
sub addFileRef_WithBuildSettings_IntoBuilPhase_InTargets
{
	my ($fileref, $groupPathFromRoot, $buildSettingsHash_ref, $buildPhaseName, $targets) = @_;
	my $groupref = (defined $groupPathFromRoot) ? getGroupRefWithPathFromRoot($groupPathFromRoot) : undef;
	addAsChildToGroup($groupref, $fileref) if $groupref;
	if (defined $targets)
	{
		if ($groupref && getObjectRefWithId($groupref)->{'isa'} eq 'PBXVariantGroup') #variant groups go into buildphase not the files
		{
			if (exists $addedVariantGroups{$groupref})
			{
				return;
			}
			$addedVariantGroups{$groupref} = 1;
			$fileref = $groupref;
		}
		foreach my $targetName (@$targets)
		{
			my $buildref = makePBXBuildFile($fileref, $buildSettingsHash_ref);
			addFileToTarget($buildref, $targetName, $buildPhaseName);
		}
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addFile_WithBuildSettings_IntoBuildPhase_InTargets

 Parameters  : File path, Source tree, Group path from root, Build setting hash ref, Builphase name, Target names array ref.
 Returns     : None.
 Description : This API creates PBXFileref and calls addFileRef_WithBuildSettings_IntoBuilPhase_InTargets.
				Source tree values are of different type
 				- <group> (Relative to group)
 				- SDKROOT (System fw path)
 				- BUILT_PRODUCTS_DIR (Build path)
 				- SOURCE_ROOT (Project path) ...
 				To access the file 'XCode' adds Source tree path as prefix to file path.
=cut

sub addFile_WithBuildSettings_IntoBuildPhase_InTargets
{
	# first three args are must...
	my ($path, $sourceTree, $groupPathFromRoot, $buildSettingsHash_ref, $buildPhaseName, $targets) = @_;
	my $fileref = makePBXFileReference($path, $sourceTree);
	addFileRef_WithBuildSettings_IntoBuilPhase_InTargets($fileref, $groupPathFromRoot, $buildSettingsHash_ref, $buildPhaseName, $targets);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addFileToGroupAndTargets

 Parameters  : File path, Source tree, Group path from root, Target names array ref.
 Returns     : None.
 Description : This API creates adds file as children to group and its membership in given targets.

				Source tree values are of different type
 				- <group> (Relative to group)
 				- SDKROOT (System fw path)
 				- BUILT_PRODUCTS_DIR (Build path)
 				- SOURCE_ROOT (Project path) ...
				To access the file 'XCode' adds Source tree path as prefix to file path.
 				Note:- If group mentioned in path doesn't exists then a new group with that name will be created.
=cut

sub addFileToGroupAndTargets
{
	my ($path, $sourceTree, $groupPathFromRoot, $targets) = @_;
	addFile_WithBuildSettings_IntoBuildPhase_InTargets($path, $sourceTree, $groupPathFromRoot, undef, undef, $targets);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 updateBuildSettingsForTarget

 Parameters  : Target name, Buildsettings hash ref, Build Config name
 Returns     : None.
 Description : This API add/update the settings mentioned in buildsettings hash to target.
 				*If Build config name is not set then these settings will be applied to all build configs.

 				Info:- There are different type build config which can selected from "edit Scheme".
 				All setting related to this build config name will be applied during project build.
=cut

sub updateBuildSettingsForTarget
{
	my ($targetName, $settingsHash_ref, $configName) = @_;
	my $targetObj_ref = getObjectRefWithId(getTargetRefByName($targetName));
	my @buildConfigurationName = defined $configName? ($configName) : @{listOfXCBuildConfigNames()};
	foreach my $buildConfigName (@buildConfigurationName)
	{
		my $XCConfig_ref = getXCBuildConfigurationRefFromTargetRef($targetObj_ref, $buildConfigName);
		my $settings_ref = getObjectRefWithId($XCConfig_ref)->{'buildSettings'};
		foreach my $key (keys %$settingsHash_ref)
		{
			$settings_ref->{$key} = $settingsHash_ref->{$key};
		}
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createTargetDependencyForSubProjectTarget

 Parameters  : From Target's Name, Project name, To Target's name
 Returns     : None.
 Description : Creats a target dependency from target in project to main project's target.

=cut

sub createTargetDependencyForSubProjectTarget
{
	my ($fromTargetName, $inProjectName, $toTargetName) = @_;
	my $inProject_ref;
	my $fromTarget_ref;
	if(defined $inProjectName)
	{
		$inProject_ref = getProjectRefFromName($inProjectName);
		$fromTarget_ref = getSubProjectTargetRefByName($inProjectName, $fromTargetName);
	}
	else
	{
		$inProject_ref = getVMProjectRef();
		$fromTarget_ref = getTargetRefByName($fromTargetName);
	}
	my $toTarget_ref = getTargetRefByName($toTargetName);
	my $containerItemProxy_ref = makePBXContainerItemProxy($inProject_ref, $fromTarget_ref, $fromTargetName, undef);
	my $targetDependency_ref;
	if(defined $inProjectName)
	{
		$targetDependency_ref = makePBXTargetDependency(undef, $containerItemProxy_ref, $fromTargetName);
	}
	else
	{
		$targetDependency_ref = makePBXTargetDependency($fromTarget_ref, $containerItemProxy_ref);
	}

	my $toTargetObj_ref = getObjectRefWithId($toTarget_ref);
    push(@{$toTargetObj_ref->{'dependencies'}}, $targetDependency_ref);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 createTargetDependency

 Parameters  : From Target's Name, Project name, To Target's name
 Returns     : None.
 Description : This API is created for adding target dependencies in main project.
 				It is wrapper over "createTargetDependencyForSubProjectTarget".

 				*Pass "undef" as Project name if both target's belong to main project.

=cut

sub createTargetDependency
{
	my ($fromTargetName, $inProjectName, $toTargetName) = @_;
	createTargetDependencyForSubProjectTarget($fromTargetName, $inProjectName, $toTargetName);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addSubProjectTargetAsBuildphaseInTargets

 Parameters  : Project name, Target name, Build settings hash ref, build phase name, Target names array ref.
 Returns     : None.
 Description : Add target from sub-project under build phase in given targets.
 				Ex:- Adding "Watch app extension" under "Embed watch Content" in Phone App targets.

=cut

sub addSubProjectTargetAsBuildphaseInTargets
{
	my ($projectName, $targetName, $buildSettingsHash_ref, $buildPhaseName, $targets) = @_;
	my $fileref = getReferenceProxyOfSubProjectTarget($projectName, $targetName);
	foreach my $toTargetName (@$targets)
	{
		my $buildFile_ref = makePBXBuildFile($fileref, $buildSettingsHash_ref);
		my $type = getFileRefOfTargetInSubProject($projectName, $targetName)->{'explicitFileType'};

		my $targetObj_ref = getObjectRefWithId(getTargetRefByName($toTargetName));
		my $buildPhase_ref = undef;
		if (defined $buildPhaseName)
		{
			$buildPhase_ref = getBuildPhaseRefWithNameInTarget($buildPhaseName, $targetObj_ref);
		}
		else
		{
			$buildPhase_ref = getBuildPhaseRefOfTypeInTarget(getCategoryFromType($type), $targetObj_ref);
		}
		if ($buildPhase_ref)
		{
			my $buildPhaseObj_ref = getObjectRefWithId($buildPhase_ref);
            push(@{$buildPhaseObj_ref->{'files'}}, $buildFile_ref);
		}
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addTargetAsBuildphaseInTargets

 Parameters  : Target name, Build settings hash ref, build phase name, Target names array ref.
 Returns     : None.
 Description : Add target under build phase in given targets.
 				Ex:- Adding "Watch app extension" under "Embed watch Content" in Phone App targets.

=cut

sub addTargetAsBuildphaseInTargets
{
	my ($targetName, $buildFileSettingsHash_ref, $builphaseName, $targets) = @_;
	addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(getProductReferenceOfTarget($targetName), undef, $buildFileSettingsHash_ref, $builphaseName, $targets);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addTargetAttributes

 Parameters  : Target name, Target Attributes hash ref.
 Returns     : None.
 Description : Adds target Attributes(capabilities) to project.

=cut

sub addTargetAttributes
{
	my ($targetName, $targetAttributes) = @_;
	my $target_ref = getTargetRefByName($targetName);
	my $projectObject_ref = getObjectRefWithId(getVMProjectRef());
	foreach my $key (keys %$targetAttributes)
	{
		$projectObject_ref->{'attributes'}{'TargetAttributes'}{$target_ref}{$key} = $targetAttributes->{$key};
	}
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addTargetToProject

 Parameters  : Target name, Product Type, Default target settings hash ref.
 Returns     : None.
 Description : Adds a target to project with given product type and settings.
 				Note:- Product group is also creted as part of this API.

=cut

sub addTargetToProject
{
	my ($targetName, $productType, $defaultTargetSettingsHash_ref) = @_;
	$productType = getProductType($productType);
	if(! defined $defaultTargetSettingsHash_ref)
	{
		my $fileName = productTypeToExtension($productType) eq '.appex'? 'DefaultExtensionsSettings.json' : 'DefaultTargetSettings.json';
    	my $content;
		open(my $fh, '<', $fileName) or die "cannot open file $fileName";
		{
			local $/;
			$content = <$fh>;
		}
		close($fh);
	    $defaultTargetSettingsHash_ref = decode_json($content);
	}

	my $target_ref = makePBXNativeTarget($targetName, $productType, $defaultTargetSettingsHash_ref);
    push(@{getObjectRefWithId(getVMProjectRef())->{'targets'}}, $target_ref); # adding to tagets list in rootObject

	my %targetAttributes = ('CreatedOnToolsVersion' => '7.3.1'); # Hard coded value...
	addTargetAttributes($targetName, \%targetAttributes);

	my $productReference = getProductReferenceOfTarget($targetName);
	my $fileRef = makePBXFileReference($targetName.productTypeToExtension($productType), "BUILT_PRODUCTS_DIR");
	$objects_ref->{$productReference} = delete $objects_ref->{$fileRef};
	addAsChildToGroupWithPathFromRoot("Products", $productReference);
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 addSubProjectToProject

 Parameters  : Relative Path from Project, Group Path from Root
 Returns     : None.
 Description : Adds a Sub-project to project.
 				Note:- All changes(creating ref.proxies and continer item proxies) which are needed while adding
 				sub-project are handled in this API.

=cut

sub addSubProjectToProject
{
	my ($relativePathFromProject, $groupPathFromRoot) = @_;

	loadSubProject("../$relativePathFromProject");

	my $projectRef = makePBXFileReference($relativePathFromProject, 'SOURCE_ROOT');
	$subProjectsData{basename($relativePathFromProject)}{'fileref'} = $projectRef; #storing file ref of sub-project

	my $parentGroup_ref =  getGroupRefWithPathFromRoot($groupPathFromRoot);
	addAsChildToGroup($parentGroup_ref, $projectRef);

	#creating products group. This will contain all products of sub-project
	my $groupRef = makePBXGroup("Products", "<group>");

	my $listOftargets = getTargetsOfSubProject(basename($relativePathFromProject));
	foreach my $target_ref (keys %$listOftargets)
	{
		my $targetObj = $listOftargets->{$target_ref};
		if (defined $targetObj->{'productType'} && $targetObj->{'productType'} =~ /(application|com.apple.product-type.framework|library.static|application.watchapp.|watchkit.-extension)$/)
		{
			my $productReference = $targetObj->{'productReference'};
			my $containerProxy_Ref = makePBXContainerItemProxy($projectRef, $productReference,
				$targetObj->{'productName'}, "2");
			my $path = getFileRefOfTargetInSubProject(basename($relativePathFromProject), $targetObj->{'name'})->{'path'};
			my $referenceProxy_ref = makePBXReferenceProxy(
				$path, $containerProxy_Ref,
				fileTypefromProductType($targetObj->{'productType'}));
			$subProjectsData{basename($relativePathFromProject)}{'referenceProxies'}{$target_ref} = $referenceProxy_ref;
			addAsChildToGroup($groupRef, $referenceProxy_ref);
		}
	}

	#adding product references
	my %projectReference = ("ProductGroup" => $groupRef, "ProjectRef" => $projectRef);
	addProjectReferencesToProject(\%projectReference);

}

sub getCapabilityType
{
    my $type = shift;
    my %capabilityTypeToDataType = (
        "aps-environment"         => "string",
        "com.apple.developer.ClassKit-environment"         => "string",
        "com.apple.developer.associated-domains"                => "array",
        "com.apple.developer.default-data-protection"            => "string",
        "com.apple.developer.healthkit"                => "bool",
        "com.apple.developer.healthkit.access"                => "array",
        "com.apple.developer.in-app-payments"        => "array",
        "com.apple.developer.networking.wifi-info"                => "bool",
        "com.apple.security.application-groups"                => "array",
        "com.apple.developer.parent-application-identifiers"      => "array"
    );
    return $capabilityTypeToDataType{$type};
}

sub getMappedCapabilityNamespace
{
    my $externalCapabilityName = shift;
    my %capabalitiesMap = (
        "Data Protection" => "com.apple.developer.default-data-protection"
    );
    return $capabalitiesMap{$externalCapabilityName};
}
sub createEntitlementsFile
{
    my $entitlementsFile = shift;
    open(my $fh, '+>>', $rscHandler->{_basePathForProjectAsset}.'/'.$entitlementsFile);
    my $writer = new XML::Writer(OUTPUT => 'self',DATA_MODE => 1);
    $writer->xmlDecl('UTF-8');
    $writer->startTag("plist","version" => "1.0");
    $writer->startTag("dict");
    $writer->endTag("dict");
    $writer->endTag("plist");
    my $xml = $writer->end();
    print $fh $xml;
    close $fh;
    print "Created Entitlements file\n";
}

sub cleanCapabilities
{
    my $appName = shift;
    my @entitlements = `find .. -iname '*.entitlements' | sed 's#.*/##'`;
    chomp(@entitlements);
#    print Dumper(\@entitlements);
    if(!grep { $_ eq $appName.'.entitlements' } @entitlements){
#        print "New KAR File\n";
        for my $entitlement (@entitlements){
            if(-e '../$entitlement'){
                `rm '../$entitlement'`;
            }
        }
    }
}

sub initCapabilities
{
    my $appName = shift;
	my $encodedAppName = shift;
    my $entitlementsFile = $appName.'.entitlements';
	my $encodedEntitlementsFile = $encodedAppName.'.entitlements';
    my $trgts = shift;
    my $hashValue = shift;
    
    foreach my $key (keys %$objects_ref)
    {
        if(defined $objects_ref->{$key}{'path'}){
            if($objects_ref->{$key}{'path'} =~ /\.entitlements$/){
                if($objects_ref->{$key}{'path'} eq $entitlementsFile){
                    $isEntitlementsFileCreatedByKony = 0;
                }elsif($objects_ref->{$key}{'path'} eq "KonyWidget.entitlements"){
                	# Added this condition to not remove the PBXFileReference of KonyWidget.entitlements
                }else{
                    delete $objects_ref->{$key};
                    my @children = ();
                    my $groupObj_ref = $objects_ref->{$rootObject_ref->{'mainGroup'}};
                    foreach my $child_ref (@{$groupObj_ref->{'children'}})
                    {
                        if($child_ref ne $key){
                            push @children, $child_ref;
                        }
                    }
                    $groupObj_ref->{'children'} = \@children;
                }
            }
            
        }
    }
    
    my %targetBuildsettings;
    
    if($hashValue->{'enabled'} == '1'){
        unless(-e $rscHandler->{_basePathForProjectAsset}.'/'.$entitlementsFile){
            createEntitlementsFile($entitlementsFile);
        }else{
            print "Updating Entitlements file\n";
        }
        %targetBuildsettings = ('CODE_SIGN_ENTITLEMENTS' => $rscHandler->{_basePathForGroupFromRoot}.$encodedEntitlementsFile);
        if($isEntitlementsFileCreatedByKony == 1){
            XCProjectEditor::addFileToGroupAndTargets($encodedEntitlementsFile, "<group>", $rscHandler->{_basePathForGroupFromRoot}, []);
        }
    }elsif($isEntitlementsFileCreatedByKony == 1){
        %targetBuildsettings = ('CODE_SIGN_ENTITLEMENTS' => '');
    }

    foreach my $targetname (@{$trgts})
    {
        XCProjectEditor::updateBuildSettingsForTarget($targetname, \%targetBuildsettings);
    }
    
}

#/////////////////////////////////////////////////////////////////////////////
=pod
 
=head2 addCapabilitiesToProject
 
Parameters : App Name of the project, Project Capabilites enabled from IDE, Hash value which determines whether the capabilites are enabled or not from IDE.
Returns     : None.
Description : Adds Capabilities present in Project Capabilites parameter to Capabilities section of Xcode and handles entitlements file.
 
=cut

sub addCapabilitiesToProject
{
    my $appName = shift;
    my $encodedAppName = shift;
    if(-e $rscHandler->{_basePathForProjectAsset}.'/Debugger-'.$appName.'.entitlements'){
        $appName = 'Debugger-'.$appName;
    }
    my $entitlementsFile = $appName.'.entitlements';
    my $entitlementsFilePath = $rscHandler->{_basePathForProjectAsset}.'/'.$entitlementsFile;
    my $projectCapabilities = shift;
    my $trgts = shift;
    my $hashValue = shift;
    
    # Creating Entitlements File only when it is not present.
    if(!(-e $entitlementsFilePath)){
        initCapabilities($appName, $encodedAppName, $trgts, $hashValue);
    }
    
    
    foreach my $target(@{$trgts}){
        my $targetRef = XCProjectEditor::getTargetRefByName($target);
        
        my @enabledCapabilities = ();
        
#      Creating Instance of PlistConfigurator
        my $plistconfigurator = new PlistConfigurator($entitlementsFilePath);
        
        while ((my $capability, my $capValue) = each %{$projectCapabilities}) {
#            Adding Capability to the Entitlements File
            my $capabilityType = getCapabilityType($capability);
            $plistconfigurator->setValueForKey($capability,$capValue,$capabilityType);
        }
    }
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 isBuildPhasePresentInTarget

 Parameters  : Build Phase Name [String], Target name [String]
 Returns     : 0 (or) 1.
 Description : Checks whether a build phase with given name is present in given Target.

=cut

sub isBuildPhasePresentInTarget{
    my $buildPhaseName = shift;
    my $targetName = shift;
    my $retVal = 0;
    my $targetObj_ref = getObjectRefWithId(getTargetRefByName($targetName));
    foreach my $buildphase_Ref (@{$targetObj_ref->{'buildPhases'}}){
        my $buildref = getObjectRefWithId($buildphase_Ref);
        if(exists $buildref->{'name'}){
            #print $buildref->{'name'}."\n";
            if($buildref->{'name'} eq $buildPhaseName){
                $retVal = 1;
            }
        }
    }
    return $retVal;
}



#~~~~~~~~~~~~~~~~~~~~~~ End Of API's ~~~~~~~~~~~~~~~~~~~~~~

1;
