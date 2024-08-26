#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation MTLRasterizationRateLayerDescriptor (Exports)
-(id) jsinitWithSampleCount: (MTLSize) sampleCount 
{
	id resultVal__;
	resultVal__ = [[self initWithSampleCount: sampleCount ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([MTLRasterizationRateSampleArray class], @protocol(MTLRasterizationRateSampleArrayInstanceExports));
	class_addProtocol([MTLRasterizationRateSampleArray class], @protocol(MTLRasterizationRateSampleArrayClassExports));
	class_addProtocol([MTLRasterizationRateLayerArray class], @protocol(MTLRasterizationRateLayerArrayInstanceExports));
	class_addProtocol([MTLRasterizationRateLayerArray class], @protocol(MTLRasterizationRateLayerArrayClassExports));
	class_addProtocol([MTLRasterizationRateMapDescriptor class], @protocol(MTLRasterizationRateMapDescriptorInstanceExports));
	class_addProtocol([MTLRasterizationRateMapDescriptor class], @protocol(MTLRasterizationRateMapDescriptorClassExports));
	class_addProtocol([MTLRasterizationRateLayerDescriptor class], @protocol(MTLRasterizationRateLayerDescriptorInstanceExports));
	class_addProtocol([MTLRasterizationRateLayerDescriptor class], @protocol(MTLRasterizationRateLayerDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLRasterizationRateProtocols()
{
	(void)@protocol(MTLRasterizationRateMap);
}
void load_Metal_MTLRasterizationRate_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
