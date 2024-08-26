#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIWindowScene_symbols(JSContext*);
@protocol UIWindowSceneDestructionRequestOptionsInstanceExports<JSExport>
@property (readwrite,nonatomic) UIWindowSceneDismissalAnimation windowDismissalAnimation;
@end
@protocol UIWindowSceneDestructionRequestOptionsClassExports<JSExport>
@end
@protocol UIWindowSceneInstanceExports<JSExport>
@property (readonly,nonatomic) UITraitCollection * traitCollection;
@property (readonly,nonatomic) NSArray * windows;
@property (readonly,nonatomic) UIInterfaceOrientation interfaceOrientation;
@property (readonly,nonatomic) UIScreen * screen;
@property (readonly,nonatomic) id coordinateSpace;
@property (readonly,nonatomic) UISceneSizeRestrictions * sizeRestrictions;
@end
@protocol UIWindowSceneClassExports<JSExport>
@end
@protocol UISceneSizeRestrictionsInstanceExports<JSExport>
@property (assign,nonatomic) CGSize minimumSize;
@property (assign,nonatomic) CGSize maximumSize;
@end
@protocol UISceneSizeRestrictionsClassExports<JSExport>
@end
@protocol UIWindowSceneDelegateInstanceExports_<JSExport, UISceneDelegateInstanceExports_>
@property (nonatomic,strong) UIWindow * window;
JSExportAs(windowScenePerformActionForShortcutItemCompletionHandler,
-(void) jswindowScene: (UIWindowScene *) windowScene performActionForShortcutItem: (UIApplicationShortcutItem *) shortcutItem completionHandler: (JSValue *) completionHandler );
-(void) windowScene: (UIWindowScene *) windowScene userDidAcceptCloudKitShareWithMetadata: (CKShareMetadata *) cloudKitShareMetadata ;
-(void) windowScene: (UIWindowScene *) windowScene didUpdateCoordinateSpace: (id) previousCoordinateSpace interfaceOrientation: (UIInterfaceOrientation) previousInterfaceOrientation traitCollection: (UITraitCollection *) previousTraitCollection ;
@end
@protocol UIWindowSceneDelegateClassExports_<JSExport, UISceneDelegateClassExports_>
@end
#pragma clang diagnostic pop