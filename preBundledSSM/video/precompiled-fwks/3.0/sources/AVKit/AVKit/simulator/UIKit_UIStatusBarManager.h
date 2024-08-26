#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIStatusBarManager_symbols(JSContext*);
@protocol UIStatusBarManagerInstanceExports<JSExport>
@property (readonly,nonatomic) UIStatusBarStyle statusBarStyle;
@property (readonly,nonatomic) CGRect statusBarFrame;
@property (getter=isStatusBarHidden,readonly,nonatomic) BOOL statusBarHidden;
@end
@protocol UIStatusBarManagerClassExports<JSExport>
@end
@protocol UIWindowSceneStatusBarManagerCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) UIStatusBarManager * statusBarManager;
@end
@protocol UIWindowSceneStatusBarManagerCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop