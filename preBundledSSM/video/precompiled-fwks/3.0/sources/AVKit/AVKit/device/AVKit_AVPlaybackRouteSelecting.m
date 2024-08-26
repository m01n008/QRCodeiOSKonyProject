#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioSession (AVAudioSessionAVPlaybackRouteSelectingCategoryExports)
-(void) jsprepareRouteSelectionForPlaybackWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(BOOL, AVAudioSessionRouteSelection) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(BOOL arg0, AVAudioSessionRouteSelection arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self prepareRouteSelectionForPlaybackWithCompletionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVPlaybackRouteSelectingCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVPlaybackRouteSelectingCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioSessionRouteSelectionNone"] = @0;
	context[@"AVAudioSessionRouteSelectionLocal"] = @1;
	context[@"AVAudioSessionRouteSelectionExternal"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVKit_AVPlaybackRouteSelecting_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
