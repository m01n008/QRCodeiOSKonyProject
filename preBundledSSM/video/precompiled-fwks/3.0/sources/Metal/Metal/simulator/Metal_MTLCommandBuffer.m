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
	class_addProtocol([MTLCommandBufferDescriptor class], @protocol(MTLCommandBufferDescriptorInstanceExports));
	class_addProtocol([MTLCommandBufferDescriptor class], @protocol(MTLCommandBufferDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLCommandBufferStatusNotEnqueued"] = @0UL;
	context[@"MTLCommandBufferStatusEnqueued"] = @1UL;
	context[@"MTLCommandBufferStatusCommitted"] = @2UL;
	context[@"MTLCommandBufferStatusScheduled"] = @3UL;
	context[@"MTLCommandBufferStatusCompleted"] = @4UL;
	context[@"MTLCommandBufferStatusError"] = @5UL;

	context[@"MTLCommandBufferErrorNone"] = @0UL;
	context[@"MTLCommandBufferErrorInternal"] = @1UL;
	context[@"MTLCommandBufferErrorTimeout"] = @2UL;
	context[@"MTLCommandBufferErrorPageFault"] = @3UL;
	context[@"MTLCommandBufferErrorBlacklisted"] = @4UL;
	context[@"MTLCommandBufferErrorNotPermitted"] = @7UL;
	context[@"MTLCommandBufferErrorOutOfMemory"] = @8UL;
	context[@"MTLCommandBufferErrorInvalidResource"] = @9UL;
	context[@"MTLCommandBufferErrorMemoryless"] = @10UL;

	context[@"MTLCommandBufferErrorOptionNone"] = @0UL;
	context[@"MTLCommandBufferErrorOptionEncoderExecutionStatus"] = @1UL;

	context[@"MTLCommandEncoderErrorStateUnknown"] = @0L;
	context[@"MTLCommandEncoderErrorStateCompleted"] = @1L;
	context[@"MTLCommandEncoderErrorStateAffected"] = @2L;
	context[@"MTLCommandEncoderErrorStatePending"] = @3L;
	context[@"MTLCommandEncoderErrorStateFaulted"] = @4L;

	context[@"MTLDispatchTypeSerial"] = @0UL;
	context[@"MTLDispatchTypeConcurrent"] = @1UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MTLCommandBufferEncoderInfoErrorKey;
	if (p != NULL) context[@"MTLCommandBufferEncoderInfoErrorKey"] = MTLCommandBufferEncoderInfoErrorKey;
}
void Metal_MTLCommandBufferProtocols()
{
	(void)@protocol(MTLCommandBuffer);
	(void)@protocol(MTLCommandBufferEncoderInfo);
}
void load_Metal_MTLCommandBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
