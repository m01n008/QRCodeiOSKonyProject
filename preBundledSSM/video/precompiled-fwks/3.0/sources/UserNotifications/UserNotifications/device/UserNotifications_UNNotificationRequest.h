#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationRequest_symbols(JSContext*);
@protocol UNNotificationRequestInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy,nonatomic) UNNotificationContent * content;
@property (readonly,copy,nonatomic) UNNotificationTrigger * trigger;
@property (readonly,copy,nonatomic) NSString * identifier;
@end
@protocol UNNotificationRequestClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) requestWithIdentifier: (NSString *) identifier content: (UNNotificationContent *) content trigger: (UNNotificationTrigger *) trigger ;
@end
#pragma clang diagnostic pop