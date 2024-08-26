#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFStream)
+(JSValue*) valueWithCFStreamError: (CFStreamError) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"domain": @(s.domain),
		@"error": @(s.error),
	} inContext: context];
}
-(CFStreamError) toCFStreamError {
	return (CFStreamError) {
		(CFIndex) [self[@"domain"] toDouble],
		(SInt32) [self[@"error"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStreamStatusNotOpen"] = @0L;
	context[@"kCFStreamStatusOpening"] = @1L;
	context[@"kCFStreamStatusOpen"] = @2L;
	context[@"kCFStreamStatusReading"] = @3L;
	context[@"kCFStreamStatusWriting"] = @4L;
	context[@"kCFStreamStatusAtEnd"] = @5L;
	context[@"kCFStreamStatusClosed"] = @6L;
	context[@"kCFStreamStatusError"] = @7L;

	context[@"kCFStreamEventNone"] = @0UL;
	context[@"kCFStreamEventOpenCompleted"] = @1UL;
	context[@"kCFStreamEventHasBytesAvailable"] = @2UL;
	context[@"kCFStreamEventCanAcceptBytes"] = @4UL;
	context[@"kCFStreamEventErrorOccurred"] = @8UL;
	context[@"kCFStreamEventEndEncountered"] = @16UL;

	context[@"kCFStreamErrorDomainCustom"] = @-1L;
	context[@"kCFStreamErrorDomainPOSIX"] = @1L;
	context[@"kCFStreamErrorDomainMacOSStatus"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamPropertyFileCurrentOffset;
	if (p != NULL) context[@"kCFStreamPropertyFileCurrentOffset"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFileCurrentOffset inContext: context];
	p = (void*) &kCFStreamPropertySocketRemoteHostName;
	if (p != NULL) context[@"kCFStreamPropertySocketRemoteHostName"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemoteHostName inContext: context];
	p = (void*) &kCFStreamPropertySocketRemotePortNumber;
	if (p != NULL) context[@"kCFStreamPropertySocketRemotePortNumber"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemotePortNumber inContext: context];
	p = (void*) &kCFStreamPropertyAppendToFile;
	if (p != NULL) context[@"kCFStreamPropertyAppendToFile"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyAppendToFile inContext: context];
	p = (void*) &kCFStreamPropertyDataWritten;
	if (p != NULL) context[@"kCFStreamPropertyDataWritten"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyDataWritten inContext: context];
	p = (void*) &kCFStreamPropertySocketNativeHandle;
	if (p != NULL) context[@"kCFStreamPropertySocketNativeHandle"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketNativeHandle inContext: context];
}
void load_CoreFoundation_CFStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
