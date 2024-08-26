#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIViewControllerTransitioning_symbols(JSContext*);
@protocol UIPercentDrivenInteractiveTransitionInstanceExports<JSExport, UIViewControllerInteractiveTransitioningInstanceExports_>
@property (readonly) CGFloat duration;
@property (assign,nonatomic) UIViewAnimationCurve completionCurve;
@property (assign,nonatomic) CGFloat completionSpeed;
@property (readonly) CGFloat percentComplete;
-(void) updateInteractiveTransition: (CGFloat) percentComplete ;
-(void) finishInteractiveTransition;
-(void) cancelInteractiveTransition;
@end
@protocol UIPercentDrivenInteractiveTransitionClassExports<JSExport, UIViewControllerInteractiveTransitioningClassExports_>
@end
@protocol UIViewControllerTransitioningDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(id) interactionControllerForPresentation: (id) animator ;
-(id) interactionControllerForDismissal: (id) animator ;
-(id) animationControllerForDismissedController: (UIViewController *) dismissed ;
-(UIPresentationController *) presentationControllerForPresentedViewController: (UIViewController *) presented presentingViewController: (UIViewController *) presenting sourceViewController: (UIViewController *) source ;
-(id) animationControllerForPresentedController: (UIViewController *) presented presentingController: (UIViewController *) presenting sourceController: (UIViewController *) source ;
@end
@protocol UIViewControllerTransitioningDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIViewControllerInteractiveTransitioningInstanceExports_<JSExport, NSObjectInstanceExports_>
-(UIViewAnimationCurve) completionCurve;
-(void) startInteractiveTransition: (id) transitionContext ;
-(CGFloat) completionSpeed;
@end
@protocol UIViewControllerInteractiveTransitioningClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIViewControllerContextTransitioningInstanceExports_<JSExport, NSObjectInstanceExports_>
-(__kindof UIViewController *) viewControllerForKey: (NSString *) key ;
-(BOOL) isAnimated;
-(UIView *) containerView;
-(UIModalPresentationStyle) presentationStyle;
-(void) updateInteractiveTransition: (CGFloat) percentComplete ;
-(void) finishInteractiveTransition;
-(BOOL) isInteractive;
-(__kindof UIView *) viewForKey: (NSString *) key ;
-(CGRect) finalFrameForViewController: (UIViewController *) vc ;
-(void) cancelInteractiveTransition;
-(CGAffineTransform) targetTransform;
-(BOOL) transitionWasCancelled;
-(void) completeTransition: (BOOL) didComplete ;
JSExportAs(initialFrameForViewController,
-(CGRect) jsinitialFrameForViewController: (UIViewController *) vc );
@end
@protocol UIViewControllerContextTransitioningClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIViewControllerAnimatedTransitioningInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) animateTransition: (id) transitionContext ;
-(NSTimeInterval) transitionDuration: (id) transitionContext ;
-(void) animationEnded: (BOOL) transitionCompleted ;
@end
@protocol UIViewControllerAnimatedTransitioningClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop