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
	context[@"UNAuthorizationStatusNotDetermined"] = @0L;
	context[@"UNAuthorizationStatusDenied"] = @1L;
	context[@"UNAuthorizationStatusAuthorized"] = @2L;
	context[@"UNAuthorizationStatusProvisional"] = @3L;
	context[@"UNAuthorizationStatusEphemeral"] = @4L;

	context[@"UNShowPreviewsSettingAlways"] = @0L;
	context[@"UNShowPreviewsSettingWhenAuthenticated"] = @1L;
	context[@"UNShowPreviewsSettingNever"] = @2L;

	context[@"UNNotificationSettingNotSupported"] = @0L;
	context[@"UNNotificationSettingDisabled"] = @1L;
	context[@"UNNotificationSettingEnabled"] = @2L;

	context[@"UNAlertStyleNone"] = @0L;
	context[@"UNAlertStyleBanner"] = @1L;
	context[@"UNAlertStyleAlert"] = @2L;

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
