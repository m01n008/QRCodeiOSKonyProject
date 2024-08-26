#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Metal_MTLCounters)
+(JSValue*) valueWithMTLCounterResultStageUtilization: (MTLCounterResultStageUtilization) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"totalCycles": @(s.totalCycles),
		@"vertexCycles": @(s.vertexCycles),
		@"tessellationCycles": @(s.tessellationCycles),
		@"postTessellationVertexCycles": @(s.postTessellationVertexCycles),
		@"fragmentCycles": @(s.fragmentCycles),
		@"renderTargetCycles": @(s.renderTargetCycles),
	} inContext: context];
}
-(MTLCounterResultStageUtilization) toMTLCounterResultStageUtilization {
	return (MTLCounterResultStageUtilization) {
		(uint64_t) [self[@"totalCycles"] toDouble],
		(uint64_t) [self[@"vertexCycles"] toDouble],
		(uint64_t) [self[@"tessellationCycles"] toDouble],
		(uint64_t) [self[@"postTessellationVertexCycles"] toDouble],
		(uint64_t) [self[@"fragmentCycles"] toDouble],
		(uint64_t) [self[@"renderTargetCycles"] toDouble],
	};
}
+(JSValue*) valueWithMTLCounterResultTimestamp: (MTLCounterResultTimestamp) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"timestamp": @(s.timestamp),
	} inContext: context];
}
-(MTLCounterResultTimestamp) toMTLCounterResultTimestamp {
	return (MTLCounterResultTimestamp) {
		(uint64_t) [self[@"timestamp"] toDouble],
	};
}
+(JSValue*) valueWithMTLCounterResultStatistic: (MTLCounterResultStatistic) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"tessellationInputPatches": @(s.tessellationInputPatches),
		@"vertexInvocations": @(s.vertexInvocations),
		@"postTessellationVertexInvocations": @(s.postTessellationVertexInvocations),
		@"clipperInvocations": @(s.clipperInvocations),
		@"clipperPrimitivesOut": @(s.clipperPrimitivesOut),
		@"fragmentInvocations": @(s.fragmentInvocations),
		@"fragmentsPassed": @(s.fragmentsPassed),
		@"computeKernelInvocations": @(s.computeKernelInvocations),
	} inContext: context];
}
-(MTLCounterResultStatistic) toMTLCounterResultStatistic {
	return (MTLCounterResultStatistic) {
		(uint64_t) [self[@"tessellationInputPatches"] toDouble],
		(uint64_t) [self[@"vertexInvocations"] toDouble],
		(uint64_t) [self[@"postTessellationVertexInvocations"] toDouble],
		(uint64_t) [self[@"clipperInvocations"] toDouble],
		(uint64_t) [self[@"clipperPrimitivesOut"] toDouble],
		(uint64_t) [self[@"fragmentInvocations"] toDouble],
		(uint64_t) [self[@"fragmentsPassed"] toDouble],
		(uint64_t) [self[@"computeKernelInvocations"] toDouble],
	};
}
@end
static void addProtocols()
{
	class_addProtocol([MTLCounterSampleBufferDescriptor class], @protocol(MTLCounterSampleBufferDescriptorInstanceExports));
	class_addProtocol([MTLCounterSampleBufferDescriptor class], @protocol(MTLCounterSampleBufferDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLCounterSampleBufferErrorOutOfMemory"] = @0L;
	context[@"MTLCounterSampleBufferErrorInvalid"] = @1L;
	context[@"MTLCounterSampleBufferErrorInternal"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MTLCommonCounterVertexInvocations;
	if (p != NULL) context[@"MTLCommonCounterVertexInvocations"] = MTLCommonCounterVertexInvocations;
	p = (void*) &MTLCounterErrorDomain;
	if (p != NULL) context[@"MTLCounterErrorDomain"] = MTLCounterErrorDomain;
	p = (void*) &MTLCommonCounterSetTimestamp;
	if (p != NULL) context[@"MTLCommonCounterSetTimestamp"] = MTLCommonCounterSetTimestamp;
	p = (void*) &MTLCommonCounterFragmentInvocations;
	if (p != NULL) context[@"MTLCommonCounterFragmentInvocations"] = MTLCommonCounterFragmentInvocations;
	p = (void*) &MTLCommonCounterSetStatistic;
	if (p != NULL) context[@"MTLCommonCounterSetStatistic"] = MTLCommonCounterSetStatistic;
	p = (void*) &MTLCommonCounterPostTessellationVertexInvocations;
	if (p != NULL) context[@"MTLCommonCounterPostTessellationVertexInvocations"] = MTLCommonCounterPostTessellationVertexInvocations;
	p = (void*) &MTLCommonCounterClipperInvocations;
	if (p != NULL) context[@"MTLCommonCounterClipperInvocations"] = MTLCommonCounterClipperInvocations;
	p = (void*) &MTLCommonCounterTotalCycles;
	if (p != NULL) context[@"MTLCommonCounterTotalCycles"] = MTLCommonCounterTotalCycles;
	p = (void*) &MTLCommonCounterComputeKernelInvocations;
	if (p != NULL) context[@"MTLCommonCounterComputeKernelInvocations"] = MTLCommonCounterComputeKernelInvocations;
	p = (void*) &MTLCommonCounterRenderTargetWriteCycles;
	if (p != NULL) context[@"MTLCommonCounterRenderTargetWriteCycles"] = MTLCommonCounterRenderTargetWriteCycles;
	p = (void*) &MTLCommonCounterTessellationInputPatches;
	if (p != NULL) context[@"MTLCommonCounterTessellationInputPatches"] = MTLCommonCounterTessellationInputPatches;
	p = (void*) &MTLCommonCounterClipperPrimitivesOut;
	if (p != NULL) context[@"MTLCommonCounterClipperPrimitivesOut"] = MTLCommonCounterClipperPrimitivesOut;
	p = (void*) &MTLCommonCounterFragmentsPassed;
	if (p != NULL) context[@"MTLCommonCounterFragmentsPassed"] = MTLCommonCounterFragmentsPassed;
	p = (void*) &MTLCommonCounterTimestamp;
	if (p != NULL) context[@"MTLCommonCounterTimestamp"] = MTLCommonCounterTimestamp;
	p = (void*) &MTLCommonCounterFragmentCycles;
	if (p != NULL) context[@"MTLCommonCounterFragmentCycles"] = MTLCommonCounterFragmentCycles;
	p = (void*) &MTLCommonCounterSetStageUtilization;
	if (p != NULL) context[@"MTLCommonCounterSetStageUtilization"] = MTLCommonCounterSetStageUtilization;
	p = (void*) &MTLCommonCounterPostTessellationVertexCycles;
	if (p != NULL) context[@"MTLCommonCounterPostTessellationVertexCycles"] = MTLCommonCounterPostTessellationVertexCycles;
	p = (void*) &MTLCommonCounterTessellationCycles;
	if (p != NULL) context[@"MTLCommonCounterTessellationCycles"] = MTLCommonCounterTessellationCycles;
	p = (void*) &MTLCommonCounterVertexCycles;
	if (p != NULL) context[@"MTLCommonCounterVertexCycles"] = MTLCommonCounterVertexCycles;
}
void Metal_MTLCountersProtocols()
{
	(void)@protocol(MTLCounterSet);
	(void)@protocol(MTLCounterSampleBuffer);
	(void)@protocol(MTLCounter);
}
void load_Metal_MTLCounters_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
