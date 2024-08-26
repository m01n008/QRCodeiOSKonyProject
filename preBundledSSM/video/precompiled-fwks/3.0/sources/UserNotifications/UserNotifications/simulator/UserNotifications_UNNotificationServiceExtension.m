#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNNotificationServiceExtension (Exports)
-(void) jsdidReceiveNotificationRequest: (UNNotificationRequest *) request withContentHandler: (JSValue *) contentHandler 
{
	void (^ contentHandler_)(UNNotificationContent * ) = nil;
	if (!contentHandler.isUndefined) {
		contentHandler_ = ^void(UNNotificationContent * arg0) {
			JSContext* __jsContext = contentHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, contentHandler, self, parameters);
		};
	}
	[self didReceiveNotificationRequest: request withContentHandler: contentHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([UNNotificationServiceExtension class], @protocol(UNNotificationServiceExtensionInstanceExports));
	class_addProtocol([UNNotificationServiceExtension class], @protocol(UNNotificationServiceExtensionClassExports));
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
void load_UserNotifications_UNNotificationServiceExtension_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
