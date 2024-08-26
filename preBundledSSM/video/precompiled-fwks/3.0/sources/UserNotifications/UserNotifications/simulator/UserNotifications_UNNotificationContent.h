#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationContent_symbols(JSContext*);
@protocol UNNotificationContentInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy,nonatomic) NSString * body;
@property (readonly,copy,nonatomic) UNNotificationSound * sound;
@property (readonly,copy,nonatomic) NSString * summaryArgument;
@property (readonly,copy,nonatomic) NSString * subtitle;
@property (readonly,copy,nonatomic) NSArray * attachments;
@property (readonly,copy,nonatomic) NSString * launchImageName;
@property (readonly,copy,nonatomic) NSString * threadIdentifier;
@property (readonly,copy,nonatomic) NSString * categoryIdentifier;
@property (readonly,assign,nonatomic) NSUInteger summaryArgumentCount;
@property (readonly,copy,nonatomic) NSDictionary * userInfo;
@property (readonly,copy,nonatomic) NSString * targetContentIdentifier;
@property (readonly,copy,nonatomic) NSString * title;
@property (readonly,copy,nonatomic) NSNumber * badge;
@end
@protocol UNNotificationContentClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol UNMutableNotificationContentInstanceExports<JSExport>
@property (copy,nonatomic) NSString * body;
@property (copy,nonatomic) UNNotificationSound * sound;
@property (copy,nonatomic) NSString * summaryArgument;
@property (copy,nonatomic) NSString * subtitle;
@property (copy,nonatomic) NSArray * attachments;
@property (copy,nonatomic) NSString * launchImageName;
@property (copy,nonatomic) NSString * threadIdentifier;
@property (copy,nonatomic) NSString * categoryIdentifier;
@property (assign,nonatomic) NSUInteger summaryArgumentCount;
@property (copy,nonatomic) NSDictionary * userInfo;
@property (copy,nonatomic) NSString * targetContentIdentifier;
@property (copy,nonatomic) NSString * title;
@property (copy,nonatomic) NSNumber * badge;
@end
@protocol UNMutableNotificationContentClassExports<JSExport>
@end
#pragma clang diagnostic pop