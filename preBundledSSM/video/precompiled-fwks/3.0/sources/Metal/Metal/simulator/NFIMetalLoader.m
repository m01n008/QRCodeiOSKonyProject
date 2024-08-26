#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIMetalModules(JSContext* context)
{
	load_Metal_MTLDevice_symbols(context);
	load_Metal_MTLSampler_symbols(context);
	load_Metal_MTLVisibleFunctionTable_symbols(context);
	load_Metal_MTLComputePass_symbols(context);
	load_Metal_MTLCaptureManager_symbols(context);
	load_Metal_MTLDynamicLibrary_symbols(context);
	load_Metal_MTLAccelerationStructure_symbols(context);
	load_Metal_MTLIndirectCommandBuffer_symbols(context);
	load_Metal_MTLComputePipeline_symbols(context);
	load_Metal_MTLBinaryArchive_symbols(context);
	load_Metal_MTLHeap_symbols(context);
	load_Metal_MTLCommandEncoder_symbols(context);
	load_Metal_MTLCommandQueue_symbols(context);
	load_Metal_MTLBlitPass_symbols(context);
	load_Metal_MTLAccelerationStructureCommandEncoder_symbols(context);
	load_Metal_MTLBuffer_symbols(context);
	load_Metal_MTLRenderPipeline_symbols(context);
	load_Metal_MTLDrawable_symbols(context);
	load_Metal_MTLPixelFormat_symbols(context);
	load_Metal_MTLArgument_symbols(context);
	load_Metal_MTLVertexDescriptor_symbols(context);
	load_Metal_MTLParallelRenderCommandEncoder_symbols(context);
	load_Metal_MTLIndirectCommandEncoder_symbols(context);
	load_Metal_MTLTexture_symbols(context);
	load_Metal_MTLArgumentEncoder_symbols(context);
	load_Metal_MTLCommandBuffer_symbols(context);
	load_Metal_MTLResource_symbols(context);
	load_Metal_MTLComputeCommandEncoder_symbols(context);
	load_Metal_MTLFunctionHandle_symbols(context);
	load_Metal_MTLRenderCommandEncoder_symbols(context);
	load_Metal_MTLEvent_symbols(context);
	load_Metal_MTLRenderPass_symbols(context);
	load_Metal_MTLResourceStatePass_symbols(context);
	load_Metal_MTLFunctionLog_symbols(context);
	load_Metal_MTLTypes_symbols(context);
	load_Metal_MTLCaptureScope_symbols(context);
	load_Metal_MTLStageInputOutputDescriptor_symbols(context);
	load_Metal_MTLBlitCommandEncoder_symbols(context);
	load_Metal_MTLPipeline_symbols(context);
	load_Metal_MTLCounters_symbols(context);
	load_Metal_MTLLibrary_symbols(context);
	load_Metal_MTLFunctionDescriptor_symbols(context);
	load_Metal_MTLIntersectionFunctionTable_symbols(context);
	load_Metal_MTLLinkedFunctions_symbols(context);
	load_Metal_MTLRasterizationRate_symbols(context);
	load_Metal_MTLDepthStencil_symbols(context);
	load_Metal_MTLFence_symbols(context);
	load_Metal_MTLResourceStateCommandEncoder_symbols(context);
}

JSValue* extractNFIMetalStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(MTLAccelerationStructureSizes)) == 0) {
		MTLAccelerationStructureSizes argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLAccelerationStructureSizes: argument inContext: context];
	} else if (strcmp(type, @encode(MTLSizeAndAlign)) == 0) {
		MTLSizeAndAlign argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLSizeAndAlign: argument inContext: context];
	} else if (strcmp(type, @encode(MTLIndirectCommandBufferExecutionRange)) == 0) {
		MTLIndirectCommandBufferExecutionRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLIndirectCommandBufferExecutionRange: argument inContext: context];
	} else if (strcmp(type, @encode(MTLTextureSwizzleChannels)) == 0) {
		MTLTextureSwizzleChannels argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLTextureSwizzleChannels: argument inContext: context];
	} else if (strcmp(type, @encode(MTLScissorRect)) == 0) {
		MTLScissorRect argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLScissorRect: argument inContext: context];
	} else if (strcmp(type, @encode(MTLViewport)) == 0) {
		MTLViewport argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLViewport: argument inContext: context];
	} else if (strcmp(type, @encode(MTLVertexAmplificationViewMapping)) == 0) {
		MTLVertexAmplificationViewMapping argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLVertexAmplificationViewMapping: argument inContext: context];
	} else if (strcmp(type, @encode(MTLDrawIndexedPrimitivesIndirectArguments)) == 0) {
		MTLDrawIndexedPrimitivesIndirectArguments argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLDrawIndexedPrimitivesIndirectArguments: argument inContext: context];
	} else if (strcmp(type, @encode(MTLDrawPrimitivesIndirectArguments)) == 0) {
		MTLDrawPrimitivesIndirectArguments argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLDrawPrimitivesIndirectArguments: argument inContext: context];
	} else if (strcmp(type, @encode(MTLDrawPatchIndirectArguments)) == 0) {
		MTLDrawPatchIndirectArguments argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLDrawPatchIndirectArguments: argument inContext: context];
	} else if (strcmp(type, @encode(MTLClearColor)) == 0) {
		MTLClearColor argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLClearColor: argument inContext: context];
	} else if (strcmp(type, @encode(MTLSize)) == 0) {
		MTLSize argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLSize: argument inContext: context];
	} else if (strcmp(type, @encode(MTLOrigin)) == 0) {
		MTLOrigin argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLOrigin: argument inContext: context];
	} else if (strcmp(type, @encode(MTLCoordinate2D)) == 0) {
		MTLCoordinate2D argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLCoordinate2D: argument inContext: context];
	} else if (strcmp(type, @encode(MTLRegion)) == 0) {
		MTLRegion argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLRegion: argument inContext: context];
	} else if (strcmp(type, @encode(MTLCounterResultStageUtilization)) == 0) {
		MTLCounterResultStageUtilization argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLCounterResultStageUtilization: argument inContext: context];
	} else if (strcmp(type, @encode(MTLCounterResultTimestamp)) == 0) {
		MTLCounterResultTimestamp argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLCounterResultTimestamp: argument inContext: context];
	} else if (strcmp(type, @encode(MTLCounterResultStatistic)) == 0) {
		MTLCounterResultStatistic argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLCounterResultStatistic: argument inContext: context];
	} else if (strcmp(type, @encode(MTLMapIndirectArguments)) == 0) {
		MTLMapIndirectArguments argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMTLMapIndirectArguments: argument inContext: context];
	}    
    return nil;
}

BOOL setNFIMetalStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(MTLAccelerationStructureSizes)) == 0) {
		MTLAccelerationStructureSizes returnValue = value.toMTLAccelerationStructureSizes;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLSizeAndAlign)) == 0) {
		MTLSizeAndAlign returnValue = value.toMTLSizeAndAlign;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLIndirectCommandBufferExecutionRange)) == 0) {
		MTLIndirectCommandBufferExecutionRange returnValue = value.toMTLIndirectCommandBufferExecutionRange;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLTextureSwizzleChannels)) == 0) {
		MTLTextureSwizzleChannels returnValue = value.toMTLTextureSwizzleChannels;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLScissorRect)) == 0) {
		MTLScissorRect returnValue = value.toMTLScissorRect;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLViewport)) == 0) {
		MTLViewport returnValue = value.toMTLViewport;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLVertexAmplificationViewMapping)) == 0) {
		MTLVertexAmplificationViewMapping returnValue = value.toMTLVertexAmplificationViewMapping;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLDrawIndexedPrimitivesIndirectArguments)) == 0) {
		MTLDrawIndexedPrimitivesIndirectArguments returnValue = value.toMTLDrawIndexedPrimitivesIndirectArguments;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLDrawPrimitivesIndirectArguments)) == 0) {
		MTLDrawPrimitivesIndirectArguments returnValue = value.toMTLDrawPrimitivesIndirectArguments;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLDrawPatchIndirectArguments)) == 0) {
		MTLDrawPatchIndirectArguments returnValue = value.toMTLDrawPatchIndirectArguments;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLClearColor)) == 0) {
		MTLClearColor returnValue = value.toMTLClearColor;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLSize)) == 0) {
		MTLSize returnValue = value.toMTLSize;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLOrigin)) == 0) {
		MTLOrigin returnValue = value.toMTLOrigin;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLCoordinate2D)) == 0) {
		MTLCoordinate2D returnValue = value.toMTLCoordinate2D;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLRegion)) == 0) {
		MTLRegion returnValue = value.toMTLRegion;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLCounterResultStageUtilization)) == 0) {
		MTLCounterResultStageUtilization returnValue = value.toMTLCounterResultStageUtilization;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLCounterResultTimestamp)) == 0) {
		MTLCounterResultTimestamp returnValue = value.toMTLCounterResultTimestamp;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLCounterResultStatistic)) == 0) {
		MTLCounterResultStatistic returnValue = value.toMTLCounterResultStatistic;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MTLMapIndirectArguments)) == 0) {
		MTLMapIndirectArguments returnValue = value.toMTLMapIndirectArguments;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

