#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIFocusAnimationCoordinator_symbols(JSContext*);
@protocol UIFocusAnimationCoordinatorInstanceExports<JSExport>
JSExportAs(addCoordinatedAnimationsCompletion,
-(void) jsaddCoordinatedAnimations: (JSValue *) animations completion: (JSValue *) completion );
@end
@protocol UIFocusAnimationCoordinatorClassExports<JSExport>
@end
#pragma clang diagnostic pop