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
	context[@"kCFSocketSuccess"] = @0L;
	context[@"kCFSocketError"] = @-1L;
	context[@"kCFSocketTimeout"] = @-2L;

	context[@"kCFSocketNoCallBack"] = @0UL;
	context[@"kCFSocketReadCallBack"] = @1UL;
	context[@"kCFSocketAcceptCallBack"] = @2UL;
	context[@"kCFSocketDataCallBack"] = @3UL;
	context[@"kCFSocketConnectCallBack"] = @4UL;
	context[@"kCFSocketWriteCallBack"] = @8UL;

	context[@"kCFSocketAutomaticallyReenableReadCallBack"] = @1UL;
	context[@"kCFSocketAutomaticallyReenableAcceptCallBack"] = @2UL;
	context[@"kCFSocketAutomaticallyReenableDataCallBack"] = @3UL;
	context[@"kCFSocketAutomaticallyReenableWriteCallBack"] = @8UL;
	context[@"kCFSocketLeaveErrors"] = @64UL;
	context[@"kCFSocketCloseOnInvalidate"] = @128UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFSocketCommandKey;
	if (p != NULL) context[@"kCFSocketCommandKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketCommandKey inContext: context];
	p = (void*) &kCFSocketResultKey;
	if (p != NULL) context[@"kCFSocketResultKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketResultKey inContext: context];
	p = (void*) &kCFSocketNameKey;
	if (p != NULL) context[@"kCFSocketNameKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketNameKey inContext: context];
	p = (void*) &kCFSocketErrorKey;
	if (p != NULL) context[@"kCFSocketErrorKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketErrorKey inContext: context];
	p = (void*) &kCFSocketValueKey;
	if (p != NULL) context[@"kCFSocketValueKey"] = [JSValue valueWithObject: (__bridge id) kCFSocketValueKey inContext: context];
	p = (void*) &kCFSocketRegisterCommand;
	if (p != NULL) context[@"kCFSocketRegisterCommand"] = [JSValue valueWithObject: (__bridge id) kCFSocketRegisterCommand inContext: context];
	p = (void*) &kCFSocketRetrieveCommand;
	if (p != NULL) context[@"kCFSocketRetrieveCommand"] = [JSValue valueWithObject: (__bridge id) kCFSocketRetrieveCommand inContext: context];
}
void load_CoreFoundation_CFSocket_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
