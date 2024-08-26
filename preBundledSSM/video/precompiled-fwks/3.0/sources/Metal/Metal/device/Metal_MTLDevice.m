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
		(NSUInteger) [self[@"accelerationStructureSize"] toUInt32],
		(NSUInteger) [self[@"buildScratchBufferSize"] toUInt32],
		(NSUInteger) [self[@"refitScratchBufferSize"] toUInt32],
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
		(NSUInteger) [self[@"size"] toUInt32],
		(NSUInteger) [self[@"align"] toUInt32],
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
	context[@"MTLFeatureSet_iOS_GPUFamily1_v1"] = @0U;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v1"] = @1U;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v2"] = @2U;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v2"] = @3U;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v1"] = @4U;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v3"] = @5U;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v3"] = @6U;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v2"] = @7U;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v4"] = @8U;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v4"] = @9U;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v3"] = @10U;
	context[@"MTLFeatureSet_iOS_GPUFamily4_v1"] = @11U;
	context[@"MTLFeatureSet_iOS_GPUFamily1_v5"] = @12U;
	context[@"MTLFeatureSet_iOS_GPUFamily2_v5"] = @13U;
	context[@"MTLFeatureSet_iOS_GPUFamily3_v4"] = @14U;
	context[@"MTLFeatureSet_iOS_GPUFamily4_v2"] = @15U;
	context[@"MTLFeatureSet_iOS_GPUFamily5_v1"] = @16U;

	context[@"MTLGPUFamilyApple1"] = @1001;
	context[@"MTLGPUFamilyApple2"] = @1002;
	context[@"MTLGPUFamilyApple3"] = @1003;
	context[@"MTLGPUFamilyApple4"] = @1004;
	context[@"MTLGPUFamilyApple5"] = @1005;
	context[@"MTLGPUFamilyApple6"] = @1006;
	context[@"MTLGPUFamilyApple7"] = @1007;
	context[@"MTLGPUFamilyMac1"] = @2001;
	context[@"MTLGPUFamilyMac2"] = @2002;
	context[@"MTLGPUFamilyCommon1"] = @3001;
	context[@"MTLGPUFamilyCommon2"] = @3002;
	context[@"MTLGPUFamilyCommon3"] = @3003;
	context[@"MTLGPUFamilyMacCatalyst1"] = @4001;
	context[@"MTLGPUFamilyMacCatalyst2"] = @4002;

	context[@"MTLPipelineOptionNone"] = @0U;
	context[@"MTLPipelineOptionArgumentInfo"] = @1U;
	context[@"MTLPipelineOptionBufferTypeInfo"] = @2U;
	context[@"MTLPipelineOptionFailOnBinaryArchiveMiss"] = @4U;

	context[@"MTLReadWriteTextureTierNone"] = @0U;
	context[@"MTLReadWriteTextureTier1"] = @1U;
	context[@"MTLReadWriteTextureTier2"] = @2U;

	context[@"MTLArgumentBuffersTier1"] = @0U;
	context[@"MTLArgumentBuffersTier2"] = @1U;

	context[@"MTLSparseTextureRegionAlignmentModeOutward"] = @0U;
	context[@"MTLSparseTextureRegionAlignmentModeInward"] = @1U;

	context[@"MTLCounterSamplingPointAtStageBoundary"] = @0U;
	context[@"MTLCounterSamplingPointAtDrawBoundary"] = @1U;
	context[@"MTLCounterSamplingPointAtDispatchBoundary"] = @2U;
	context[@"MTLCounterSamplingPointAtTileDispatchBoundary"] = @3U;
	context[@"MTLCounterSamplingPointAtBlitBoundary"] = @4U;

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
