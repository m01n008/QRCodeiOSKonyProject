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
	context[@"MTLTextureType1D"] = @0UL;
	context[@"MTLTextureType1DArray"] = @1UL;
	context[@"MTLTextureType2D"] = @2UL;
	context[@"MTLTextureType2DArray"] = @3UL;
	context[@"MTLTextureType2DMultisample"] = @4UL;
	context[@"MTLTextureTypeCube"] = @5UL;
	context[@"MTLTextureTypeCubeArray"] = @6UL;
	context[@"MTLTextureType3D"] = @7UL;

	context[@"MTLTextureUsageUnknown"] = @0UL;
	context[@"MTLTextureUsageShaderRead"] = @1UL;
	context[@"MTLTextureUsageShaderWrite"] = @2UL;
	context[@"MTLTextureUsageRenderTarget"] = @4UL;
	context[@"MTLTextureUsagePixelFormatView"] = @16UL;

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
