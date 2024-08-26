#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNNotificationTrigger (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UNPushNotificationTrigger class], @protocol(UNPushNotificationTriggerInstanceExports));
	class_addProtocol([UNPushNotificationTrigger class], @protocol(UNPushNotificationTriggerClassExports));
	class_addProtocol([UNCalendarNotificationTrigger class], @protocol(UNCalendarNotificationTriggerInstanceExports));
	class_addProtocol([UNCalendarNotificationTrigger class], @protocol(UNCalendarNotificationTriggerClassExports));
	class_addProtocol([UNTimeIntervalNotificationTrigger class], @protocol(UNTimeIntervalNotificationTriggerInstanceExports));
	class_addProtocol([UNTimeIntervalNotificationTrigger class], @protocol(UNTimeIntervalNotificationTriggerClassExports));
	class_addProtocol([UNLocationNotificationTrigger class], @protocol(UNLocationNotificationTriggerInstanceExports));
	class_addProtocol([UNLocationNotificationTrigger class], @protocol(UNLocationNotificationTriggerClassExports));
	class_addProtocol([UNNotificationTrigger class], @protocol(UNNotificationTriggerInstanceExports));
	class_addProtocol([UNNotificationTrigger class], @protocol(UNNotificationTriggerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UserNotifications_UNNotificationTrigger_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
