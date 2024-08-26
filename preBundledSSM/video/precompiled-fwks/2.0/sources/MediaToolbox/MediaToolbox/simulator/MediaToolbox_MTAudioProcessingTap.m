#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"MTAudioProcessingTapGetTypeID"] = ^CFTypeID() {
		return MTAudioProcessingTapGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kMTAudioProcessingTapCreationFlag_PreEffects"] = @1U;
	context[@"kMTAudioProcessingTapCreationFlag_PostEffects"] = @2U;

	context[@"kMTAudioProcessingTapFlag_StartOfStream"] = @256U;
	context[@"kMTAudioProcessingTapFlag_EndOfStream"] = @512U;

	context[@"kMTAudioProcessingTapCallbacksVersion_0"] = @0;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_MediaToolbox_MTAudioProcessingTap_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
