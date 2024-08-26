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
	context[@"kSecPaddingNone"] = @0U;
	context[@"kSecPaddingPKCS1"] = @1U;
	context[@"kSecPaddingOAEP"] = @2U;
	context[@"kSecPaddingSigRaw"] = @16384U;
	context[@"kSecPaddingPKCS1MD2"] = @32768U;
	context[@"kSecPaddingPKCS1MD5"] = @32769U;
	context[@"kSecPaddingPKCS1SHA1"] = @32770U;
	context[@"kSecPaddingPKCS1SHA224"] = @32771U;
	context[@"kSecPaddingPKCS1SHA256"] = @32772U;
	context[@"kSecPaddingPKCS1SHA384"] = @32773U;
	context[@"kSecPaddingPKCS1SHA512"] = @32774U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSecPublicKeyAttrs;
	if (p != NULL) context[@"kSecPublicKeyAttrs"] = [JSValue valueWithObject: (__bridge id) kSecPublicKeyAttrs inContext: context];
	p = (void*) &kSecPrivateKeyAttrs;
	if (p != NULL) context[@"kSecPrivateKeyAttrs"] = [JSValue valueWithObject: (__bridge id) kSecPrivateKeyAttrs inContext: context];
}
void load_Security_SecKey_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
