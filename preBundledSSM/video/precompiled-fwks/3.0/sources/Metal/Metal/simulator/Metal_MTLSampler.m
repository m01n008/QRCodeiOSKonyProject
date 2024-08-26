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
	context[@"MTLSamplerMinMagFilterNearest"] = @0UL;
	context[@"MTLSamplerMinMagFilterLinear"] = @1UL;

	context[@"MTLSamplerMipFilterNotMipmapped"] = @0UL;
	context[@"MTLSamplerMipFilterNearest"] = @1UL;
	context[@"MTLSamplerMipFilterLinear"] = @2UL;

	context[@"MTLSamplerAddressModeClampToEdge"] = @0UL;
	context[@"MTLSamplerAddressModeMirrorClampToEdge"] = @1UL;
	context[@"MTLSamplerAddressModeRepeat"] = @2UL;
	context[@"MTLSamplerAddressModeMirrorRepeat"] = @3UL;
	context[@"MTLSamplerAddressModeClampToZero"] = @4UL;
	context[@"MTLSamplerAddressModeClampToBorderColor"] = @5UL;

	context[@"MTLSamplerBorderColorTransparentBlack"] = @0UL;
	context[@"MTLSamplerBorderColorOpaqueBlack"] = @1UL;
	context[@"MTLSamplerBorderColorOpaqueWhite"] = @2UL;

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
