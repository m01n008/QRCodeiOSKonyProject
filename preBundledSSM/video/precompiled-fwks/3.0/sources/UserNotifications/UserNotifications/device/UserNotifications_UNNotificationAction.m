#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNNotificationAction (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UNNotificationAction class], @protocol(UNNotificationActionInstanceExports));
	class_addProtocol([UNNotificationAction class], @protocol(UNNotificationActionClassExports));
	class_addProtocol([UNTextInputNotificationAction class], @protocol(UNTextInputNotificationActionInstanceExports));
	class_addProtocol([UNTextInputNotificationAction class], @protocol(UNTextInputNotificationActionClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UNNotificationActionOptionAuthenticationRequired"] = @1U;
	context[@"UNNotificationActionOptionDestructive"] = @2U;
	context[@"UNNotificationActionOptionForeground"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UNNotificationActionOptionNone;
	if (p != NULL) context[@"UNNotificationActionOptionNone"] = @(UNNotificationActionOptionNone);
}
void load_UserNotifications_UNNotificationAction_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
