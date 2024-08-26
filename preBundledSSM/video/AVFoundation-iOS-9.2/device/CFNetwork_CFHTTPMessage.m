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
	p = (void*) &kCFHTTPVersion1_1;
	if (p != NULL) context[@"kCFHTTPVersion1_1"] = [JSValue valueWithObject: (__bridge id) kCFHTTPVersion1_1 inContext: context];
	p = (void*) &kCFHTTPVersion1_0;
	if (p != NULL) context[@"kCFHTTPVersion1_0"] = [JSValue valueWithObject: (__bridge id) kCFHTTPVersion1_0 inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeNegotiate2;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeNegotiate2"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeNegotiate2 inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeDigest;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeDigest"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeDigest inContext: context];
	p = (void*) &kCFHTTPVersion2_0;
	if (p != NULL) context[@"kCFHTTPVersion2_0"] = [JSValue valueWithObject: (__bridge id) kCFHTTPVersion2_0 inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeNTLM;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeNTLM"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeNTLM inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeNegotiate;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeNegotiate"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeNegotiate inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeXMobileMeAuthToken;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeXMobileMeAuthToken"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeXMobileMeAuthToken inContext: context];
	p = (void*) &kCFHTTPAuthenticationSchemeBasic;
	if (p != NULL) context[@"kCFHTTPAuthenticationSchemeBasic"] = [JSValue valueWithObject: (__bridge id) kCFHTTPAuthenticationSchemeBasic inContext: context];
}
void load_CFNetwork_CFHTTPMessage_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
