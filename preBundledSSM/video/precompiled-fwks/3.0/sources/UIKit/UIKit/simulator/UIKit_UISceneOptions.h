#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UISceneOptions_symbols(JSContext*);
@protocol UISceneOpenExternalURLOptionsInstanceExports<JSExport>
@property (readwrite,nonatomic) BOOL universalLinksOnly;
@end
@protocol UISceneOpenExternalURLOptionsClassExports<JSExport>
@end
@protocol UISceneOpenURLOptionsInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL openInPlace;
@property (readonly,nonatomic) id annotation;
@property (readonly,nonatomic) NSString * sourceApplication;
@end
@protocol UISceneOpenURLOptionsClassExports<JSExport>
@end
@protocol UISceneDestructionRequestOptionsInstanceExports<JSExport>
@end
@protocol UISceneDestructionRequestOptionsClassExports<JSExport>
@end
@protocol UISceneConnectionOptionsInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSSet * URLContexts;
@property (readonly,copy,nonatomic) NSSet * userActivities;
@property (readonly,nonatomic) NSString * handoffUserActivityType;
@property (readonly,nonatomic) CKShareMetadata * cloudKitShareMetadata;
@property (readonly,nonatomic) NSString * sourceApplication;
@property (readonly,nonatomic) UNNotificationResponse * notificationResponse;
@property (readonly,nonatomic) UIApplicationShortcutItem * shortcutItem;
@end
@protocol UISceneConnectionOptionsClassExports<JSExport>
@end
@protocol UISceneActivationRequestOptionsInstanceExports<JSExport>
@property (readwrite,nonatomic,strong) UIScene * requestingScene;
@end
@protocol UISceneActivationRequestOptionsClassExports<JSExport>
@end
#pragma clang diagnostic pop