#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNNotificationSound_symbols(JSContext*);
@protocol UNNotificationSoundInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@end
@protocol UNNotificationSoundClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(UNNotificationSound *) defaultCriticalSound;
+(id) defaultCriticalSoundWithAudioVolume: (float) volume ;
+(id) soundNamed: (UNNotificationSoundName) name ;
+(id) criticalSoundNamed: (UNNotificationSoundName) name withAudioVolume: (float) volume ;
+(id) criticalSoundNamed: (UNNotificationSoundName) name ;
+(UNNotificationSound *) defaultSound;
@end
#pragma clang diagnostic pop