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
	context[@"NSMakeCollectable"] = ^id(id arg0) {
		return NSMakeCollectable(arg0);
	};
	context[@"NSPageSize"] = ^NSUInteger() {
		return NSPageSize();
	};
	context[@"NSLogPageSize"] = ^NSUInteger() {
		return NSLogPageSize();
	};
	context[@"NSRoundUpToMultipleOfPageSize"] = ^NSUInteger(NSUInteger arg0) {
		return NSRoundUpToMultipleOfPageSize(arg0);
	};
	context[@"NSRoundDownToMultipleOfPageSize"] = ^NSUInteger(NSUInteger arg0) {
		return NSRoundDownToMultipleOfPageSize(arg0);
	};
	context[@"NSRealMemoryAvailable"] = ^NSUInteger() {
		return NSRealMemoryAvailable();
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSZone_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
