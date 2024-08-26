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
	context[@"CMSimpleQueueGetCount"] = ^int32_t(id arg0) {
		return CMSimpleQueueGetCount(arg0);
	};
	context[@"CMSimpleQueueGetCapacity"] = ^int32_t(id arg0) {
		return CMSimpleQueueGetCapacity(arg0);
	};
	context[@"CMSimpleQueueGetTypeID"] = ^CFTypeID() {
		return CMSimpleQueueGetTypeID();
	};
	context[@"CMSimpleQueueReset"] = ^OSStatus(id arg0) {
		return CMSimpleQueueReset(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMSimpleQueueError_AllocationFailed"] = @-12770;
	context[@"kCMSimpleQueueError_RequiredParameterMissing"] = @-12771;
	context[@"kCMSimpleQueueError_ParameterOutOfRange"] = @-12772;
	context[@"kCMSimpleQueueError_QueueIsFull"] = @-12773;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMedia_CMSimpleQueue_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
