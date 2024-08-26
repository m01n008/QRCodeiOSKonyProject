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
	class_addProtocol([UIEvent class], @protocol(UIEventInstanceExports));
	class_addProtocol([UIEvent class], @protocol(UIEventClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"UIEventButtonMaskForButtonNumber"] = ^UIEventButtonMask(NSInteger arg0) {
		return UIEventButtonMaskForButtonNumber(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIEventTypeTouches"] = @0L;
	context[@"UIEventTypeMotion"] = @1L;
	context[@"UIEventTypeRemoteControl"] = @2L;
	context[@"UIEventTypePresses"] = @3L;
	context[@"UIEventTypeScroll"] = @10L;
	context[@"UIEventTypeHover"] = @11L;
	context[@"UIEventTypeTransform"] = @14L;

	context[@"UIEventSubtypeNone"] = @0L;
	context[@"UIEventSubtypeMotionShake"] = @1L;
	context[@"UIEventSubtypeRemoteControlPlay"] = @100L;
	context[@"UIEventSubtypeRemoteControlPause"] = @101L;
	context[@"UIEventSubtypeRemoteControlStop"] = @102L;
	context[@"UIEventSubtypeRemoteControlTogglePlayPause"] = @103L;
	context[@"UIEventSubtypeRemoteControlNextTrack"] = @104L;
	context[@"UIEventSubtypeRemoteControlPreviousTrack"] = @105L;
	context[@"UIEventSubtypeRemoteControlBeginSeekingBackward"] = @106L;
	context[@"UIEventSubtypeRemoteControlEndSeekingBackward"] = @107L;
	context[@"UIEventSubtypeRemoteControlBeginSeekingForward"] = @108L;
	context[@"UIEventSubtypeRemoteControlEndSeekingForward"] = @109L;

	context[@"UIEventButtonMaskPrimary"] = @1L;
	context[@"UIEventButtonMaskSecondary"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIEvent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
