#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFPlugInUnloadFunctionKey;
	if (p != NULL) context[@"kCFPlugInUnloadFunctionKey"] = [JSValue valueWithObject: (__bridge id) kCFPlugInUnloadFunctionKey inContext: context];
	p = (void*) &kCFPlugInFactoriesKey;
	if (p != NULL) context[@"kCFPlugInFactoriesKey"] = [JSValue valueWithObject: (__bridge id) kCFPlugInFactoriesKey inContext: context];
	p = (void*) &kCFPlugInTypesKey;
	if (p != NULL) context[@"kCFPlugInTypesKey"] = [JSValue valueWithObject: (__bridge id) kCFPlugInTypesKey inContext: context];
	p = (void*) &kCFPlugInDynamicRegistrationKey;
	if (p != NULL) context[@"kCFPlugInDynamicRegistrationKey"] = [JSValue valueWithObject: (__bridge id) kCFPlugInDynamicRegistrationKey inContext: context];
	p = (void*) &kCFPlugInDynamicRegisterFunctionKey;
	if (p != NULL) context[@"kCFPlugInDynamicRegisterFunctionKey"] = [JSValue valueWithObject: (__bridge id) kCFPlugInDynamicRegisterFunctionKey inContext: context];
}
void load_CoreFoundation_CFPlugIn_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
