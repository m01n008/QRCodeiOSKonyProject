#!/usr/bin/perl -w
package NFIConfigurator;

use Data::Dumper;
use JSON;
use File::Basename;
use XCProjectEditor;

sub new {
	my ($class, $nfiVersion, $projFilePath, $appPropFilePath,$rscHandler, $args_targets, $NFILoaderTarget, $konyappunzipdir, $mode, $type, $enableVideoWidget, $videoJSFilePath, $isLibraryBuild) = @_;
    
	$class = ref $class if ref $class;
	my $self = bless {
        nfiVersion => $nfiVersion,
        projFilePath => $projFilePath,
		appPropFilePath => $appPropFilePath,
        rscHandler => $rscHandler,
        args_targets => $args_targets,
        NFILoaderTarget => $NFILoaderTarget,
		mode => $mode,
		type => $type,
        konyappunzipdir => $konyappunzipdir,
        enableVideoWidget => $enableVideoWidget,
        videoJSFilePath => $videoJSFilePath,
        isLibraryBuild => $isLibraryBuild
	}, $class;
	return $self;
}

sub readAndParseJSON{
    my ($self) = @_;
    my $json;
    {
        local $/; #Enable 'slurp' mode
        open my $fh, "<", "$self->{'konyappunzipdir'}/selfsufficientmodules/cnfi.json";
        $json = <$fh>;
        close $fh;
    }
    return decode_json($json);
}

sub isDynamicFramework
{
    my ($self) = shift;
    my $FWPath = shift;
    my $retVal = 0;
    if($FWPath =~ m/.xcframework/)
    {
        my $listOfFW = `find $FWPath -name "*.framework"`;
        if(length($listOfFW)){
            # print "Adding Thirdparty isDynamicFramework YES ".basename($FWPath). "\n";
            return 1;
        }
        else{
            # print("Adding Thirdparty isDynamicFramework NO ".basename($FWPath)." $listOfFW ". "\n");
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
        if($self->{'isLibraryBuild'}){
            system "cp -rf $FWPath ModuleDependencies/FFIDynamicFrameworks/";
        }
    }
    return $retVal;
}


sub configure_debug{
    my ($self) = @_;
    # common stuff here
    my @targets = @{$self->{'args_targets'}};
    my %linkBuildSettings = ('ATTRIBUTES' => ['Weak']);
    my %embededBuildSettings =  ("ATTRIBUTES" => ["CodeSignOnCopy"]);

    # generate targets for NFIUtility and NFICore
    # add NFIUtility as Source Target Mode
    my $TARGET_NAME = "NFIUtility";
    print "[NFI-Source]: Adding Target $TARGET_NAME\n";
    my $filename = './DefaultTargetSettings.json';
    my $content;
    open(my $fh, '<', $filename) or die "cannot open file $filename";
    {
        local $/;
        $content = <$fh>;
    }
    close($fh);
    my $defaultTargetSetngsHash_ref = decode_json($content);
    # NFI Target releated mandate build settings
    $defaultTargetSetngsHash_ref->{'ARCHS'} = "\$(ARCHS_STANDARD)";
    $defaultTargetSetngsHash_ref->{'IPHONEOS_DEPLOYMENT_TARGET'} = "8.0";
    $defaultTargetSetngsHash_ref->{'INFOPLIST_FILE'} = "nativebinding/$TARGET_NAME/Info.plist";
    $defaultTargetSetngsHash_ref->{'CLANG_ENABLE_OBJC_ARC'} = "NO";
    $defaultTargetSetngsHash_ref->{'OTHER_LDFLAGS'} = "-weak_framework Foundation -weak_framework CoreFoundation -weak_framework CFNetwork -weak_framework Security";
    $defaultTargetSetngsHash_ref->{'PRODUCT_BUNDLE_IDENTIFIER'} = "com.kony.nfi.$TARGET_NAME";
    $defaultTargetSetngsHash_ref->{'FRAMEWORK_SEARCH_PATHS'} = "\$(PROJECT_DIR)/nativebinding/** \$(BUILT_PRODUCTS_DIR)";
    $defaultTargetSetngsHash_ref->{'DYLIB_INSTALL_NAME_BASE'} = "\@rpath";
    XCProjectEditor::addTargetToProject($TARGET_NAME, "Framework", $defaultTargetSetngsHash_ref);
    
    # add headers build pahse to the target
    my $ref = XCProjectEditor::makePBXHeadersBuildPhase();
    my $dict = XCProjectEditor::getObjectRefWithId($ref);
    # this will help for adding of header files to Header build phase
    $dict->{'name'} = "Headers";
    XCProjectEditor::addBuildPhaseToTarget($ref, $TARGET_NAME);


    my @customizedTargets = @targets;
#    push(@customizedTargets, "konylib");
    # add source files to target
    my @sources = ("CallbackSupport.m", "PointerSupport.m");
    foreach my $source (@sources){
        my $file_path = "nativebinding/$TARGET_NAME/$source";
        XCProjectEditor::addFileToGroupAndTargets($file_path, "SOURCE_ROOT", "$TARGET_NAME", [$TARGET_NAME]);
    }
    # add headers
    my @headers = ("CallbackSupport.h", "PointerSupport.h", "NFIUtility.h");
    foreach my $header (@headers){
        my $file_path = "nativebinding/$TARGET_NAME/$header";
        XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets($file_path, "SOURCE_ROOT", $TARGET_NAME, {ATTRIBUTES => ['Public']}, "Headers", [$TARGET_NAME]);
    }

    # add NFICore as Souce Target Mode
    $TARGET_NAME = "NFICore";
    print "[NFI-Source]: Adding Target $TARGET_NAME\n";
    $filename = './DefaultTargetSettings.json';
    open($fh, '<', $filename) or die "cannot open file $filename";
    {
        local $/;
        $content = <$fh>;
    }
    close($fh);
    $defaultTargetSetngsHash_ref = decode_json($content);
    # NFI Target releated mandate build settings
    $defaultTargetSetngsHash_ref->{'ARCHS'} = "\$(ARCHS_STANDARD)";
    $defaultTargetSetngsHash_ref->{'IPHONEOS_DEPLOYMENT_TARGET'} = "8.0";
    $defaultTargetSetngsHash_ref->{'INFOPLIST_FILE'} = "nativebinding/$TARGET_NAME/Info.plist";
    $defaultTargetSetngsHash_ref->{'CLANG_ENABLE_OBJC_ARC'} = "NO";
    $defaultTargetSetngsHash_ref->{'OTHER_LDFLAGS'} = "-weak_framework Foundation -weak_framework CoreFoundation -weak_framework CFNetwork -weak_framework Security";
    $defaultTargetSetngsHash_ref->{'PRODUCT_BUNDLE_IDENTIFIER'} = "com.kony.nfi.$TARGET_NAME";
    $defaultTargetSetngsHash_ref->{'FRAMEWORK_SEARCH_PATHS'} = "\$(PROJECT_DIR)/nativebinding/** \$(BUILT_PRODUCTS_DIR)";
    $defaultTargetSetngsHash_ref->{'DYLIB_INSTALL_NAME_BASE'} = "\@rpath";
    XCProjectEditor::addTargetToProject($TARGET_NAME, "Framework", $defaultTargetSetngsHash_ref);
    
    # add headers build pahse to the target
    $ref = XCProjectEditor::makePBXHeadersBuildPhase();
    $dict = XCProjectEditor::getObjectRefWithId($ref);
    # this will help for adding of header files to Header build phase
    $dict->{'name'} = "Headers";
    XCProjectEditor::addBuildPhaseToTarget($ref, $TARGET_NAME);


    @customizedTargets = @targets;
#    push(@customizedTargets, "konylib");
    # create NFICore target dependency to KRelease and konylib
    foreach my $targetName (@customizedTargets){
        XCProjectEditor::createTargetDependency(
            $TARGET_NAME,
            undef,
            $targetName
        );
    }
    # add NFICore as a target dependency
    XCProjectEditor::addTargetAsBuildphaseInTargets($TARGET_NAME, \%linkBuildSettings, undef, \@customizedTargets);
    # add the generated target to the Embeded build phase of all other exec Targets (KRelease)
    XCProjectEditor::addTargetAsBuildphaseInTargets($TARGET_NAME, \%embededBuildSettings, "Embed Frameworks", \@customizedTargets);
    
    # add NFIUtility and NFILoader to NFICore as Target dependency
    XCProjectEditor::createTargetDependency("NFIUtility", undef, $TARGET_NAME);
    XCProjectEditor::createTargetDependency($self->{'NFILoaderTarget'}, undef, $TARGET_NAME);
    # add NFIUtility and NFILoader to NFICore as Link dependency
    XCProjectEditor::addTargetAsBuildphaseInTargets("NFIUtility", \%linkBuildSettings, undef, [$TARGET_NAME]);
    XCProjectEditor::addTargetAsBuildphaseInTargets($self->{'NFILoaderTarget'}, \%linkBuildSettings, undef, [$TARGET_NAME]);

    # add source files to target
    @sources = ("BridgeSupport.m", "ClassExtension.m");
    foreach my $source (@sources){
        my $file_path = "nativebinding/$TARGET_NAME/$source";
        XCProjectEditor::addFileToGroupAndTargets($file_path, "SOURCE_ROOT", "$TARGET_NAME", [$TARGET_NAME]);
    }
    # add headers
    @headers = ("BridgeSupport.h", "ClassExtension.h", "NFICore.h");
    foreach my $header (@headers){
        my $file_path = "nativebinding/$TARGET_NAME/$header";
        XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets($file_path, "SOURCE_ROOT", $TARGET_NAME, {ATTRIBUTES => ['Public']}, "Headers", [$TARGET_NAME]);
    }

    # video widget check
    if($self->{'enableVideoWidget'}){
        system "(python3 tpperlhelper.py -nfiVersion $self->{'nfiVersion'} -path $self->{'konyappunzipdir'} --enableVideoWidget --debug)";
    }else{
        system "(python3 tpperlhelper.py -nfiVersion $self->{'nfiVersion'} -path $self->{'konyappunzipdir'} --debug)";
    }
    # parse json file
    my $json_data = $self->readAndParseJSON();
    
    # add thirdparty
    my @TP = @{ $json_data->{'TP'} };
    foreach my $thirdparty (@TP){
        print "Adding Thirdparty Frameworks ". basename($thirdparty) . "\n";
        my $fileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot($thirdparty, "SOURCE_ROOT");
        if(!defined $fileRef){
            $fileRef = XCProjectEditor::makePBXFileReference($thirdparty, "SOURCE_ROOT");
        }
        my @customizedTargets = @targets;
        push(@customizedTargets, $self->{'NFILoaderTarget'});
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
            $fileRef,
            $self->{'rscHandler'}->{_NativeBindingGroupPath}."/TP",
            \%linkBuildSettings,
            undef,
            \@customizedTargets
        );
        if(isDynamicFramework($self,$self->{'rscHandler'}->{_basePathForProjectAsset}.'/'. $thirdparty)){
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
                $fileRef,
                undef,
                \%embededBuildSettings,
                "Embed Frameworks",
                \@customizedTargets
            );
        }
    }
    
    my @SOURCEs = @{ $json_data->{'SOURCEs'} };
    foreach my $SOURCE (@SOURCEs){
        my $TARGET_NAME = $SOURCE->{"nfi_name"};
        
        # based on --nfidebug=sim or dev
        my $DEVICE_PATH = $SOURCE->{"simulator"};
        if($self->{"type"} eq "device"){
            $DEVICE_PATH = $SOURCE->{"device"};
        }
        
        print "[NFI-Source]: Adding Target $TARGET_NAME\n";
        my $filename = './DefaultTargetSettings.json';
        my $content;
        open(my $fh, '<', $filename) or die "cannot open file $filename";
        {
            local $/;
            $content = <$fh>;
        }
        close($fh);
        my $defaultTargetSetngsHash_ref = decode_json($content);
        # NFI Target releated mandate build settings
        $defaultTargetSetngsHash_ref->{'ARCHS'} = "\$(ARCHS_STANDARD)";
        $defaultTargetSetngsHash_ref->{'IPHONEOS_DEPLOYMENT_TARGET'} = "8.0";
        $defaultTargetSetngsHash_ref->{'INFOPLIST_FILE'} = "$TARGET_NAME/Info.plist";
        $defaultTargetSetngsHash_ref->{'CLANG_ENABLE_OBJC_ARC'} = "NO";
        $defaultTargetSetngsHash_ref->{'OTHER_LDFLAGS'} = "-weak_framework Foundation -weak_framework CoreFoundation -weak_framework CFNetwork -weak_framework Security";
        $defaultTargetSetngsHash_ref->{'PRODUCT_BUNDLE_IDENTIFIER'} = "com.kony.nfi.$TARGET_NAME";
        $defaultTargetSetngsHash_ref->{'FRAMEWORK_SEARCH_PATHS'} = "\$(PROJECT_DIR)/nativebinding/** \$(BUILT_PRODUCTS_DIR)";
        $defaultTargetSetngsHash_ref->{'DYLIB_INSTALL_NAME_BASE'} = "\@rpath";
        XCProjectEditor::addTargetToProject($TARGET_NAME, "Framework", $defaultTargetSetngsHash_ref);
        # add headers build pahse to the target
        my $ref = XCProjectEditor::makePBXHeadersBuildPhase();
        my $dict = XCProjectEditor::getObjectRefWithId($ref);
        # this will help for adding of header files to Header build phase
        $dict->{'name'} = "Headers";
        XCProjectEditor::addBuildPhaseToTarget($ref, $TARGET_NAME);
        # target dependency to NFILoader
        XCProjectEditor::createTargetDependency(
            $TARGET_NAME,
            undef,
            $self->{'NFILoaderTarget'}
        );
        # add the generated target to the Link build phase of NFILoader and all other exec Targets
        XCProjectEditor::addTargetAsBuildphaseInTargets(
            $TARGET_NAME,
            \%linkBuildSettings,
            undef,
            [$self->{'NFILoaderTarget'}]
        );
        XCProjectEditor::addTargetAsBuildphaseInTargets(
            $TARGET_NAME,
            \%linkBuildSettings,
            undef,
            \@targets
        );
        # add the generated target to the Embeded build phase of all other exec Targets (KRelease)
        XCProjectEditor::addTargetAsBuildphaseInTargets(
            $TARGET_NAME,
            \%embededBuildSettings,
            "Embed Frameworks",
            \@targets
        );
        # link NFIUtility to the generated Target as it has link dependency
        XCProjectEditor::addTargetAsBuildphaseInTargets("NFIUtility", \%linkBuildSettings, undef, [$TARGET_NAME]);
        # add source files to target
        my @sources = @{ $DEVICE_PATH->{'compiled_sources'} };
        foreach my $source (@sources){
            my $file_path = "$DEVICE_PATH->{'root'}/$source";
            XCProjectEditor::addFileToGroupAndTargets($file_path, "SOURCE_ROOT", $TARGET_NAME, [$TARGET_NAME]);
        }
        # add headers
        my @headers = @{ $DEVICE_PATH->{'headers'} };
        foreach my $header (@headers){
            my $file_path = "$DEVICE_PATH->{'root'}/$header";
            XCProjectEditor::addFile_WithBuildSettings_IntoBuildPhase_InTargets(
                $file_path,
                "SOURCE_ROOT",
                $TARGET_NAME,
                {ATTRIBUTES => ['Public']},
                "Headers",
                [$TARGET_NAME]
            );
        }
        # thirparty check and support
        if (exists $SOURCE->{'thirdparty'}) {
            # to track the header search path
            my $headerSearchPathString = "";
            # third party is there
            # add those as link dependency to the Target
            my @TP = @{ $json_data->{'TP'} };
            foreach my $thirdparty (@TP){
                print "  Linking Thirdparty Frameworks ". basename($thirdparty) . "\n";
                my $fileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot($thirdparty, "SOURCE_ROOT");
                if(not defined $fileRef){
                    $fileRef = my $fileRef = XCProjectEditor::makePBXFileReference($thirdparty, "SOURCE_ROOT");
                }
                XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
                    $fileRef,
                    $self->{'rscHandler'}->{_NativeBindingGroupPath}."/TP",
                    undef,
                    undef,
                    [$TARGET_NAME]
                );
                # keep track of the Headers for .framewor
                my $baseName = basename($thirdparty);
                my $indexPosition = rindex($baseName, '.');
                my $fileName = $baseName;
                if($indexPosition ne -1){
                    $fileName = substr($baseName,0,$indexPosition);
                }
                
                if ($thirdparty =~ /.xcframework/) {
                    my $directory = "../$thirdparty";
                    opendir(my $DIR, $directory) || die "can't opendir $directory: $!";
                    while (my $folderName = readdir($DIR)) {
                        if ($self->{"type"} eq "simulator" & $folderName =~ /simulator/) {
                            $headerSearchPathString .= " $thirdparty/$folderName/$fileName.framework/Headers";
                        } elsif ($self->{"type"} eq "device" & $folderName =~ /ios/ & $folderName !~ /simulator/) {
                            $headerSearchPathString .= " $thirdparty/$folderName/$fileName.framework/Headers";
                        }
                    }
                } elsif ($thirdparty =~ /.framework/) {
                    $headerSearchPathString .= " $thirdparty/Headers";
                }
            }
            # update build settings for header search path
            my %buildSettings = ();
            $buildSettings{'HEADER_SEARCH_PATHS'} = $headerSearchPathString;
            XCProjectEditor::updateBuildSettingsForTarget($TARGET_NAME, \%buildSettings, undef);
        }
    }
    # create NFILoader target dependency to KRelease
    foreach my $targetName (@targets){
        XCProjectEditor::createTargetDependency(
            $self->{'NFILoaderTarget'},
            undef,
            $targetName
        );
    }
    print "Adding $self->{'NFILoaderTarget'}\n";
    XCProjectEditor::addTargetAsBuildphaseInTargets($self->{'NFILoaderTarget'}, \%embededBuildSettings, 'Embed Frameworks', \@targets);
}

sub configure{
    my ($self) = @_;
    my $selfSufficientModulePath = "$self->{'konyappunzipdir'}/selfsufficientmodules";
    my @targets = @{$self->{'args_targets'}};
    my %linkBuildSettings = ('ATTRIBUTES' => ['Weak']);
    my %embededBuildSettings =  ("ATTRIBUTES" => ["CodeSignOnCopy"]);
    my @customizedTargets = @targets;
    push(@customizedTargets, $self->{'NFILoaderTarget'});
    # call python script to make the cnfi.json file in selfsufficientmodule folder
    if($self->{'enableVideoWidget'}){
        system "(python3 tpperlhelper.py -nfiVersion $self->{'nfiVersion'} -path $self->{'konyappunzipdir'} --enableVideoWidget -basePathForProjectAsset $self->{'rscHandler'}->{_basePathForProjectAsset})";
    }else{
        system "(python3 tpperlhelper.py -nfiVersion $self->{'nfiVersion'} -path $self->{'konyappunzipdir'} -basePathForProjectAsset $self->{'rscHandler'}->{_basePathForProjectAsset})";
    }
    # call python script to make the nfiallloader.m file
    # system "(python tploadergen.py -path $self->{'konyappunzipdir'})";
    # parse json file
    my $json_data = $self->readAndParseJSON();
    my @NFIs = @{ $json_data->{'NFIs'} };
    # add NFIs
    foreach my $NFI (@NFIs){
        print "Adding Generated Framework " . $NFI->{"NFI_NAME"} . "\n";
        # call submodule to add that path to project
        my $fileRef = XCProjectEditor::makePBXFileReference($self->{'rscHandler'}->{_basePathForGroupFromRoot}.$NFI->{"PATH"}, "SOURCE_ROOT");
        
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        $self->{'rscHandler'}->{_NativeBindingGroupPath}."/FWKS",
        undef,
        undef,
        \@customizedTargets
        );
       
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        undef,
        \%embededBuildSettings,
        "Embed Frameworks",
        \@customizedTargets
        );
    }
    
    if(scalar @NFIs){
        if($self->{'isLibraryBuild'}){
            system "cp -rf $self->{'rscHandler'}->{_NativeBinding}/FWKS/ ModuleDependencies/FFIDynamicFrameworks/"
        }
    }
    
    # add thirdparty
    my @TP = @{ $json_data->{'TP'} };
    foreach my $thirdparty (@TP){
        print "Adding Thirdparty Frameworks ". basename($thirdparty) . "\n";
        my $fileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot($self->{'rscHandler'}->{_basePathForGroupFromRoot}.$thirdparty, "SOURCE_ROOT");
        if(!defined $fileRef){
            $fileRef = XCProjectEditor::makePBXFileReference($self->{'rscHandler'}->{_basePathForGroupFromRoot}.$thirdparty, "SOURCE_ROOT");
        }
        my @customizedTargets = @targets;
        push(@customizedTargets, $self->{'NFILoaderTarget'});
        XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
            $fileRef,
            $self->{'rscHandler'}->{_NativeBindingGroupPath}."/TP",
            undef,
            undef,
            \@customizedTargets
        );
        if(isDynamicFramework($self, $self->{'rscHandler'}->{_basePathForProjectAsset}.'/'. $thirdparty)){
            XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
                $fileRef,
                undef,
                \%embededBuildSettings,
                "Embed Frameworks",
                \@customizedTargets
            );
        }
    }
    # add NFICore
    my $fileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('nativebinding/NFICore/NFICore.xcframework', "SOURCE_ROOT");
    if(!defined $fileRef){
        $fileRef = XCProjectEditor::makePBXFileReference('nativebinding/NFICore/NFICore.xcframework', "SOURCE_ROOT");
    }
    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        undef,
        undef,
        undef,
        \@targets
    );
    #add NFICore to the link dependecy in AppExtension
    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        undef,
        undef,
        undef,
        ["konyExtensionsRuntime"]
    );
    
    if($self->{'isLibraryBuild'}){
        system "cp -rf ../nativebinding/NFICore/NFICore.xcframework ModuleDependencies/FFIDynamicFrameworks/";
    }
    
    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        undef,
        \%embededBuildSettings,
        "Embed Frameworks",
        \@targets
    );
    # add NFIUtility
    $fileRef = XCProjectEditor::getPBXFileRefWithPathFromRoot('nativebinding/NFIUtility/NFIUtility.xcframework', "SOURCE_ROOT");
    if(!defined $fileRef){
        $fileRef = XCProjectEditor::makePBXFileReference('nativebinding/NFIUtility/NFIUtility.xcframework', "SOURCE_ROOT");
    }
    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        undef,
        undef,
        undef,
        \@targets
    );
    
    if($self->{'isLibraryBuild'}){
        system "cp -rf ../nativebinding/NFIUtility/NFIUtility.xcframework ModuleDependencies/FFIDynamicFrameworks/";
    }
    
    XCProjectEditor::addFileRef_WithBuildSettings_IntoBuilPhase_InTargets(
        $fileRef,
        undef,
        \%embededBuildSettings,
        "Embed Frameworks",
        \@targets
    );
    # create NFILoader target dependency to KRelease
    foreach my $targetName (@targets){
        XCProjectEditor::createTargetDependency(
            $self->{'NFILoaderTarget'},
            undef,
            $targetName
        );
    }
    
    # Adding NFILoader Target to "Link Binary With Libraries" Build Phase of App Targets.
    XCProjectEditor::addTargetAsBuildphaseInTargets($self->{'NFILoaderTarget'}, undef, undef, \@targets);
    
    # Embeding NFILoader to Targets.. for packinging to the app
    XCProjectEditor::addTargetAsBuildphaseInTargets($self->{'NFILoaderTarget'}, \%embededBuildSettings, 'Embed Frameworks', \@targets);
}


1;
