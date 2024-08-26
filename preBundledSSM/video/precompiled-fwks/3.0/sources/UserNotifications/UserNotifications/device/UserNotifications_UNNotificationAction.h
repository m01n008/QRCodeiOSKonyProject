#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationAction_symbols(JSContext*);
@protocol UNNotificationActionInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy,nonatomic) NSString * identifier;
@property (readonly,nonatomic) UNNotificationActionOptions options;
@property (readonly,copy,nonatomic) NSString * title;
@end
@protocol UNNotificationActionClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) actionWithIdentifier: (NSString *) identifier title: (NSString *) title options: (UNNotificationActionOptions) options ;
@end
@protocol UNTextInputNotificationActionInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSString * textInputPlaceholder;
@property (readonly,copy,nonatomic) NSString * textInputButtonTitle;
@end
@protocol UNTextInputNotificationActionClassExports<JSExport>
+(id) actionWithIdentifier: (NSString *) identifier title: (NSString *) title options: (UNNotificationActionOptions) options textInputButtonTitle: (NSString *) textInputButtonTitle textInputPlaceholder: (NSString *) textInputPlaceholder ;
@end
#pragma clang diagnostic pop