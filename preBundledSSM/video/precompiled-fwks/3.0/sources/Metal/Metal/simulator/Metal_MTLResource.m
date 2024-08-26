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
	context[@"MTLPurgeableStateKeepCurrent"] = @1UL;
	context[@"MTLPurgeableStateNonVolatile"] = @2UL;
	context[@"MTLPurgeableStateVolatile"] = @3UL;
	context[@"MTLPurgeableStateEmpty"] = @4UL;

	context[@"MTLCPUCacheModeDefaultCache"] = @0UL;
	context[@"MTLCPUCacheModeWriteCombined"] = @1UL;

	context[@"MTLStorageModeShared"] = @0UL;
	context[@"MTLStorageModePrivate"] = @2UL;
	context[@"MTLStorageModeMemoryless"] = @3UL;

	context[@"MTLHazardTrackingModeDefault"] = @0UL;
	context[@"MTLHazardTrackingModeUntracked"] = @1UL;
	context[@"MTLHazardTrackingModeTracked"] = @2UL;

	context[@"MTLResourceCPUCacheModeDefaultCache"] = @0UL;
	context[@"MTLResourceCPUCacheModeWriteCombined"] = @1UL;
	context[@"MTLResourceStorageModeShared"] = @0UL;
	context[@"MTLResourceStorageModePrivate"] = @32UL;
	context[@"MTLResourceStorageModeMemoryless"] = @48UL;
	context[@"MTLResourceHazardTrackingModeDefault"] = @0UL;
	context[@"MTLResourceHazardTrackingModeUntracked"] = @256UL;
	context[@"MTLResourceHazardTrackingModeTracked"] = @512UL;
	context[@"MTLResourceOptionCPUCacheModeDefault"] = @0UL;
	context[@"MTLResourceOptionCPUCacheModeWriteCombined"] = @1UL;

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
