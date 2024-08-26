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
	context[@"kCFNetServicesErrorUnknown"] = @-72000;
	context[@"kCFNetServicesErrorCollision"] = @-72001;
	context[@"kCFNetServicesErrorNotFound"] = @-72002;
	context[@"kCFNetServicesErrorInProgress"] = @-72003;
	context[@"kCFNetServicesErrorBadArgument"] = @-72004;
	context[@"kCFNetServicesErrorCancel"] = @-72005;
	context[@"kCFNetServicesErrorInvalid"] = @-72006;
	context[@"kCFNetServicesErrorTimeout"] = @-72007;

	context[@"kCFNetServiceMonitorTXT"] = @1;

	context[@"kCFNetServiceFlagNoAutoRename"] = @1UL;

	context[@"kCFNetServiceFlagMoreComing"] = @1UL;
	context[@"kCFNetServiceFlagIsDomain"] = @2UL;
	context[@"kCFNetServiceFlagIsDefault"] = @4UL;
	context[@"kCFNetServiceFlagIsRegistrationDomain"] = @4UL;
	context[@"kCFNetServiceFlagRemove"] = @8UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamErrorDomainNetServices;
	if (p != NULL) context[@"kCFStreamErrorDomainNetServices"] = @(kCFStreamErrorDomainNetServices);
	p = (void*) &kCFStreamErrorDomainMach;
	if (p != NULL) context[@"kCFStreamErrorDomainMach"] = @(kCFStreamErrorDomainMach);
}
void load_CFNetwork_CFNetServices_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
