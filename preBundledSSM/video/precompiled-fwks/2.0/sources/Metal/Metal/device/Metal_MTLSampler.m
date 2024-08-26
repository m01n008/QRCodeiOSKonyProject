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
	class_addProtocol([MTLSamplerDescriptor class], @protocol(MTLSamplerDescriptorInstanceExports));
	class_addProtocol([MTLSamplerDescriptor class], @protocol(MTLSamplerDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLSamplerMinMagFilterNearest"] = @0U;
	context[@"MTLSamplerMinMagFilterLinear"] = @1U;

	context[@"MTLSamplerMipFilterNotMipmapped"] = @0U;
	context[@"MTLSamplerMipFilterNearest"] = @1U;
	context[@"MTLSamplerMipFilterLinear"] = @2U;

	context[@"MTLSamplerAddressModeClampToEdge"] = @0U;
	context[@"MTLSamplerAddressModeRepeat"] = @2U;
	context[@"MTLSamplerAddressModeMirrorRepeat"] = @3U;
	context[@"MTLSamplerAddressModeClampToZero"] = @4U;


}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLSamplerProtocols()
{
	(void)@protocol(MTLSamplerState);
}
void load_Metal_MTLSampler_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
