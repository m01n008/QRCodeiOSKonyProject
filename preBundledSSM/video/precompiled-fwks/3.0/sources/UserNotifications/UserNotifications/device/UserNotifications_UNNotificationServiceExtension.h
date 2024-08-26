#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationServiceExtension_symbols(JSContext*);
@protocol UNNotificationServiceExtensionInstanceExports<JSExport>
JSExportAs(didReceiveNotificationRequestWithContentHandler,
-(void) jsdidReceiveNotificationRequest: (UNNotificationRequest *) request withContentHandler: (JSValue *) contentHandler );
-(void) serviceExtensionTimeWillExpire;
@end
@protocol UNNotificationServiceExtensionClassExports<JSExport>
@end
#pragma clang diagnostic pop