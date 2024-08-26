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

	context[@"MTLPipelineOptionNone"] = @0U;
	context[@"MTLPipelineOptionArgumentInfo"] = @1U;
	context[@"MTLPipelineOptionBufferTypeInfo"] = @2U;

	context[@"MTLReadWriteTextureTierNone"] = @0U;
	context[@"MTLReadWriteTextureTier1"] = @1U;
	context[@"MTLReadWriteTextureTier2"] = @2U;

	context[@"MTLArgumentBuffersTier1"] = @0U;
	context[@"MTLArgumentBuffersTier2"] = @1U;

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
