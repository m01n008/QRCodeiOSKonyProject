#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPointerInteraction_symbols(JSContext*);
@protocol UIPointerRegionRequestInstanceExports<JSExport>
@property (readonly,nonatomic) UIKeyModifierFlags modifiers;
@property (readonly,nonatomic) CGPoint location;
@end
@protocol UIPointerRegionRequestClassExports<JSExport>
@end
@protocol UIPointerInteractionInstanceExports<JSExport, UIInteractionInstanceExports_>
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (readonly,nonatomic,weak) id delegate;
-(void) invalidate;
JSExportAs(initWithDelegate,
-(id) jsinitWithDelegate: (id) delegate );
@end
@protocol UIPointerInteractionClassExports<JSExport, UIInteractionClassExports_>
@end
@protocol UIPointerInteractionAnimatingInstanceExports_<JSExport, NSObjectInstanceExports_>
JSExportAs(addCompletion,
-(void) jsaddCompletion: (JSValue *) completion );
JSExportAs(addAnimations,
-(void) jsaddAnimations: (JSValue *) animations );
@end
@protocol UIPointerInteractionAnimatingClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIPointerInteractionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) pointerInteraction: (UIPointerInteraction *) interaction willEnterRegion: (UIPointerRegion *) region animator: (id) animator ;
-(void) pointerInteraction: (UIPointerInteraction *) interaction willExitRegion: (UIPointerRegion *) region animator: (id) animator ;
-(UIPointerRegion *) pointerInteraction: (UIPointerInteraction *) interaction regionForRequest: (UIPointerRegionRequest *) request defaultRegion: (UIPointerRegion *) defaultRegion ;
-(UIPointerStyle *) pointerInteraction: (UIPointerInteraction *) interaction styleForRegion: (UIPointerRegion *) region ;
@end
@protocol UIPointerInteractionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop