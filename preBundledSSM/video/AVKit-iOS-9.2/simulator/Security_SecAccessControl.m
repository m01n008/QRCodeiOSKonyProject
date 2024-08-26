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
	context[@"kSecAccessControlUserPresence"] = @1L;
	context[@"kSecAccessControlTouchIDAny"] = @2L;
	context[@"kSecAccessControlTouchIDCurrentSet"] = @8L;
	context[@"kSecAccessControlDevicePasscode"] = @16L;
	context[@"kSecAccessControlOr"] = @16384L;
	context[@"kSecAccessControlAnd"] = @32768L;
	context[@"kSecAccessControlPrivateKeyUsage"] = @1073741824L;
	context[@"kSecAccessControlApplicationPassword"] = @-2147483648L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Security_SecAccessControl_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
