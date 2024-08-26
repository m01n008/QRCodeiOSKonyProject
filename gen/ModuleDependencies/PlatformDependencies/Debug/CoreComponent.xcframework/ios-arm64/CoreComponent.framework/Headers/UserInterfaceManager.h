//
//  UserInterfaceManager.h
//  VM
//
//  Created by KH206 on 05/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//
#import "KonyManager.h"
#import <Foundation/Foundation.h>
#import "FormModel.h"
#import "FormController1.h"
#import "KonyCustomNavigationController.h"
#import "AppMenuObservingProtocol.h"
#import "KonyAppMenuController.h"
#import "AlertManager.h"
#import "LoadingScreen.h"
#import "KonyTouchDownGestureRecognizer.h"

@interface KonyUIWindow : UIWindow
{
	
}

+ (KonyUIWindow *) sharedKonyWindow;
-(WidgetDisableIndicator*)isLoadingIndicatorActive;

@end

@interface UserInterfaceManager : KonyManager <AppMenuObservingProtocol, ViewControllerTransitionDelegate, UIGestureRecognizerDelegate>
{
    
    KonyCustomNavigationController *currentNavigationController;
    UIViewController *konyRootViewController;
    UIViewController *appMenuController;
    BOOL reloadAppMenu;
    
    
@private
    KonyUIWindow *window;
    NSMutableArray *activeForms;
    KonyCustomNavigationController *navigationController;
    AlertManager *alertManager;
    BOOL appMenuUpdated;
    BOOL rootViewInteractionState;
	NSTimeInterval lastTouchTimeStamp;
    
    FormModel* currentForm;
    FormModel* previousForm;
    
    BOOL isDefaultAnimationsEnabled;
    BOOL layoutInProgress;
    //needs for validating the implementation of invokePreshowPostShowEventsOnDeviceBack , used in KonyCustomNavigationController and RootContainerWidget ..
    BOOL backButtonPressed;
    
    // Used for mapping the transition directions wrt to orientation
    NSArray *directionMappings;
    NSMutableDictionary *cameraOverlayInfoDict;
    
    KonyTouchDownGestureRecognizer *touchGesture;
}

@property (nonatomic, readonly) UIViewController *appMenuController;
@property (nonatomic, readonly) KonyUIWindow *window;
@property (nonatomic, readonly) NSMutableArray *activeForms;
@property (nonatomic, readonly) NSMutableArray *formsToUnload;
@property (readwrite, assign) NSTimeInterval lastTouchTimeStamp;
@property (readwrite) BOOL isDefaultAnimationsEnabled;
@property (nonatomic, readonly) UIViewController* konyRootViewController;
@property (nonatomic, readwrite) BOOL layoutInProgress;
@property (nonatomic, readwrite) BOOL backButtonPressed;
@property (nonatomic, readonly) NSArray *directionMappings;
@property (nonatomic, readwrite) BOOL isCameraInAction;
@property (atomic,retain)    NSMutableDictionary *cameraOverlayInfoDict;
@property (nonatomic, readonly) KonyCustomNavigationController *currentNavigationController;
@property (nonatomic, retain) KonyTouchDownGestureRecognizer *touchGesture;
@property (nonatomic, retain, readwrite) NSMutableArray *showFormOpQueue;
@property (nonatomic, readwrite, retain) FormModel *formBeingShown;
@property (nonatomic) UIDeviceOrientation currentDeviceOrientation;
@property (nonatomic) UIDeviceOrientation actualDeviceOrientation;


-(void)setRootViewUserInteraction:(BOOL)userInteractionEnabled;
-(void)exchangeLoadingScreenOnController:(UIViewController*)rootVC;
- (void) initializeUI;
- (void) resetWindowRootViewController;
- (void) showForm: (FormModel*) formModel;
- (void) showAlert:(AlertModel*) aAlertModel;
- (void) dismissAlert:(AlertModel*) aAlertModel;
- (void) showLoadingScreenView: (LoadingScreen*) loadingScreen;
- (void) dismissAllAlerts;
- (FormController1*) getActiveFormController:(FormModel *)formModel;
- (FormController1*) getActiveFormControllerWithID:(NSString*)formID;
- (FormModel*) getCurrentForm;
- (FormModel*) getPreviousForm;
- (Widget*) getWidgetForGivenModel: (WidgetModel*) wModel;
- (void) refreshUserInterface;
-(void) reloadSkinsForWidget: (Widget*) widget;
-(void) refreshSkinsForAllWidgets;
-(void) refreshCurrentForm:(BOOL) forceLayout_;
- (void) cleanupUnusedForms;
// method for cleaning the resources related to AVVideoPlayer
-(void) executeCleanUp;

- (void) setTransitionFromFormController: (FormController1*) fromController toFormController: (FormController1*) toController underNavigationController: (KonyCustomNavigationController*) navController;
-(void) setTransitions: (UIView*) fromForm toForm: (UIView*) toForm window: (UIWindow*) aWindow withTransitionEffect:(NSString*) transitionEffect withTransitionDirection:(NSString*) transitionDirection transitionDuration:(float) duration transitionCurve:(NSString*) curve;
- (void) removeTransitions: (UIView*) fromForm toForm: (UIView*) toForm window: (UIWindow*) window;
- (NSString*) mapTransitionEffect: (NSString*) ideTransitionEffect;
- (NSString*) mapTransitionSubeffect: (NSString*) ideTransitionDirection;
- (NSString*) getTransitionEffectType: (NSString*) ideTransitionEffect;
- (void) applyCATransitionEffect: (NSString*) CATransitionEffect subEffect: (NSString*) subEffect onView: (UIView*) onView transitionDuration:(float) duration transitionCurve:(NSString*) curve identifier:(NSString*) viewType;
- (void) applyUIViewTransitionEffect: (NSString*) ideTransitionEffect subEffect: (NSString*) subEffect onView: (UIView*) onView transitionDuration:(float) duration transitionCurve:(NSString*) curve;
- (void) applyCustomTransitionEffect: (NSString*) customTransitionEffect subEffect: (NSString*) subEffect onView: (UIView*) onView;
- (void) applyCustomTransitionAnimationEffect: (NSDictionary*) animDict ofView: (UIView*) ofView onContainer: (UIView*) container toForm:(UIView*) toForm transitionDuration:(float) duration transitionCurve:(NSString*) curve;
// Block User Interaction for navigationController view
- (void) blockUserInteractionForNavigationView:(BOOL) blocking;

// Block User Interaction for appMenuNavigationController view
- (void) blockUserInteractionForAppMenuView:(BOOL) blocking;

// To rotate the loading view as per the current form's orientation
- (void) reOrientLoadingView;
- (void) reOrientLoadingViewToOrientation: (UIInterfaceOrientation) orientation;

- (void) presentLoadingScreenView:(UIView *) loadingView withBlocking:(BOOL) blocking;
- (void) dismissLoadingScreenViewWithTag:(NSInteger) loadingScreenViewTag;

- (void) presentModalViewControllerOnCurrentFormController:(UIViewController *)modalViewController animated:(BOOL)animated;
- (void) presentModalViewControllerOnNavigationController:(UIViewController *)modalViewController animated:(BOOL)animated;
- (void) dismissActiveModalViewControllerAnimated: (NSNumber*) animate;

-(BOOL) isWidgetAddedToGlobalHeader:(WidgetModel*) aModel;
-(BOOL) isWidgetAddedToGlobalFooter:(WidgetModel*) aModel;
-(UIView*) getWindow;


-(void) intimateViewDidAppear:(FormController1*) frmController;
-(void) intimateViewDidDisappear:(FormController1*) frmController;
- (UIDeviceOrientation) getCurrentDeviceOrientation;
-(void) unloadForm:(FormModel*)form;

-(UIView*)getCameraOverlayFormView;
- (UIDeviceOrientation) getCurrentDeviceOrientation;
- (UIInterfaceOrientation) getApplicationOrientation;
-(void) unloadForm:(FormModel*)form;


-(void)updateWindowBackgroundWithCurrentForm;
-(void)updateWindowBackgroundWithSkin:(id)skin;
-(void)resetWindowBackgroundColor;
-(void)layoutModalController;

-(void) tryDismissActiveSIPForObject:(id) obj withOption:(NSDictionary*)options;
-(void) handleNetworkCallStarted;
-(void) handleNetworkCallCompleted;
- (void) showFormAnimationCompleted;
-(FormController1*) getCurrentFormController;
-(id) getActiveViewControllerForWidgetModel:(WidgetModel*) widgetModel_;
@end
