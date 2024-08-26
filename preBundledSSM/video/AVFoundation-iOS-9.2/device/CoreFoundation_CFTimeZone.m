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
	context[@"kCFTimeZoneNameStyleStandard"] = @0L;
	context[@"kCFTimeZoneNameStyleShortStandard"] = @1L;
	context[@"kCFTimeZoneNameStyleDaylightSaving"] = @2L;
	context[@"kCFTimeZoneNameStyleShortDaylightSaving"] = @3L;
	context[@"kCFTimeZoneNameStyleGeneric"] = @4L;
	context[@"kCFTimeZoneNameStyleShortGeneric"] = @5L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFTimeZoneSystemTimeZoneDidChangeNotification;
	if (p != NULL) context[@"kCFTimeZoneSystemTimeZoneDidChangeNotification"] = [JSValue valueWithObject: (__bridge id) kCFTimeZoneSystemTimeZoneDidChangeNotification inContext: context];
}
void load_CoreFoundation_CFTimeZone_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
