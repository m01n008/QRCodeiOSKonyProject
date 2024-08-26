#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationSettings_symbols(JSContext*);
@protocol UNNotificationSettingsInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) UNNotificationSetting alertSetting;
@property (readonly,nonatomic) UNNotificationSetting notificationCenterSetting;
@property (readonly,nonatomic) UNNotificationSetting badgeSetting;
@property (readonly,nonatomic) UNAuthorizationStatus authorizationStatus;
@property (readonly,nonatomic) UNAlertStyle alertStyle;
@property (readonly,nonatomic) UNNotificationSetting criticalAlertSetting;
@property (readonly,nonatomic) BOOL providesAppNotificationSettings;
@property (readonly,nonatomic) UNShowPreviewsSetting showPreviewsSetting;
@property (readonly,nonatomic) UNNotificationSetting lockScreenSetting;
@property (readonly,nonatomic) UNNotificationSetting soundSetting;
@property (readonly,nonatomic) UNNotificationSetting announcementSetting;
@property (readonly,nonatomic) UNNotificationSetting carPlaySetting;
@end
@protocol UNNotificationSettingsClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop