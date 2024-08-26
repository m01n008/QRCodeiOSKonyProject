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

	context[@"MTLPipelineOptionNone"] = @0UL;
	context[@"MTLPipelineOptionArgumentInfo"] = @1UL;
	context[@"MTLPipelineOptionBufferTypeInfo"] = @2UL;

	context[@"MTLReadWriteTextureTierNone"] = @0UL;
	context[@"MTLReadWriteTextureTier1"] = @1UL;
	context[@"MTLReadWriteTextureTier2"] = @2UL;

	context[@"MTLArgumentBuffersTier1"] = @0UL;
	context[@"MTLArgumentBuffersTier2"] = @1UL;

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
