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
	context[@"CMMemoryPoolGetTypeID"] = ^CFTypeID() {
		return CMMemoryPoolGetTypeID();
	};
	context[@"CMMemoryPoolFlush"] = ^void(id arg0) {
		CMMemoryPoolFlush(arg0);
	};
	context[@"CMMemoryPoolGetAllocator"] = ^id(id arg0) {
		return CMMemoryPoolGetAllocator(arg0);
	};
	context[@"CMMemoryPoolInvalidate"] = ^void(id arg0) {
		CMMemoryPoolInvalidate(arg0);
	};
	context[@"CMMemoryPoolCreate"] = ^id(id arg0) {
		return CMMemoryPoolCreate(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMMemoryPoolError_AllocationFailed"] = @-15490;
	context[@"kCMMemoryPoolError_InvalidParameter"] = @-15491;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMMemoryPoolOption_AgeOutPeriod;
	if (p != NULL) context[@"kCMMemoryPoolOption_AgeOutPeriod"] = [JSValue valueWithObject: (__bridge id) kCMMemoryPoolOption_AgeOutPeriod inContext: context];
}
void load_CoreMedia_CMMemoryPool_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
