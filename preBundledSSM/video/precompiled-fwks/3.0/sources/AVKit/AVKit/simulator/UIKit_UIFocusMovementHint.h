#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIFocusMovementHint_symbols(JSContext*);
@protocol UIFocusMovementHintInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) CATransform3D interactionTransform;
@property (readonly,nonatomic) CATransform3D perspectiveTransform;
@property (readonly,nonatomic) CGVector translation;
@property (readonly,nonatomic) CGVector rotation;
@property (readonly,nonatomic) CGVector movementDirection;
@end
@protocol UIFocusMovementHintClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop