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
	context[@"CFArrayGetTypeID"] = ^CFTypeID() {
		return CFArrayGetTypeID();
	};
	context[@"CFArrayCreateCopy"] = ^id(id arg0, id arg1) {
		return CFArrayCreateCopy(arg0, arg1);
	};
	context[@"CFArrayCreateMutableCopy"] = ^id(id arg0, CFIndex arg1, id arg2) {
		return CFArrayCreateMutableCopy(arg0, arg1, arg2);
	};
	context[@"CFArrayGetCount"] = ^CFIndex(id arg0) {
		return CFArrayGetCount(arg0);
	};
	context[@"CFArrayRemoveValueAtIndex"] = ^void(id arg0, CFIndex arg1) {
		CFArrayRemoveValueAtIndex(arg0, arg1);
	};
	context[@"CFArrayRemoveAllValues"] = ^void(id arg0) {
		CFArrayRemoveAllValues(arg0);
	};
	context[@"CFArrayExchangeValuesAtIndices"] = ^void(id arg0, CFIndex arg1, CFIndex arg2) {
		CFArrayExchangeValuesAtIndices(arg0, arg1, arg2);
	};
	context[@"CFArrayAppendArray"] = ^void(id arg0, id arg1, CFRange arg2) {
		CFArrayAppendArray(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFArray_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
