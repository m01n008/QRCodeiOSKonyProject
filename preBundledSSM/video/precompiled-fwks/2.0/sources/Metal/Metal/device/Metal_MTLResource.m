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
	context[@"MTLPurgeableStateKeepCurrent"] = @1U;
	context[@"MTLPurgeableStateNonVolatile"] = @2U;
	context[@"MTLPurgeableStateVolatile"] = @3U;
	context[@"MTLPurgeableStateEmpty"] = @4U;

	context[@"MTLCPUCacheModeDefaultCache"] = @0U;
	context[@"MTLCPUCacheModeWriteCombined"] = @1U;

	context[@"MTLStorageModeShared"] = @0U;
	context[@"MTLStorageModePrivate"] = @2U;
	context[@"MTLStorageModeMemoryless"] = @3U;

	context[@"MTLResourceCPUCacheModeDefaultCache"] = @0U;
	context[@"MTLResourceCPUCacheModeWriteCombined"] = @1U;
	context[@"MTLResourceStorageModeShared"] = @0U;
	context[@"MTLResourceStorageModePrivate"] = @32U;
	context[@"MTLResourceStorageModeMemoryless"] = @48U;
	context[@"MTLResourceHazardTrackingModeUntracked"] = @256U;
	context[@"MTLResourceOptionCPUCacheModeDefault"] = @0U;
	context[@"MTLResourceOptionCPUCacheModeWriteCombined"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLResourceProtocols()
{
	(void)@protocol(MTLResource);
}
void load_Metal_MTLResource_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
