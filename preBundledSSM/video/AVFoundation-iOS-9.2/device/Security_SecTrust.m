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
	context[@"kSecTrustResultInvalid"] = @0;
	context[@"kSecTrustResultProceed"] = @1;
	context[@"kSecTrustResultConfirm"] = @2;
	context[@"kSecTrustResultDeny"] = @3;
	context[@"kSecTrustResultUnspecified"] = @4;
	context[@"kSecTrustResultRecoverableTrustFailure"] = @5;
	context[@"kSecTrustResultFatalTrustFailure"] = @6;
	context[@"kSecTrustResultOtherError"] = @7;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kSecTrustExtendedValidation;
	if (p != NULL) context[@"kSecTrustExtendedValidation"] = [JSValue valueWithObject: (__bridge id) kSecTrustExtendedValidation inContext: context];
	p = (void*) &kSecPropertyTypeError;
	if (p != NULL) context[@"kSecPropertyTypeError"] = [JSValue valueWithObject: (__bridge id) kSecPropertyTypeError inContext: context];
	p = (void*) &kSecTrustOrganizationName;
	if (p != NULL) context[@"kSecTrustOrganizationName"] = [JSValue valueWithObject: (__bridge id) kSecTrustOrganizationName inContext: context];
	p = (void*) &kSecPropertyTypeTitle;
	if (p != NULL) context[@"kSecPropertyTypeTitle"] = [JSValue valueWithObject: (__bridge id) kSecPropertyTypeTitle inContext: context];
	p = (void*) &kSecTrustResultValue;
	if (p != NULL) context[@"kSecTrustResultValue"] = [JSValue valueWithObject: (__bridge id) kSecTrustResultValue inContext: context];
	p = (void*) &kSecTrustRevocationValidUntilDate;
	if (p != NULL) context[@"kSecTrustRevocationValidUntilDate"] = [JSValue valueWithObject: (__bridge id) kSecTrustRevocationValidUntilDate inContext: context];
	p = (void*) &kSecTrustEvaluationDate;
	if (p != NULL) context[@"kSecTrustEvaluationDate"] = [JSValue valueWithObject: (__bridge id) kSecTrustEvaluationDate inContext: context];
	p = (void*) &kSecTrustCertificateTransparency;
	if (p != NULL) context[@"kSecTrustCertificateTransparency"] = [JSValue valueWithObject: (__bridge id) kSecTrustCertificateTransparency inContext: context];
	p = (void*) &kSecTrustRevocationChecked;
	if (p != NULL) context[@"kSecTrustRevocationChecked"] = [JSValue valueWithObject: (__bridge id) kSecTrustRevocationChecked inContext: context];
}
void load_Security_SecTrust_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
