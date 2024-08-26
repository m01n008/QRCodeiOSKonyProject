#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPresentationController_symbols(JSContext*);
@protocol UIPresentationControllerInstanceExports<JSExport, UIAppearanceContainerInstanceExports_, UITraitEnvironmentInstanceExports_, UIContentContainerInstanceExports_, UIFocusEnvironmentInstanceExports_>
@property (readonly,nonatomic,strong) UIViewController * presentingViewController;
@property (readonly,nonatomic) UIModalPresentationStyle presentationStyle;
@property (copy,nonatomic) UITraitCollection * overrideTraitCollection;
@property (readonly,nonatomic,strong) UIViewController * presentedViewController;
@property (nonatomic,weak) id delegate;
@property (readonly,nonatomic,strong) UIView * containerView;
-(void) dismissalTransitionDidEnd: (BOOL) completed ;
-(void) containerViewWillLayoutSubviews;
-(UIModalPresentationStyle) adaptivePresentationStyle;
-(void) containerViewDidLayoutSubviews;
-(UIView *) presentedView;
-(void) presentationTransitionDidEnd: (BOOL) completed ;
-(void) presentationTransitionWillBegin;
-(UIModalPresentationStyle) adaptivePresentationStyleForTraitCollection: (UITraitCollection *) traitCollection ;
-(BOOL) shouldPresentInFullscreen;
JSExportAs(initWithPresentedViewControllerPresentingViewController,
-(id) jsinitWithPresentedViewController: (UIViewController *) presentedViewController presentingViewController: (UIViewController *) presentingViewController );
-(void) dismissalTransitionWillBegin;
-(BOOL) shouldRemovePresentersView;
-(CGRect) frameOfPresentedViewInContainerView;
@end
@protocol UIPresentationControllerClassExports<JSExport, UIAppearanceContainerClassExports_, UITraitEnvironmentClassExports_, UIContentContainerClassExports_, UIFocusEnvironmentClassExports_>
@end
@protocol UIAdaptivePresentationControllerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) presentationController: (UIPresentationController *) presentationController willPresentWithAdaptiveStyle: (UIModalPresentationStyle) style transitionCoordinator: (id) transitionCoordinator ;
-(UIViewController *) presentationController: (UIPresentationController *) controller viewControllerForAdaptivePresentationStyle: (UIModalPresentationStyle) style ;
-(UIModalPresentationStyle) adaptivePresentationStyleForPresentationController: (UIPresentationController *) controller traitCollection: (UITraitCollection *) traitCollection ;
-(UIModalPresentationStyle) adaptivePresentationStyleForPresentationController: (UIPresentationController *) controller ;
@end
@protocol UIAdaptivePresentationControllerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop