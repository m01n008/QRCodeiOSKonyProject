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
	context[@"MTLResourceUsageRead"] = @1U;
	context[@"MTLResourceUsageWrite"] = @2U;
	context[@"MTLResourceUsageSample"] = @4U;

	context[@"MTLBarrierScopeBuffers"] = @1U;
	context[@"MTLBarrierScopeTextures"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLCommandEncoderProtocols()
{
	(void)@protocol(MTLCommandEncoder);
}
void load_Metal_MTLCommandEncoder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
