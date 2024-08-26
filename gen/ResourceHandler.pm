#==================================================================================================================================
#
#          FILE:  ResourceHandler.pm
#
#         USAGE:
#
#   DESCRIPTION:  This module consists of absolute path and group path for each resource configured.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Aravind.Macharla KH2008
#       COMPANY:  Kony Labs
#       VERSION:  1.0
#       CREATED:  12/01/2021 7:36:08 PM IST
#      REVISION:  ---
#==================================================================================================================================
# Resource Handler returns paths for the Resources w.r.t Context
package ResourceHandler;

sub new {
    my $class = shift;
    
    my $self = {
        _context => shift, # Ex : MainApp , AppClip...
        _basePathForProjectAsset  => shift, # Absolute Path : Path relative to gen folder
        _basePathForGroupFromRoot => shift # Group Path : Path relative to VM.xcodeproj
    };
    
    $self->{_NLResources} = $self->{_basePathForProjectAsset}."/"."NLResources";
    $self->{_LaunchStoryBoard} = $self->{_basePathForProjectAsset}."/"."KonyLaunchStoryBoard";
    $self->{_NativeBinding} = $self->{_basePathForProjectAsset}."/"."nativebinding";
    $self->{_FFI} = $self->{_basePathForProjectAsset}."/"."FFI";
    $self->{_Themes} = $self->{_basePathForProjectAsset}."/"."Themes";
    $self->{_ThemesIpad} = $self->{_basePathForProjectAsset}."/"."ThemesIpad";
    $self->{_JSScripts} = $self->{_basePathForProjectAsset}."/"."JSScripts";
    $self->{_JSScriptsIpad} = $self->{_basePathForProjectAsset}."/"."JSScriptsIpad";
    $self->{_UserWidgetJSScripts} = $self->{_basePathForProjectAsset}."/"."UserWidgetJSScripts";
    $self->{_UserWidgetJSScriptsIpad} = $self->{_basePathForProjectAsset}."/"."UserWidgetJSScriptsIpad";
    $self->{_WorkerThreadScripts} = $self->{_basePathForProjectAsset}."/"."WorkerThreadScripts";
    $self->{_Web} = $self->{_basePathForProjectAsset}."/"."web";
    $self->{_KonySDK} = $self->{_basePathForProjectAsset}."/"."KonySDK";
    $self->{_Modules} = $self->{_basePathForProjectAsset}."/"."Modules";
    $self->{_LocalizedResources} = $self->{_basePathForProjectAsset}."/"."LocalizedResources";
    
    $self->{_NLResourcesGroupPath} = $self->{_basePathForGroupFromRoot}."NLResources";
    $self->{_LaunchStoryBoardGroupPath} = $self->{_basePathForGroupFromRoot}."KonyLaunchStoryBoard";
    $self->{_NativeBindingGroupPath} = $self->{_basePathForGroupFromRoot}."nativebinding";
    $self->{_FFIGroupPath} = $self->{_basePathForGroupFromRoot}."FFI";
    $self->{_ThemesGroupPath} = $self->{_basePathForGroupFromRoot}."Themes";
    $self->{_ThemesIpadGroupPath} = $self->{_basePathForGroupFromRoot}."ThemesIpad";
    $self->{_JSScriptsGroupPath} = $self->{_basePathForGroupFromRoot}."JSScripts";
    $self->{_JSScriptsIpadGroupPath} = $self->{_basePathForGroupFromRoot}."JSScriptsIpad";
    $self->{_UserWidgetJSScriptsGroupPath} = $self->{_basePathForGroupFromRoot}."UserWidgetJSScripts";
    $self->{_UserWidgetJSScriptsIpadGroupPath} = $self->{_basePathForGroupFromRoot}."UserWidgetJSScriptsIpad";
    $self->{_WorkerThreadScriptsGroupPath} = $self->{_basePathForGroupFromRoot}."WorkerThreadScripts";
    $self->{_WebGroupPath} = $self->{_basePathForGroupFromRoot}."web";
    $self->{_KonySDKGroupPath} = $self->{_basePathForGroupFromRoot}."KonySDK";
    $self->{_ModulesGroupPath} = $self->{_basePathForGroupFromRoot}."Modules";
    $self->{_LocalizedResourcesGroupPath} = $self->{_basePathForGroupFromRoot}."LocalizedResources";
    
    bless $self, $class;
    
    return $self;
}


1;
