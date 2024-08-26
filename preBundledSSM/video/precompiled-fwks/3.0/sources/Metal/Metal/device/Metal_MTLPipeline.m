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
	class_addProtocol([MTLPipelineBufferDescriptorArray class], @protocol(MTLPipelineBufferDescriptorArrayInstanceExports));
	class_addProtocol([MTLPipelineBufferDescriptorArray class], @protocol(MTLPipelineBufferDescriptorArrayClassExports));
	class_addProtocol([MTLPipelineBufferDescriptor class], @protocol(MTLPipelineBufferDescriptorInstanceExports));
	class_addProtocol([MTLPipelineBufferDescriptor class], @protocol(MTLPipelineBufferDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLMutabilityDefault"] = @0U;
	context[@"MTLMutabilityMutable"] = @1U;
	context[@"MTLMutabilityImmutable"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLPipeline_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
