#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIFocus_symbols(JSContext*);
@protocol UIFocusUpdateContextInstanceExports<JSExport>
@property (readonly,nonatomic,weak) UIView * nextFocusedView;
@property (readonly,assign,nonatomic) UIFocusHeading focusHeading;
@property (readonly,nonatomic,weak) UIView * previouslyFocusedView;
@end
@protocol UIFocusUpdateContextClassExports<JSExport>
@end
@protocol UIFocusGuideInstanceExports<JSExport>
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (nonatomic,weak) UIView * preferredFocusedView;
@end
@protocol UIFocusGuideClassExports<JSExport>
@end
@protocol UIFocusEnvironmentInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic,weak) UIView * preferredFocusedView;
-(void) updateFocusIfNeeded;
-(BOOL) shouldUpdateFocusInContext: (UIFocusUpdateContext *) context ;
-(void) didUpdateFocusInContext: (UIFocusUpdateContext *) context withAnimationCoordinator: (UIFocusAnimationCoordinator *) coordinator ;
-(void) setNeedsFocusUpdate;
@end
@protocol UIFocusEnvironmentClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop