#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFBase)
+(JSValue*) valueWithCFRange: (CFRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"location": @(s.location),
		@"length": @(s.length),
	} inContext: context];
}
-(CFRange) toCFRange {
	return (CFRange) {
		(CFIndex) [self[@"location"] toDouble],
		(CFIndex) [self[@"length"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFCompareLessThan"] = @-1L;
	context[@"kCFCompareEqualTo"] = @0L;
	context[@"kCFCompareGreaterThan"] = @1L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFAllocatorMallocZone;
	if (p != NULL) context[@"kCFAllocatorMallocZone"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorMallocZone inContext: context];
	p = (void*) &kCFAllocatorNull;
	if (p != NULL) context[@"kCFAllocatorNull"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorNull inContext: context];
	p = (void*) &kCFNotFound;
	if (p != NULL) context[@"kCFNotFound"] = @(kCFNotFound);
	p = (void*) &kCFNull;
	if (p != NULL) context[@"kCFNull"] = [JSValue valueWithObject: (__bridge id) kCFNull inContext: context];
	p = (void*) &kCFAllocatorDefault;
	if (p != NULL) context[@"kCFAllocatorDefault"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorDefault inContext: context];
	p = (void*) &kCFAllocatorMalloc;
	if (p != NULL) context[@"kCFAllocatorMalloc"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorMalloc inContext: context];
	p = (void*) &kCFAllocatorSystemDefault;
	if (p != NULL) context[@"kCFAllocatorSystemDefault"] = [JSValue valueWithObject: (__bridge id) kCFAllocatorSystemDefault inContext: context];
	p = (void*) &kCFCoreFoundationVersionNumber;
	if (p != NULL) context[@"kCFCoreFoundationVersionNumber"] = @(kCFCoreFoundationVersionNumber);
}
void load_CoreFoundation_CFBase_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
