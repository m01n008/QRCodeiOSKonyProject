#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIViewControllerTransitionCoordinator_symbols(JSContext*);
@protocol UIViewControllerUIViewControllerTransitionCoordinatorCategoryInstanceExports<JSExport>
-(id) transitionCoordinator;
@end
@protocol UIViewControllerUIViewControllerTransitionCoordinatorCategoryClassExports<JSExport>
@end
@protocol UIViewControllerTransitionCoordinatorContextInstanceExports_<JSExport, NSObjectInstanceExports_>
-(__kindof UIViewController *) viewControllerForKey: (NSString *) key ;
-(BOOL) isAnimated;
-(BOOL) jsinitiallyInteractive;
-(UIModalPresentationStyle) presentationStyle;
-(__kindof UIView *) viewForKey: (NSString *) key ;
-(BOOL) isInteractive;
-(BOOL) isCancelled;
-(UIViewAnimationCurve) completionCurve;
-(CGFloat) percentComplete;
-(CGAffineTransform) targetTransform;
-(UIView *) containerView;
-(CGFloat) completionVelocity;
-(NSTimeInterval) transitionDuration;
@end
@protocol UIViewControllerTransitionCoordinatorContextClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIViewControllerTransitionCoordinatorInstanceExports_<JSExport, UIViewControllerTransitionCoordinatorContextInstanceExports_>
JSExportAs(animateAlongsideTransitionCompletion,
-(BOOL) jsanimateAlongsideTransition: (JSValue *) animation completion: (JSValue *) completion );
JSExportAs(notifyWhenInteractionEndsUsingBlock,
-(void) jsnotifyWhenInteractionEndsUsingBlock: (JSValue *) handler );
JSExportAs(animateAlongsideTransitionInViewAnimationCompletion,
-(BOOL) jsanimateAlongsideTransitionInView: (UIView *) view animation: (JSValue *) animation completion: (JSValue *) completion );
@end
@protocol UIViewControllerTransitionCoordinatorClassExports_<JSExport, UIViewControllerTransitionCoordinatorContextClassExports_>
@end
#pragma clang diagnostic pop