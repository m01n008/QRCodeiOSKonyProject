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
	context[@"kCFFileSecurityClearOwner"] = @1UL;
	context[@"kCFFileSecurityClearGroup"] = @2UL;
	context[@"kCFFileSecurityClearMode"] = @4UL;
	context[@"kCFFileSecurityClearOwnerUUID"] = @8UL;
	context[@"kCFFileSecurityClearGroupUUID"] = @16UL;
	context[@"kCFFileSecurityClearAccessControlList"] = @32UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFFileSecurity_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
