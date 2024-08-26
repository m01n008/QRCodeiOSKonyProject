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
	context[@"errSecSuccess"] = @0L;
	context[@"errSecUnimplemented"] = @-4L;
	context[@"errSecIO"] = @-36L;
	context[@"errSecOpWr"] = @-49L;
	context[@"errSecParam"] = @-50L;
	context[@"errSecAllocate"] = @-108L;
	context[@"errSecUserCanceled"] = @-128L;
	context[@"errSecBadReq"] = @-909L;
	context[@"errSecInternalComponent"] = @-2070L;
	context[@"errSecNotAvailable"] = @-25291L;
	context[@"errSecDuplicateItem"] = @-25299L;
	context[@"errSecItemNotFound"] = @-25300L;
	context[@"errSecInteractionNotAllowed"] = @-25308L;
	context[@"errSecDecode"] = @-26275L;
	context[@"errSecAuthFailed"] = @-25293L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_SecBase_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
