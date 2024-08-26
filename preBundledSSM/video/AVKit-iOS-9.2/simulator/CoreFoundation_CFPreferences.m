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
	p = (void*) &kCFPreferencesAnyUser;
	if (p != NULL) context[@"kCFPreferencesAnyUser"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesAnyUser inContext: context];
	p = (void*) &kCFPreferencesCurrentUser;
	if (p != NULL) context[@"kCFPreferencesCurrentUser"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesCurrentUser inContext: context];
	p = (void*) &kCFPreferencesAnyHost;
	if (p != NULL) context[@"kCFPreferencesAnyHost"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesAnyHost inContext: context];
	p = (void*) &kCFPreferencesCurrentHost;
	if (p != NULL) context[@"kCFPreferencesCurrentHost"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesCurrentHost inContext: context];
	p = (void*) &kCFPreferencesCurrentApplication;
	if (p != NULL) context[@"kCFPreferencesCurrentApplication"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesCurrentApplication inContext: context];
	p = (void*) &kCFPreferencesAnyApplication;
	if (p != NULL) context[@"kCFPreferencesAnyApplication"] = [JSValue valueWithObject: (__bridge id) kCFPreferencesAnyApplication inContext: context];
}
void load_CoreFoundation_CFPreferences_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
