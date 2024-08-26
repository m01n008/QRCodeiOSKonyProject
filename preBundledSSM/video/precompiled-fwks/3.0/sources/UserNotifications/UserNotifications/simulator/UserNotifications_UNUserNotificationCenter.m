#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNUserNotificationCenter (Exports)
-(void) jsgetNotificationSettingsWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(UNNotificationSettings * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(UNNotificationSettings * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getNotificationSettingsWithCompletionHandler: completionHandler_ ];
}
-(void) jsgetPendingNotificationRequestsWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray  * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getPendingNotificationRequestsWithCompletionHandler: completionHandler_ ];
}
-(void) jsrequestAuthorizationWithOptions: (UNAuthorizationOptions) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(BOOL, NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(BOOL arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self requestAuthorizationWithOptions: options completionHandler: completionHandler_ ];
}
-(void) jsgetNotificationCategoriesWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSSet  * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSSet * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getNotificationCategoriesWithCompletionHandler: completionHandler_ ];
}
-(void) jsgetDeliveredNotificationsWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray  * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getDeliveredNotificationsWithCompletionHandler: completionHandler_ ];
}
-(void) jsaddNotificationRequest: (UNNotificationRequest *) request withCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSError * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self addNotificationRequest: request withCompletionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([UNUserNotificationCenter class], @protocol(UNUserNotificationCenterInstanceExports));
	class_addProtocol([UNUserNotificationCenter class], @protocol(UNUserNotificationCenterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UNAuthorizationOptionBadge"] = @1UL;
	context[@"UNAuthorizationOptionSound"] = @2UL;
	context[@"UNAuthorizationOptionAlert"] = @4UL;
	context[@"UNAuthorizationOptionCarPlay"] = @8UL;
	context[@"UNAuthorizationOptionCriticalAlert"] = @16UL;
	context[@"UNAuthorizationOptionProvidesAppNotificationSettings"] = @32UL;
	context[@"UNAuthorizationOptionProvisional"] = @64UL;
	context[@"UNAuthorizationOptionAnnouncement"] = @128UL;

	context[@"UNNotificationPresentationOptionBadge"] = @1UL;
	context[@"UNNotificationPresentationOptionSound"] = @2UL;
	context[@"UNNotificationPresentationOptionAlert"] = @4UL;
	context[@"UNNotificationPresentationOptionList"] = @8UL;
	context[@"UNNotificationPresentationOptionBanner"] = @16UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UNAuthorizationOptionNone;
	if (p != NULL) context[@"UNAuthorizationOptionNone"] = @(UNAuthorizationOptionNone);
	p = (void*) &UNNotificationPresentationOptionNone;
	if (p != NULL) context[@"UNNotificationPresentationOptionNone"] = @(UNNotificationPresentationOptionNone);
}
void UserNotifications_UNUserNotificationCenterProtocols()
{
	(void)@protocol(UNUserNotificationCenterDelegate);
}
void load_UserNotifications_UNUserNotificationCenter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
