#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNNotificationSettings (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UNNotificationSettings class], @protocol(UNNotificationSettingsInstanceExports));
	class_addProtocol([UNNotificationSettings class], @protocol(UNNotificationSettingsClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UNAuthorizationStatusNotDetermined"] = @0;
	context[@"UNAuthorizationStatusDenied"] = @1;
	context[@"UNAuthorizationStatusAuthorized"] = @2;
	context[@"UNAuthorizationStatusProvisional"] = @3;
	context[@"UNAuthorizationStatusEphemeral"] = @4;

	context[@"UNShowPreviewsSettingAlways"] = @0;
	context[@"UNShowPreviewsSettingWhenAuthenticated"] = @1;
	context[@"UNShowPreviewsSettingNever"] = @2;

	context[@"UNNotificationSettingNotSupported"] = @0;
	context[@"UNNotificationSettingDisabled"] = @1;
	context[@"UNNotificationSettingEnabled"] = @2;

	context[@"UNAlertStyleNone"] = @0;
	context[@"UNAlertStyleBanner"] = @1;
	context[@"UNAlertStyleAlert"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UserNotifications_UNNotificationSettings_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
