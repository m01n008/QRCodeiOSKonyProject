#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNNotificationResponse (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UNNotificationResponse class], @protocol(UNNotificationResponseInstanceExports));
	class_addProtocol([UNNotificationResponse class], @protocol(UNNotificationResponseClassExports));
	class_addProtocol([UNTextInputNotificationResponse class], @protocol(UNTextInputNotificationResponseInstanceExports));
	class_addProtocol([UNTextInputNotificationResponse class], @protocol(UNTextInputNotificationResponseClassExports));
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
	p = (void*) &UNNotificationDefaultActionIdentifier;
	if (p != NULL) context[@"UNNotificationDefaultActionIdentifier"] = UNNotificationDefaultActionIdentifier;
	p = (void*) &UNNotificationDismissActionIdentifier;
	if (p != NULL) context[@"UNNotificationDismissActionIdentifier"] = UNNotificationDismissActionIdentifier;
}
void load_UserNotifications_UNNotificationResponse_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
