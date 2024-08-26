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
	context[@"kCFMessagePortSuccess"] = @0L;
	context[@"kCFMessagePortSendTimeout"] = @-1L;
	context[@"kCFMessagePortReceiveTimeout"] = @-2L;
	context[@"kCFMessagePortIsInvalid"] = @-3L;
	context[@"kCFMessagePortTransportError"] = @-4L;
	context[@"kCFMessagePortBecameInvalidError"] = @-5L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFMessagePort_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
