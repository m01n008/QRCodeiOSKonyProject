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
	context[@"kCFBundleExecutableArchitectureI386"] = @7;
	context[@"kCFBundleExecutableArchitecturePPC"] = @18;
	context[@"kCFBundleExecutableArchitectureX86_64"] = @16777223;
	context[@"kCFBundleExecutableArchitecturePPC64"] = @16777234;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFBundleNameKey;
	if (p != NULL) context[@"kCFBundleNameKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleNameKey inContext: context];
	p = (void*) &kCFBundleLocalizationsKey;
	if (p != NULL) context[@"kCFBundleLocalizationsKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleLocalizationsKey inContext: context];
	p = (void*) &kCFBundleExecutableKey;
	if (p != NULL) context[@"kCFBundleExecutableKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleExecutableKey inContext: context];
	p = (void*) &kCFBundleDevelopmentRegionKey;
	if (p != NULL) context[@"kCFBundleDevelopmentRegionKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleDevelopmentRegionKey inContext: context];
	p = (void*) &kCFBundleInfoDictionaryVersionKey;
	if (p != NULL) context[@"kCFBundleInfoDictionaryVersionKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleInfoDictionaryVersionKey inContext: context];
	p = (void*) &kCFBundleVersionKey;
	if (p != NULL) context[@"kCFBundleVersionKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleVersionKey inContext: context];
	p = (void*) &kCFBundleIdentifierKey;
	if (p != NULL) context[@"kCFBundleIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCFBundleIdentifierKey inContext: context];
}
void load_CoreFoundation_CFBundle_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
