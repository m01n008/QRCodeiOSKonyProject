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
	context[@"CMBufferQueueMarkEndOfData"] = ^OSStatus(id arg0) {
		return CMBufferQueueMarkEndOfData(arg0);
	};
	context[@"CMBufferQueueGetHead"] = ^id(id arg0) {
		return CMBufferQueueGetHead(arg0);
	};
	context[@"CMBufferQueueGetMinDecodeTimeStamp"] = ^CMTime(id arg0) {
		return CMBufferQueueGetMinDecodeTimeStamp(arg0);
	};
	context[@"CMBufferQueueContainsEndOfData"] = ^Boolean(id arg0) {
		return CMBufferQueueContainsEndOfData(arg0);
	};
	context[@"CMBufferQueueDequeueAndRetain"] = ^id(id arg0) {
		return CMBufferQueueDequeueAndRetain(arg0);
	};
	context[@"CMBufferQueueTestTrigger"] = ^Boolean(id arg0, id arg1) {
		return CMBufferQueueTestTrigger(arg0, arg1);
	};
	context[@"CMBufferQueueGetTotalSize"] = ^size_t(id arg0) {
		return CMBufferQueueGetTotalSize(arg0);
	};
	context[@"CMBufferQueueIsAtEndOfData"] = ^Boolean(id arg0) {
		return CMBufferQueueIsAtEndOfData(arg0);
	};
	context[@"CMBufferQueueGetEndPresentationTimeStamp"] = ^CMTime(id arg0) {
		return CMBufferQueueGetEndPresentationTimeStamp(arg0);
	};
	context[@"CMBufferQueueGetDuration"] = ^CMTime(id arg0) {
		return CMBufferQueueGetDuration(arg0);
	};
	context[@"CMBufferQueueRemoveTrigger"] = ^OSStatus(id arg0, id arg1) {
		return CMBufferQueueRemoveTrigger(arg0, arg1);
	};
	context[@"CMBufferQueueEnqueue"] = ^OSStatus(id arg0, id arg1) {
		return CMBufferQueueEnqueue(arg0, arg1);
	};
	context[@"CMBufferQueueGetMaxPresentationTimeStamp"] = ^CMTime(id arg0) {
		return CMBufferQueueGetMaxPresentationTimeStamp(arg0);
	};
	context[@"CMBufferQueueGetBufferCount"] = ^CMItemCount(id arg0) {
		return CMBufferQueueGetBufferCount(arg0);
	};
	context[@"CMBufferQueueGetFirstDecodeTimeStamp"] = ^CMTime(id arg0) {
		return CMBufferQueueGetFirstDecodeTimeStamp(arg0);
	};
	context[@"CMBufferQueueIsEmpty"] = ^Boolean(id arg0) {
		return CMBufferQueueIsEmpty(arg0);
	};
	context[@"CMBufferQueueGetMinPresentationTimeStamp"] = ^CMTime(id arg0) {
		return CMBufferQueueGetMinPresentationTimeStamp(arg0);
	};
	context[@"CMBufferQueueGetTypeID"] = ^CFTypeID() {
		return CMBufferQueueGetTypeID();
	};
	context[@"CMBufferQueueGetFirstPresentationTimeStamp"] = ^CMTime(id arg0) {
		return CMBufferQueueGetFirstPresentationTimeStamp(arg0);
	};
	context[@"CMBufferQueueDequeueIfDataReadyAndRetain"] = ^id(id arg0) {
		return CMBufferQueueDequeueIfDataReadyAndRetain(arg0);
	};
	context[@"CMBufferQueueReset"] = ^OSStatus(id arg0) {
		return CMBufferQueueReset(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMBufferQueueError_AllocationFailed"] = @-12760;
	context[@"kCMBufferQueueError_RequiredParameterMissing"] = @-12761;
	context[@"kCMBufferQueueError_InvalidCMBufferCallbacksStruct"] = @-12762;
	context[@"kCMBufferQueueError_EnqueueAfterEndOfData"] = @-12763;
	context[@"kCMBufferQueueError_QueueIsFull"] = @-12764;
	context[@"kCMBufferQueueError_BadTriggerDuration"] = @-12765;
	context[@"kCMBufferQueueError_CannotModifyQueueFromTriggerCallback"] = @-12766;
	context[@"kCMBufferQueueError_InvalidTriggerCondition"] = @-12767;
	context[@"kCMBufferQueueError_InvalidTriggerToken"] = @-12768;
	context[@"kCMBufferQueueError_InvalidBuffer"] = @-12769;

	context[@"kCMBufferQueueTrigger_WhenDurationBecomesLessThan"] = @1;
	context[@"kCMBufferQueueTrigger_WhenDurationBecomesLessThanOrEqualTo"] = @2;
	context[@"kCMBufferQueueTrigger_WhenDurationBecomesGreaterThan"] = @3;
	context[@"kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualTo"] = @4;
	context[@"kCMBufferQueueTrigger_WhenMinPresentationTimeStampChanges"] = @5;
	context[@"kCMBufferQueueTrigger_WhenMaxPresentationTimeStampChanges"] = @6;
	context[@"kCMBufferQueueTrigger_WhenDataBecomesReady"] = @7;
	context[@"kCMBufferQueueTrigger_WhenEndOfDataReached"] = @8;
	context[@"kCMBufferQueueTrigger_WhenReset"] = @9;
	context[@"kCMBufferQueueTrigger_WhenBufferCountBecomesLessThan"] = @10;
	context[@"kCMBufferQueueTrigger_WhenBufferCountBecomesGreaterThan"] = @11;
	context[@"kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualToAndBufferCountBecomesGreaterThan"] = @12;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMedia_CMBufferQueue_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
