#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationTrigger_symbols(JSContext*);
@protocol UNPushNotificationTriggerInstanceExports<JSExport>
@end
@protocol UNPushNotificationTriggerClassExports<JSExport>
@end
@protocol UNCalendarNotificationTriggerInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSDateComponents * dateComponents;
-(NSDate *) nextTriggerDate;
@end
@protocol UNCalendarNotificationTriggerClassExports<JSExport>
+(id) triggerWithDateMatchingComponents: (NSDateComponents *) dateComponents repeats: (BOOL) repeats ;
@end
@protocol UNTimeIntervalNotificationTriggerInstanceExports<JSExport>
@property (readonly,nonatomic) NSTimeInterval timeInterval;
-(NSDate *) nextTriggerDate;
@end
@protocol UNTimeIntervalNotificationTriggerClassExports<JSExport>
+(id) triggerWithTimeInterval: (NSTimeInterval) timeInterval repeats: (BOOL) repeats ;
@end
@protocol UNLocationNotificationTriggerInstanceExports<JSExport>
@property (readonly,copy,nonatomic) CLRegion * region;
@end
@protocol UNLocationNotificationTriggerClassExports<JSExport>
+(id) triggerWithRegion: (CLRegion *) region repeats: (BOOL) repeats ;
@end
@protocol UNNotificationTriggerInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) BOOL repeats;
@end
@protocol UNNotificationTriggerClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop