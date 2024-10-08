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
	context[@"CFNotificationCenterGetTypeID"] = ^CFTypeID() {
		return CFNotificationCenterGetTypeID();
	};
	context[@"CFNotificationCenterGetLocalCenter"] = ^id() {
		return CFNotificationCenterGetLocalCenter();
	};
	context[@"CFNotificationCenterGetDarwinNotifyCenter"] = ^id() {
		return CFNotificationCenterGetDarwinNotifyCenter();
	};
}
static void registerEnumConstants(JSContext* context)
{

	context[@"CFNotificationSuspensionBehaviorDrop"] = @1L;
	context[@"CFNotificationSuspensionBehaviorCoalesce"] = @2L;
	context[@"CFNotificationSuspensionBehaviorHold"] = @3L;
	context[@"CFNotificationSuspensionBehaviorDeliverImmediately"] = @4L;

	context[@"kCFNotificationDeliverImmediately"] = @1UL;
	context[@"kCFNotificationPostToAllSessions"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFNotificationCenter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
