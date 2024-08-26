#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioServicesNoError"] = @0L;
	context[@"kAudioServicesUnsupportedPropertyError"] = @1886681407L;
	context[@"kAudioServicesBadPropertySizeError"] = @561211770L;
	context[@"kAudioServicesBadSpecifierSizeError"] = @561213539L;
	context[@"kAudioServicesSystemSoundUnspecifiedError"] = @-1500L;
	context[@"kAudioServicesSystemSoundClientTimedOutError"] = @-1501L;

	context[@"kSystemSoundID_Vibrate"] = @4095UL;

	context[@"kAudioServicesPropertyIsUISound"] = @1769174377UL;
	context[@"kAudioServicesPropertyCompletePlaybackIfAppDies"] = @1768318057UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioServices_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
