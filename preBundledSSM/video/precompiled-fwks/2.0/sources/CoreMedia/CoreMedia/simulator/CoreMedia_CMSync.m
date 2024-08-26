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
	context[@"CMTimebaseNotificationBarrier"] = ^OSStatus(id arg0) {
		return CMTimebaseNotificationBarrier(arg0);
	};
	context[@"CMSyncConvertTime"] = ^CMTime(CMTime arg0, id arg1, id arg2) {
		return CMSyncConvertTime(arg0, arg1, arg2);
	};
	context[@"CMClockGetTypeID"] = ^CFTypeID() {
		return CMClockGetTypeID();
	};
	context[@"CMTimebaseGetUltimateMasterClock"] = ^id(id arg0) {
		return CMTimebaseGetUltimateMasterClock(arg0);
	};
	context[@"CMClockGetTime"] = ^CMTime(id arg0) {
		return CMClockGetTime(arg0);
	};
	context[@"CMTimebaseGetEffectiveRate"] = ^Float64(id arg0) {
		return CMTimebaseGetEffectiveRate(arg0);
	};
	context[@"CMTimebaseSetRateAndAnchorTime"] = ^OSStatus(id arg0, Float64 arg1, CMTime arg2, CMTime arg3) {
		return CMTimebaseSetRateAndAnchorTime(arg0, arg1, arg2, arg3);
	};
	context[@"CMTimebaseGetRate"] = ^Float64(id arg0) {
		return CMTimebaseGetRate(arg0);
	};
	context[@"CMTimebaseGetMasterClock"] = ^id(id arg0) {
		return CMTimebaseGetMasterClock(arg0);
	};
	context[@"CMTimebaseGetTime"] = ^CMTime(id arg0) {
		return CMTimebaseGetTime(arg0);
	};
	context[@"CMClockInvalidate"] = ^void(id arg0) {
		CMClockInvalidate(arg0);
	};
	context[@"CMTimebaseSetAnchorTime"] = ^OSStatus(id arg0, CMTime arg1, CMTime arg2) {
		return CMTimebaseSetAnchorTime(arg0, arg1, arg2);
	};
	context[@"CMTimebaseRemoveTimer"] = ^OSStatus(id arg0, id arg1) {
		return CMTimebaseRemoveTimer(arg0, arg1);
	};
	context[@"CMTimebaseCopyMasterClock"] = ^id(id arg0) {
		return CMTimebaseCopyMasterClock(arg0);
	};
	context[@"CMClockMakeHostTimeFromSystemUnits"] = ^CMTime(uint64_t arg0) {
		return CMClockMakeHostTimeFromSystemUnits(arg0);
	};
	context[@"CMTimebaseCopyUltimateMasterClock"] = ^id(id arg0) {
		return CMTimebaseCopyUltimateMasterClock(arg0);
	};
	context[@"CMSyncGetRelativeRate"] = ^Float64(id arg0, id arg1) {
		return CMSyncGetRelativeRate(arg0, arg1);
	};
	context[@"CMClockMightDrift"] = ^Boolean(id arg0, id arg1) {
		return CMClockMightDrift(arg0, arg1);
	};
	context[@"CMSyncGetTime"] = ^CMTime(id arg0) {
		return CMSyncGetTime(arg0);
	};
	context[@"CMTimebaseSetTimerToFireImmediately"] = ^OSStatus(id arg0, id arg1) {
		return CMTimebaseSetTimerToFireImmediately(arg0, arg1);
	};
	context[@"CMClockGetHostTimeClock"] = ^id() {
		return CMClockGetHostTimeClock();
	};
	context[@"CMTimebaseSetTime"] = ^OSStatus(id arg0, CMTime arg1) {
		return CMTimebaseSetTime(arg0, arg1);
	};
	context[@"CMTimebaseSetRate"] = ^OSStatus(id arg0, Float64 arg1) {
		return CMTimebaseSetRate(arg0, arg1);
	};
	context[@"CMTimebaseGetMasterTimebase"] = ^id(id arg0) {
		return CMTimebaseGetMasterTimebase(arg0);
	};
	context[@"CMTimebaseCopyMasterTimebase"] = ^id(id arg0) {
		return CMTimebaseCopyMasterTimebase(arg0);
	};
	context[@"CMTimebaseCopyMaster"] = ^id(id arg0) {
		return CMTimebaseCopyMaster(arg0);
	};
	context[@"CMTimebaseGetTimeWithTimeScale"] = ^CMTime(id arg0, CMTimeScale arg1, CMTimeRoundingMethod arg2) {
		return CMTimebaseGetTimeWithTimeScale(arg0, arg1, arg2);
	};
	context[@"CMClockConvertHostTimeToSystemUnits"] = ^uint64_t(CMTime arg0) {
		return CMClockConvertHostTimeToSystemUnits(arg0);
	};
	context[@"CMTimebaseGetTypeID"] = ^CFTypeID() {
		return CMTimebaseGetTypeID();
	};
	context[@"CMTimebaseGetMaster"] = ^id(id arg0) {
		return CMTimebaseGetMaster(arg0);
	};
	context[@"CMTimebaseSetTimerNextFireTime"] = ^OSStatus(id arg0, id arg1, CMTime arg2, uint32_t arg3) {
		return CMTimebaseSetTimerNextFireTime(arg0, arg1, arg2, arg3);
	};
	context[@"CMSyncMightDrift"] = ^Boolean(id arg0, id arg1) {
		return CMSyncMightDrift(arg0, arg1);
	};
	context[@"CMTimebaseAddTimer"] = ^OSStatus(id arg0, id arg1, id arg2) {
		return CMTimebaseAddTimer(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMClockError_MissingRequiredParameter"] = @-12745;
	context[@"kCMClockError_InvalidParameter"] = @-12746;
	context[@"kCMClockError_AllocationFailed"] = @-12747;
	context[@"kCMClockError_UnsupportedOperation"] = @-12756;

	context[@"kCMTimebaseError_MissingRequiredParameter"] = @-12748;
	context[@"kCMTimebaseError_InvalidParameter"] = @-12749;
	context[@"kCMTimebaseError_AllocationFailed"] = @-12750;
	context[@"kCMTimebaseError_TimerIntervalTooShort"] = @-12751;
	context[@"kCMTimebaseError_ReadOnly"] = @-12757;

	context[@"kCMSyncError_MissingRequiredParameter"] = @-12752;
	context[@"kCMSyncError_InvalidParameter"] = @-12753;
	context[@"kCMSyncError_AllocationFailed"] = @-12754;
	context[@"kCMSyncError_RateMustBeNonZero"] = @-12755;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMTimebaseNotification_TimeJumped;
	if (p != NULL) context[@"kCMTimebaseNotification_TimeJumped"] = [JSValue valueWithObject: (__bridge id) kCMTimebaseNotification_TimeJumped inContext: context];
	p = (void*) &kCMTimebaseNotification_EffectiveRateChanged;
	if (p != NULL) context[@"kCMTimebaseNotification_EffectiveRateChanged"] = [JSValue valueWithObject: (__bridge id) kCMTimebaseNotification_EffectiveRateChanged inContext: context];
	p = (void*) &kCMTimebaseNotificationKey_EventTime;
	if (p != NULL) context[@"kCMTimebaseNotificationKey_EventTime"] = [JSValue valueWithObject: (__bridge id) kCMTimebaseNotificationKey_EventTime inContext: context];
}
void load_CoreMedia_CMSync_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
