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
	class_addProtocol([MTLTextureDescriptor class], @protocol(MTLTextureDescriptorInstanceExports));
	class_addProtocol([MTLTextureDescriptor class], @protocol(MTLTextureDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLTextureType1D"] = @0U;
	context[@"MTLTextureType1DArray"] = @1U;
	context[@"MTLTextureType2D"] = @2U;
	context[@"MTLTextureType2DArray"] = @3U;
	context[@"MTLTextureType2DMultisample"] = @4U;
	context[@"MTLTextureTypeCube"] = @5U;
	context[@"MTLTextureTypeCubeArray"] = @6U;
	context[@"MTLTextureType3D"] = @7U;

	context[@"MTLTextureUsageUnknown"] = @0U;
	context[@"MTLTextureUsageShaderRead"] = @1U;
	context[@"MTLTextureUsageShaderWrite"] = @2U;
	context[@"MTLTextureUsageRenderTarget"] = @4U;
	context[@"MTLTextureUsagePixelFormatView"] = @16U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLTextureProtocols()
{
	(void)@protocol(MTLTexture);
}
void load_Metal_MTLTexture_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
