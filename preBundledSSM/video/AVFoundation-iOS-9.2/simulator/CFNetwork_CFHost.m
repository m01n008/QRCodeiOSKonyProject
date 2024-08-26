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
	context[@"kCFHostAddresses"] = @0;
	context[@"kCFHostNames"] = @1;
	context[@"kCFHostReachability"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStreamErrorDomainNetDB;
	if (p != NULL) context[@"kCFStreamErrorDomainNetDB"] = @(kCFStreamErrorDomainNetDB);
	p = (void*) &kCFStreamErrorDomainSystemConfiguration;
	if (p != NULL) context[@"kCFStreamErrorDomainSystemConfiguration"] = @(kCFStreamErrorDomainSystemConfiguration);
}
void load_CFNetwork_CFHost_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
