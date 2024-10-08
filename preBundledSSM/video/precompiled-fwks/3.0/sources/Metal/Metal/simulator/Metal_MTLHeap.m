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
	context[@"MTLHeapTypeAutomatic"] = @0L;
	context[@"MTLHeapTypePlacement"] = @1L;
	context[@"MTLHeapTypeSparse"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLHeapProtocols()
{
	(void)@protocol(MTLHeap);
}
void load_Metal_MTLHeap_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
