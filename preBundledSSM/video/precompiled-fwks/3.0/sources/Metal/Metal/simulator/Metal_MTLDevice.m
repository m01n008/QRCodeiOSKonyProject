#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Metal_MTLDevice)
+(JSValue*) valueWithMTLAccelerationStructureSizes: (MTLAccelerationStructureSizes) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"accelerationStructureSize": @(s.accelerationStructureSize),
		@"buildScratchBufferSize": @(s.buildScratchBufferSize),
		@"refitScratchBufferSize": @(s.refitScratchBufferSize),
	} inContext: context];
}
-(MTLAccelerationStructureSizes) toMTLAccelerationStructureSizes {
	return (MTLAccelerationStructureSizes) {
		(NSUInteger) [self[@"accelerationStructureSize"] toDouble],
		(NSUInteger) [self[@"buildScratchBufferSize"] toDouble],
		(NSUInteger) [self[@"refitScratchBufferSize"] toDouble],
	};
}
+(JSValue*) valueWithMTLSizeAndAlign: (MTLSizeAndAlign) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"size": @(s.size),
		@"align": @(s.align),
	} inContext: context];
}
-(MTLSizeAndAlign) toMTLSizeAndAlign {
	return (MTLSizeAndAlign) {
		(NSUInteger) [self[@"size"] toDouble],
		(NSUInteger) [self[@"align"] toDouble],
	};
}
@end
static void addProtocols()
{
	class_addProtocol([MTLArgumentDescriptor class], @protocol(MTLArgumentDescriptorInstanceExports));
	class_addProtocol([MTLArgumentDescriptor class], @protocol(MTLArgumentDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"MTLCreateSystemDefaultDevice"] = ^id() {
		return MTLCreateSystemDefaultDevice();
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLFeatureSet_iOS_GPUFamily1_v1"] = @0UL;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v1"] = @1UL;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v2"] = @2UL;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v2"] = @3UL;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v1"] = @4UL;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v3"] = @5UL;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v3"] = @6UL;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v2"] = @7UL;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v4"] = @8UL;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v4"] = @9UL;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v3"] = @10UL;
	context[@"MTLFeatureSet_iOS_GPUFamily4_v1"] = @11UL;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v5"] = @12UL;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v5"] = @13UL;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v4"] = @14UL;
	context[@"MTLFeatureSet_iOS_GPUFamily4_v2"] = @15UL;
	context[@"MTLFeatureSet_iOS_GPUFamily5_v1"] = @16UL;

	context[@"MTLGPUFamilyApple1"] = @1001L;
	context[@"MTLGPUFamilyApple2"] = @1002L;
	context[@"MTLGPUFamilyApple3"] = @1003L;
	context[@"MTLGPUFamilyApple4"] = @1004L;
	context[@"MTLGPUFamilyApple5"] = @1005L;
	context[@"MTLGPUFamilyApple6"] = @1006L;
	context[@"MTLGPUFamilyApple7"] = @1007L;
	context[@"MTLGPUFamilyMac1"] = @2001L;
	context[@"MTLGPUFamilyMac2"] = @2002L;
	context[@"MTLGPUFamilyCommon1"] = @3001L;
	context[@"MTLGPUFamilyCommon2"] = @3002L;
	context[@"MTLGPUFamilyCommon3"] = @3003L;
	context[@"MTLGPUFamilyMacCatalyst1"] = @4001L;
	context[@"MTLGPUFamilyMacCatalyst2"] = @4002L;

	context[@"MTLPipelineOptionNone"] = @0UL;
	context[@"MTLPipelineOptionArgumentInfo"] = @1UL;
	context[@"MTLPipelineOptionBufferTypeInfo"] = @2UL;
	context[@"MTLPipelineOptionFailOnBinaryArchiveMiss"] = @4UL;

	context[@"MTLReadWriteTextureTierNone"] = @0UL;
	context[@"MTLReadWriteTextureTier1"] = @1UL;
	context[@"MTLReadWriteTextureTier2"] = @2UL;

	context[@"MTLArgumentBuffersTier1"] = @0UL;
	context[@"MTLArgumentBuffersTier2"] = @1UL;

	context[@"MTLSparseTextureRegionAlignmentModeOutward"] = @0UL;
	context[@"MTLSparseTextureRegionAlignmentModeInward"] = @1UL;

	context[@"MTLCounterSamplingPointAtStageBoundary"] = @0UL;
	context[@"MTLCounterSamplingPointAtDrawBoundary"] = @1UL;
	context[@"MTLCounterSamplingPointAtDispatchBoundary"] = @2UL;
	context[@"MTLCounterSamplingPointAtTileDispatchBoundary"] = @3UL;
	context[@"MTLCounterSamplingPointAtBlitBoundary"] = @4UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLDeviceProtocols()
{
	(void)@protocol(MTLDevice);
}
void load_Metal_MTLDevice_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
