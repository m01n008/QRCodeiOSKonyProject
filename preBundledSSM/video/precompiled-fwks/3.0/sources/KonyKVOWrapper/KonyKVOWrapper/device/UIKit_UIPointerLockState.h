#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPointerLockState_symbols(JSContext*);
@protocol UIPointerLockStateInstanceExports<JSExport>
@property (getter=isLocked,readonly,nonatomic) BOOL locked;
@end
@protocol UIPointerLockStateClassExports<JSExport>
@end
@protocol UIScenePointerLockStateCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) UIPointerLockState * pointerLockState;
@end
@protocol UIScenePointerLockStateCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop