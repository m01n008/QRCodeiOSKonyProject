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
	context[@"kCMClockError_MissingRequiredParameter"] = @-12745L;
	context[@"kCMClockError_InvalidParameter"] = @-12746L;
	context[@"kCMClockError_AllocationFailed"] = @-12747L;
	context[@"kCMClockError_UnsupportedOperation"] = @-12756L;

	context[@"kCMTimebaseError_MissingRequiredParameter"] = @-12748L;
	context[@"kCMTimebaseError_InvalidParameter"] = @-12749L;
	context[@"kCMTimebaseError_AllocationFailed"] = @-12750L;
	context[@"kCMTimebaseError_TimerIntervalTooShort"] = @-12751L;
	context[@"kCMTimebaseError_ReadOnly"] = @-12757L;

	context[@"kCMSyncError_MissingRequiredParameter"] = @-12752L;
	context[@"kCMSyncError_InvalidParameter"] = @-12753L;
	context[@"kCMSyncError_AllocationFailed"] = @-12754L;
	context[@"kCMSyncError_RateMustBeNonZero"] = @-12755L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMTimebaseNotification_EffectiveRateChanged;
	if (p != NULL) context[@"kCMTimebaseNotification_EffectiveRateChanged"] = [JSValue valueWithObject: (__bridge id) kCMTimebaseNotification_EffectiveRateChanged inContext: context];
	p = (void*) &kCMTimebaseNotificationKey_EventTime;
	if (p != NULL) context[@"kCMTimebaseNotificationKey_EventTime"] = [JSValue valueWithObject: (__bridge id) kCMTimebaseNotificationKey_EventTime inContext: context];
	p = (void*) &kCMTimebaseNotification_TimeJumped;
	if (p != NULL) context[@"kCMTimebaseNotification_TimeJumped"] = [JSValue valueWithObject: (__bridge id) kCMTimebaseNotification_TimeJumped inContext: context];
}
void load_CoreMedia_CMSync_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
