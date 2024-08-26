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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLCommandBufferStatusNotEnqueued"] = @0U;
	context[@"MTLCommandBufferStatusEnqueued"] = @1U;
	context[@"MTLCommandBufferStatusCommitted"] = @2U;
	context[@"MTLCommandBufferStatusScheduled"] = @3U;
	context[@"MTLCommandBufferStatusCompleted"] = @4U;
	context[@"MTLCommandBufferStatusError"] = @5U;

	context[@"MTLCommandBufferErrorNone"] = @0U;
	context[@"MTLCommandBufferErrorInternal"] = @1U;
	context[@"MTLCommandBufferErrorTimeout"] = @2U;
	context[@"MTLCommandBufferErrorPageFault"] = @3U;
	context[@"MTLCommandBufferErrorBlacklisted"] = @4U;
	context[@"MTLCommandBufferErrorNotPermitted"] = @7U;
	context[@"MTLCommandBufferErrorOutOfMemory"] = @8U;
	context[@"MTLCommandBufferErrorInvalidResource"] = @9U;
	context[@"MTLCommandBufferErrorMemoryless"] = @10U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MTLCommandBufferErrorDomain;
	if (p != NULL) context[@"MTLCommandBufferErrorDomain"] = MTLCommandBufferErrorDomain;
}
void Metal_MTLCommandBufferProtocols()
{
	(void)@protocol(MTLCommandBuffer);
}
void load_Metal_MTLCommandBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
