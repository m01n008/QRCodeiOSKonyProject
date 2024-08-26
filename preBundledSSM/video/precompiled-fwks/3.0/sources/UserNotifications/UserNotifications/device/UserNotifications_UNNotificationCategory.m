#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNNotificationCategory (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UNNotificationCategory class], @protocol(UNNotificationCategoryInstanceExports));
	class_addProtocol([UNNotificationCategory class], @protocol(UNNotificationCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UNNotificationCategoryOptionCustomDismissAction"] = @1U;
	context[@"UNNotificationCategoryOptionAllowInCarPlay"] = @2U;
	context[@"UNNotificationCategoryOptionHiddenPreviewsShowTitle"] = @4U;
	context[@"UNNotificationCategoryOptionHiddenPreviewsShowSubtitle"] = @8U;
	context[@"UNNotificationCategoryOptionAllowAnnouncement"] = @16U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UNNotificationCategoryOptionNone;
	if (p != NULL) context[@"UNNotificationCategoryOptionNone"] = @(UNNotificationCategoryOptionNone);
}
void load_UserNotifications_UNNotificationCategory_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
