#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIUserNotificationsModules(JSContext* context)
{
	load_UserNotifications_UNNotificationResponse_symbols(context);
	load_UserNotifications_UNNotificationSettings_symbols(context);
	load_UserNotifications_UNNotificationTrigger_symbols(context);
	load_UserNotifications_UNNotificationServiceExtension_symbols(context);
	load_UserNotifications_UNNotificationContent_symbols(context);
	load_UserNotifications_UNNotificationSound_symbols(context);
	load_UserNotifications_UNNotificationCategory_symbols(context);
	load_UserNotifications_UNNotificationAction_symbols(context);
	load_UserNotifications_UNNotification_symbols(context);
	load_UserNotifications_UNNotificationAttachment_symbols(context);
	load_UserNotifications_UNNotificationRequest_symbols(context);
	load_UserNotifications_NSString_UserNotifications_symbols(context);
	load_UserNotifications_UNError_symbols(context);
	load_UserNotifications_UNUserNotificationCenter_symbols(context);
}

JSValue* extractNFIUserNotificationsStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
    
    return nil;
}

BOOL setNFIUserNotificationsStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
    
    return NO;
}

