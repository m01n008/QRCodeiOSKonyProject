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
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLBlitOptionNone"] = @0U;
	context[@"MTLBlitOptionDepthFromDepthStencil"] = @1U;
	context[@"MTLBlitOptionStencilFromDepthStencil"] = @2U;
	context[@"MTLBlitOptionRowLinearPVRTC"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLBlitCommandEncoderProtocols()
{
	(void)@protocol(MTLBlitCommandEncoder);
}
void load_Metal_MTLBlitCommandEncoder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
