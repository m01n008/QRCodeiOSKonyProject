#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationResponse_symbols(JSContext*);
@protocol UNNotificationResponseInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy,nonatomic) UNNotification * notification;
@property (readonly,copy,nonatomic) NSString * actionIdentifier;
@end
@protocol UNNotificationResponseClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol UNTextInputNotificationResponseInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSString * userText;
@end
@protocol UNTextInputNotificationResponseClassExports<JSExport>
@end
#pragma clang diagnostic pop