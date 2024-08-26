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
	context[@"kCFRunLoopRunFinished"] = @1L;
	context[@"kCFRunLoopRunStopped"] = @2L;
	context[@"kCFRunLoopRunTimedOut"] = @3L;
	context[@"kCFRunLoopRunHandledSource"] = @4L;

	context[@"kCFRunLoopEntry"] = @1UL;
	context[@"kCFRunLoopBeforeTimers"] = @2UL;
	context[@"kCFRunLoopBeforeSources"] = @4UL;
	context[@"kCFRunLoopBeforeWaiting"] = @32UL;
	context[@"kCFRunLoopAfterWaiting"] = @64UL;
	context[@"kCFRunLoopExit"] = @128UL;
	context[@"kCFRunLoopAllActivities"] = @268435455UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFRunLoopCommonModes;
	if (p != NULL) context[@"kCFRunLoopCommonModes"] = [JSValue valueWithObject: (__bridge id) kCFRunLoopCommonModes inContext: context];
	p = (void*) &kCFRunLoopDefaultMode;
	if (p != NULL) context[@"kCFRunLoopDefaultMode"] = [JSValue valueWithObject: (__bridge id) kCFRunLoopDefaultMode inContext: context];
}
void load_CoreFoundation_CFRunLoop_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
