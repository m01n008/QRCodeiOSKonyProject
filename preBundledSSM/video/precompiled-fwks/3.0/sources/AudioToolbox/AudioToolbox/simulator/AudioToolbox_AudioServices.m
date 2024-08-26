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
	context[@"AudioServicesPlaySystemSound"] = ^void(SystemSoundID arg0) {
		AudioServicesPlaySystemSound(arg0);
	};
	context[@"AudioServicesRemoveSystemSoundCompletion"] = ^void(SystemSoundID arg0) {
		AudioServicesRemoveSystemSoundCompletion(arg0);
	};
	context[@"AudioServicesPlayAlertSound"] = ^void(SystemSoundID arg0) {
		AudioServicesPlayAlertSound(arg0);
	};
	context[@"AudioServicesDisposeSystemSoundID"] = ^OSStatus(SystemSoundID arg0) {
		return AudioServicesDisposeSystemSoundID(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioServicesNoError"] = @0;
	context[@"kAudioServicesUnsupportedPropertyError"] = @1886681407;
	context[@"kAudioServicesBadPropertySizeError"] = @561211770;
	context[@"kAudioServicesBadSpecifierSizeError"] = @561213539;
	context[@"kAudioServicesSystemSoundUnspecifiedError"] = @-1500;
	context[@"kAudioServicesSystemSoundClientTimedOutError"] = @-1501;
	context[@"kAudioServicesSystemSoundExceededMaximumDurationError"] = @-1502;

	context[@"kSystemSoundID_Vibrate"] = @4095U;

	context[@"kAudioServicesPropertyIsUISound"] = @1769174377U;
	context[@"kAudioServicesPropertyCompletePlaybackIfAppDies"] = @1768318057U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioServices_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
