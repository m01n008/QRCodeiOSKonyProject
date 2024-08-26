#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationCategory_symbols(JSContext*);
@protocol UNNotificationCategoryInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy,nonatomic) NSString * categorySummaryFormat;
@property (readonly,copy,nonatomic) NSArray * intentIdentifiers;
@property (readonly,copy,nonatomic) NSArray * actions;
@property (readonly,copy,nonatomic) NSString * identifier;
@property (readonly,nonatomic) UNNotificationCategoryOptions options;
@property (readonly,copy,nonatomic) NSString * hiddenPreviewsBodyPlaceholder;
@end
@protocol UNNotificationCategoryClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) categoryWithIdentifier: (NSString *) identifier actions: (NSArray *) actions intentIdentifiers: (NSArray *) intentIdentifiers hiddenPreviewsBodyPlaceholder: (NSString *) hiddenPreviewsBodyPlaceholder categorySummaryFormat: (NSString *) categorySummaryFormat options: (UNNotificationCategoryOptions) options ;
+(id) categoryWithIdentifier: (NSString *) identifier actions: (NSArray *) actions intentIdentifiers: (NSArray *) intentIdentifiers options: (UNNotificationCategoryOptions) options ;
+(id) categoryWithIdentifier: (NSString *) identifier actions: (NSArray *) actions intentIdentifiers: (NSArray *) intentIdentifiers hiddenPreviewsBodyPlaceholder: (NSString *) hiddenPreviewsBodyPlaceholder options: (UNNotificationCategoryOptions) options ;
@end
#pragma clang diagnostic pop