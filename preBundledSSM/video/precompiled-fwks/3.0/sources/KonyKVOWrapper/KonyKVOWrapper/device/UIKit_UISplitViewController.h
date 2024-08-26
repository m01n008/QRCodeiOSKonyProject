#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UISplitViewController_symbols(JSContext*);
@protocol UISplitViewControllerInstanceExports<JSExport>
@property (nonatomic) UISplitViewControllerSplitBehavior preferredSplitBehavior;
@property (assign,nonatomic) CGFloat preferredPrimaryColumnWidthFraction;
@property (readonly,nonatomic) UISplitViewControllerSplitBehavior splitBehavior;
@property (copy,nonatomic) NSArray * viewControllers;
@property (readonly,nonatomic) UIBarButtonItem * displayModeButtonItem;
@property (nonatomic) UISplitViewControllerBackgroundStyle primaryBackgroundStyle;
@property (readonly,nonatomic) UISplitViewControllerStyle style;
@property (readonly,nonatomic) CGFloat primaryColumnWidth;
@property (assign,nonatomic) CGFloat maximumPrimaryColumnWidth;
@property (nonatomic,weak) id delegate;
@property (nonatomic) UISplitViewControllerPrimaryEdge primaryEdge;
@property (readonly,nonatomic) UISplitViewControllerDisplayMode displayMode;
@property (getter=isCollapsed,readonly,nonatomic) BOOL collapsed;
@property (assign,nonatomic) CGFloat preferredPrimaryColumnWidth;
@property (nonatomic) UISplitViewControllerDisplayMode preferredDisplayMode;
@property (readonly,nonatomic) CGFloat supplementaryColumnWidth;
@property (assign,nonatomic) CGFloat minimumPrimaryColumnWidth;
@property (nonatomic) BOOL showsSecondaryOnlyButton;
@property (assign,nonatomic) CGFloat maximumSupplementaryColumnWidth;
@property (assign,nonatomic) CGFloat minimumSupplementaryColumnWidth;
@property (assign,nonatomic) CGFloat preferredSupplementaryColumnWidthFraction;
@property (nonatomic) BOOL presentsWithGesture;
@property (assign,nonatomic) CGFloat preferredSupplementaryColumnWidth;
JSExportAs(initWithNibNameBundle,
-(id) jsinitWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil );
-(void) showDetailViewController: (UIViewController *) vc sender: (id) sender ;
-(__kindof UIViewController *) viewControllerForColumn: (UISplitViewControllerColumn) column ;
JSExportAs(initWithStyle,
-(id) jsinitWithStyle: (UISplitViewControllerStyle) style );
-(void) hideColumn: (UISplitViewControllerColumn) column ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(void) showColumn: (UISplitViewControllerColumn) column ;
-(void) showViewController: (UIViewController *) vc sender: (id) sender ;
-(void) setViewController: (UIViewController *) vc forColumn: (UISplitViewControllerColumn) column ;
@end
@protocol UISplitViewControllerClassExports<JSExport>
@end
@protocol UIViewControllerUISplitViewControllerCategoryInstanceExports<JSExport>
@property (readonly,nonatomic,strong) UISplitViewController * splitViewController;
-(UIViewController *) separateSecondaryViewControllerForSplitViewController: (UISplitViewController *) splitViewController ;
-(void) collapseSecondaryViewController: (UIViewController *) secondaryViewController forSplitViewController: (UISplitViewController *) splitViewController ;
@end
@protocol UIViewControllerUISplitViewControllerCategoryClassExports<JSExport>
@end
@protocol UISplitViewControllerDelegateInstanceExports_<JSExport>
-(UISplitViewControllerColumn) splitViewController: (UISplitViewController *) svc topColumnForCollapsingToProposedTopColumn: (UISplitViewControllerColumn) proposedTopColumn ;
-(void) splitViewController: (UISplitViewController *) svc willHideColumn: (UISplitViewControllerColumn) column ;
-(BOOL) splitViewController: (UISplitViewController *) splitViewController showDetailViewController: (UIViewController *) vc sender: (id) sender ;
-(void) splitViewControllerInteractivePresentationGestureWillBegin: (UISplitViewController *) svc ;
-(void) splitViewControllerDidCollapse: (UISplitViewController *) svc ;
-(void) splitViewController: (UISplitViewController *) svc willShowColumn: (UISplitViewControllerColumn) column ;
-(UIViewController *) primaryViewControllerForCollapsingSplitViewController: (UISplitViewController *) splitViewController ;
-(UIInterfaceOrientation) splitViewControllerPreferredInterfaceOrientationForPresentation: (UISplitViewController *) splitViewController ;
-(UIViewController *) splitViewController: (UISplitViewController *) splitViewController separateSecondaryViewControllerFromPrimaryViewController: (UIViewController *) primaryViewController ;
-(UISplitViewControllerDisplayMode) targetDisplayModeForActionInSplitViewController: (UISplitViewController *) svc ;
-(BOOL) splitViewController: (UISplitViewController *) splitViewController showViewController: (UIViewController *) vc sender: (id) sender ;
-(void) splitViewController: (UISplitViewController *) svc willShowViewController: (UIViewController *) aViewController invalidatingBarButtonItem: (UIBarButtonItem *) barButtonItem ;
-(void) splitViewControllerInteractivePresentationGestureDidEnd: (UISplitViewController *) svc ;
-(UIInterfaceOrientationMask) splitViewControllerSupportedInterfaceOrientations: (UISplitViewController *) splitViewController ;
-(UIViewController *) primaryViewControllerForExpandingSplitViewController: (UISplitViewController *) splitViewController ;
-(BOOL) splitViewController: (UISplitViewController *) splitViewController collapseSecondaryViewController: (UIViewController *) secondaryViewController ontoPrimaryViewController: (UIViewController *) primaryViewController ;
-(void) splitViewControllerDidExpand: (UISplitViewController *) svc ;
-(BOOL) splitViewController: (UISplitViewController *) svc shouldHideViewController: (UIViewController *) vc inOrientation: (UIInterfaceOrientation) orientation ;
-(void) splitViewController: (UISplitViewController *) svc willChangeToDisplayMode: (UISplitViewControllerDisplayMode) displayMode ;
-(void) splitViewController: (UISplitViewController *) svc willHideViewController: (UIViewController *) aViewController withBarButtonItem: (UIBarButtonItem *) barButtonItem forPopoverController: (UIPopoverController *) pc ;
-(void) splitViewController: (UISplitViewController *) svc popoverController: (UIPopoverController *) pc willPresentViewController: (UIViewController *) aViewController ;
-(UISplitViewControllerDisplayMode) splitViewController: (UISplitViewController *) svc displayModeForExpandingToProposedDisplayMode: (UISplitViewControllerDisplayMode) proposedDisplayMode ;
@end
@protocol UISplitViewControllerDelegateClassExports_<JSExport>
@end
#pragma clang diagnostic pop