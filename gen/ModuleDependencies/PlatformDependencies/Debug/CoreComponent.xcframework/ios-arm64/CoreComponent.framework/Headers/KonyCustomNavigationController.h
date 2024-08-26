//
//  KonyNavigationController.h
//  VM
//
//  Created by KH206 on 08/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyCustomNavigationProtocol.h"
#import "FormModel.h"


//Navigation Controller Changed Notification  Related Constants
#define NAVCONTROLLERCHANGEDNOTIFICATION @"navcontrollerchanged"
#define NAVCONTROLLERCHANGETYPE @"navcontrollerchangeDict"
#define NAVCONTROLLERCHANGE_OLDFORM @"oldform"
#define NAVCONTROLLERCHANGE_NEWFORM @"newform"

//TitleBarAttributes

#define TITLE_BAR_ATTR_NAVIGATION_BAR_HIDDEN @"navigationBarHidden"
#define TITLE_BAR_ATTR_TRANSLUCENT @"translucent"
#define TITLE_BAR_ATTR_PROMPT @"prompt"
#define TITLE_BAR_ATTR_TINT_COLOR @"tintColor"
#define TITLE_BAR_ATTR_SHADOW_IMG @"shadowImage"
#define TITLE_BAR_ATTR_BAR_STYLE @"barStyle"
#define TITLE_BAR_ATTR_BACK_INDICATOR_IMG @"backIndicatorImage"
#define TITLE_BAR_ATTR_BACK_INDIACATOR_TRANSITION_MASK_IMG @"backIndicatorTransitionMaskImage"
#define TITLE_BAR_ATTR_HIDES_BACK_BTN @"hidesBackButton"
#define TITLE_BAR_ATTR_SUPPLEMENT_BACK_BTN @"leftItemsSupplementBackButton"
#define TITLE_BAR_ATTR_BACK_BAR_BUTTONITEM @"backBarButtonItem"
#define TITLE_BAR_ATTR_LEFT_BAR_BUTTONITEMS @"leftBarButtonItems"
#define TITLE_BAR_ATTR_RIGHT_BAR_BUTTONITEMS @"rightBarButtonItems"
#define TITLE_BAR_ATTR_TITLE_VIEW @"titleView"
#define TITLE_BAR_ATTR_EXTENDED_VIEW @"extendedView"

#define BACK_BUTTON_VIEW @12321

typedef enum { appMenuToNonAppMenu, nonAppMenuToAppMenu} NavControllerChangeType;

@protocol ViewControllerTransitionDelegate

- (void) willMoveToViewController: (UIViewController*) viewController;
- (void) didMoveToViewController:(UIViewController*) viewController;

@end

@interface KonyNavigationTransitionAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@end

@interface KonyCustomNavigationController : UINavigationController <UINavigationControllerDelegate>
{
    NSString *backgroundImageName;
    id<ViewControllerTransitionDelegate> viewTransitionDelegate; 
}

@property (nonatomic, retain) id<ViewControllerTransitionDelegate> viewTransitionDelegate;
@property (nonatomic, retain) NSString *backgroundImageName;

- (void)willShowKonyViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)didShowKonyViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)executeDefaultLeftButtonAction;
- (void)refreshNavigationController;
- (void)setNavigationBarCustomLeftViewForViewController:(UIViewController<KonyCustomNavigationProtocol> *)viewController;
- (void)dismissPresentedViewControllerAnimated:(BOOL)animated;
- (NSMutableArray *) getBarButtonItems:(NSMutableArray *) barButtonItemProxies;
- (FormModel *)getPreviousFormModel;
- (void) updateNavigationBarForViewControllerFor73andAbove: (UIViewController *)viewController;
- (void) showOrHideNavigationBar:(UIViewController *)viewController;


- (void) updateTitleBarSkinToNavigationBar:(UIViewController *)viewController;
- (void) setBgImageForNavbarDefault:(UIViewController *)viewController;
- (void) setBgImageForNavbarCompact:(UIViewController *)viewController;
- (void) setBgImageForNavbarCompactPrompt:(UIViewController *)viewController;
- (void) setBgImageForNavbarDefaultPrompt:(UIViewController *)viewController;



- (void) setLeftBarButtonsToNavigationBar:(UIViewController *)viewController;
- (void) setRightBarButtonsToNavigationBar:(UIViewController *)viewController;
- (void) setHidesBackButtonToNavigationBar:(UIViewController *)viewController;

- (void) setTitleBarPositionToNavigationBar:(UIViewController *)viewController;


@end

