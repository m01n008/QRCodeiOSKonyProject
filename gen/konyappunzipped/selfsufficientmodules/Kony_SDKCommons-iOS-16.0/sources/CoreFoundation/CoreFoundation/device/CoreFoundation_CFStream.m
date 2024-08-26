#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
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
static void registerCFunctions(JSContext* context)
{
	context[@"CFReadStreamGetTypeID"] = ^CFTypeID() {
		return CFReadStreamGetTypeID();
	};
	context[@"CFWriteStreamGetTypeID"] = ^CFTypeID() {
		return CFWriteStreamGetTypeID();
	};
	context[@"CFWriteStreamCreateWithAllocatedBuffers"] = ^id(id arg0, id arg1) {
		return CFWriteStreamCreateWithAllocatedBuffers(arg0, arg1);
	};
	context[@"CFReadStreamCreateWithFile"] = ^id(id arg0, id arg1) {
		return CFReadStreamCreateWithFile(arg0, arg1);
	};
	context[@"CFWriteStreamCreateWithFile"] = ^id(id arg0, id arg1) {
		return CFWriteStreamCreateWithFile(arg0, arg1);
	};
	context[@"CFReadStreamGetStatus"] = ^CFStreamStatus(id arg0) {
		return CFReadStreamGetStatus(arg0);
	};
	context[@"CFWriteStreamGetStatus"] = ^CFStreamStatus(id arg0) {
		return CFWriteStreamGetStatus(arg0);
	};
	context[@"CFReadStreamCopyError"] = ^id(id arg0) {
		return CFReadStreamCopyError(arg0);
	};
	context[@"CFWriteStreamCopyError"] = ^id(id arg0) {
		return CFWriteStreamCopyError(arg0);
	};
	context[@"CFReadStreamOpen"] = ^Boolean(id arg0) {
		return CFReadStreamOpen(arg0);
	};
	context[@"CFWriteStreamOpen"] = ^Boolean(id arg0) {
		return CFWriteStreamOpen(arg0);
	};
	context[@"CFReadStreamClose"] = ^void(id arg0) {
		CFReadStreamClose(arg0);
	};
	context[@"CFWriteStreamClose"] = ^void(id arg0) {
		CFWriteStreamClose(arg0);
	};
	context[@"CFReadStreamHasBytesAvailable"] = ^Boolean(id arg0) {
		return CFReadStreamHasBytesAvailable(arg0);
	};
	context[@"CFWriteStreamCanAcceptBytes"] = ^Boolean(id arg0) {
		return CFWriteStreamCanAcceptBytes(arg0);
	};
	context[@"CFReadStreamCopyProperty"] = ^id(id arg0, id arg1) {
		return CFReadStreamCopyProperty(arg0, arg1);
	};
	context[@"CFWriteStreamCopyProperty"] = ^id(id arg0, id arg1) {
		return CFWriteStreamCopyProperty(arg0, arg1);
	};
	context[@"CFReadStreamSetProperty"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFReadStreamSetProperty(arg0, arg1, arg2);
	};
	context[@"CFWriteStreamSetProperty"] = ^Boolean(id arg0, id arg1, id arg2) {
		return CFWriteStreamSetProperty(arg0, arg1, arg2);
	};
	context[@"CFReadStreamScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFReadStreamScheduleWithRunLoop(arg0, arg1, arg2);
	};
	context[@"CFWriteStreamScheduleWithRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFWriteStreamScheduleWithRunLoop(arg0, arg1, arg2);
	};
	context[@"CFReadStreamUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFReadStreamUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFWriteStreamUnscheduleFromRunLoop"] = ^void(id arg0, id arg1, id arg2) {
		CFWriteStreamUnscheduleFromRunLoop(arg0, arg1, arg2);
	};
	context[@"CFReadStreamGetError"] = ^CFStreamError(id arg0) {
		return CFReadStreamGetError(arg0);
	};
	context[@"CFWriteStreamGetError"] = ^CFStreamError(id arg0) {
		return CFWriteStreamGetError(arg0);
	};
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
	p = (void*) &kCFStreamPropertyDataWritten;
	if (p != NULL) context[@"kCFStreamPropertyDataWritten"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyDataWritten inContext: context];
	p = (void*) &kCFStreamPropertyAppendToFile;
	if (p != NULL) context[@"kCFStreamPropertyAppendToFile"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyAppendToFile inContext: context];
	p = (void*) &kCFStreamPropertyFileCurrentOffset;
	if (p != NULL) context[@"kCFStreamPropertyFileCurrentOffset"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyFileCurrentOffset inContext: context];
	p = (void*) &kCFStreamPropertySocketNativeHandle;
	if (p != NULL) context[@"kCFStreamPropertySocketNativeHandle"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketNativeHandle inContext: context];
	p = (void*) &kCFStreamPropertySocketRemoteHostName;
	if (p != NULL) context[@"kCFStreamPropertySocketRemoteHostName"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemoteHostName inContext: context];
	p = (void*) &kCFStreamPropertySocketRemotePortNumber;
	if (p != NULL) context[@"kCFStreamPropertySocketRemotePortNumber"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketRemotePortNumber inContext: context];
	p = (void*) &kCFStreamErrorDomainSOCKS;
	if (p != NULL) context[@"kCFStreamErrorDomainSOCKS"] = @(kCFStreamErrorDomainSOCKS);
	p = (void*) &kCFStreamPropertySOCKSProxy;
	if (p != NULL) context[@"kCFStreamPropertySOCKSProxy"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSProxy inContext: context];
	p = (void*) &kCFStreamPropertySOCKSProxyHost;
	if (p != NULL) context[@"kCFStreamPropertySOCKSProxyHost"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSProxyHost inContext: context];
	p = (void*) &kCFStreamPropertySOCKSProxyPort;
	if (p != NULL) context[@"kCFStreamPropertySOCKSProxyPort"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSProxyPort inContext: context];
	p = (void*) &kCFStreamPropertySOCKSVersion;
	if (p != NULL) context[@"kCFStreamPropertySOCKSVersion"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSVersion inContext: context];
	p = (void*) &kCFStreamSocketSOCKSVersion4;
	if (p != NULL) context[@"kCFStreamSocketSOCKSVersion4"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSOCKSVersion4 inContext: context];
	p = (void*) &kCFStreamSocketSOCKSVersion5;
	if (p != NULL) context[@"kCFStreamSocketSOCKSVersion5"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSOCKSVersion5 inContext: context];
	p = (void*) &kCFStreamPropertySOCKSUser;
	if (p != NULL) context[@"kCFStreamPropertySOCKSUser"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSUser inContext: context];
	p = (void*) &kCFStreamPropertySOCKSPassword;
	if (p != NULL) context[@"kCFStreamPropertySOCKSPassword"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySOCKSPassword inContext: context];
	p = (void*) &kCFStreamErrorDomainSSL;
	if (p != NULL) context[@"kCFStreamErrorDomainSSL"] = @(kCFStreamErrorDomainSSL);
	p = (void*) &kCFStreamPropertySocketSecurityLevel;
	if (p != NULL) context[@"kCFStreamPropertySocketSecurityLevel"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertySocketSecurityLevel inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelNone;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelNone"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelNone inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelSSLv2;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelSSLv2"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelSSLv2 inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelSSLv3;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelSSLv3"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelSSLv3 inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelTLSv1;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelTLSv1"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelTLSv1 inContext: context];
	p = (void*) &kCFStreamSocketSecurityLevelNegotiatedSSL;
	if (p != NULL) context[@"kCFStreamSocketSecurityLevelNegotiatedSSL"] = [JSValue valueWithObject: (__bridge id) kCFStreamSocketSecurityLevelNegotiatedSSL inContext: context];
	p = (void*) &kCFStreamPropertyShouldCloseNativeSocket;
	if (p != NULL) context[@"kCFStreamPropertyShouldCloseNativeSocket"] = [JSValue valueWithObject: (__bridge id) kCFStreamPropertyShouldCloseNativeSocket inContext: context];
}
void load_CoreFoundation_CFStream_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
