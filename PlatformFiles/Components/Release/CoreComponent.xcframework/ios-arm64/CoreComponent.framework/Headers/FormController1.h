//
//  FormController.h
//  VM
//
//  Created by KH206 on 07/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FormModel.h"
#import "KonyCustomNavigationProtocol.h"
#import "KonyTitleBarButton.h"
#import "KonyLayoutContainerView.h"
#import "NetworkStatusBar.h"
#import "KonyNotificationCenter.h"
#import "NativeContainerWidget.h"
#import "NativeContainerModel.h"

#define TITLE_TEXT_ATTRIBUTES @"titleTextAttributes"
typedef enum
{
    FORM_BEING_PRESENTED = 0,
    FORM_PRESENTED = 1,
    FORM_BEING_HIDDEN = 2,
    FORM_HIDDEN = 3
}FORM_STATE;

@interface FormController1 : UIViewController <KonyCustomNavigationProtocol>
{
    FormModel *formModel;
    NSString *formID;
    Widget    *rootWidget;
    BOOL      titleBarNeedsUpdate;
    KonyLayoutContainerView *rootView;
    NetworkStatusBar *networkStatusBar;
    
    NSMutableArray   *modalViewDelegates;
    
    BOOL restrictViewWillAppear;
    FORM_STATE formState;
    UIDeviceOrientation _lastOrientation;
    BOOL   isObserverRemoved;
}

@property (nonatomic, readonly) FormModel* formModel;
@property (nonatomic, readonly) NSString *formID;
@property (nonatomic, readonly) Widget*    rootWidget;
@property (nonatomic) FORM_STATE formState;
@property (nonatomic) UIDeviceOrientation lastOrientation;
@property (nonatomic, readwrite) BOOL playsCustomAnimation;
@property (nonatomic) BOOL isNavBarAttributesPresent;

- (id) initWithFormModel: (FormModel*) model;
- (void)updateFormModelOnRecreationOfMVCForm:(FormModel *)newFormModel;
- (id) customTitleView:(UIInterfaceOrientation)interfaceOrientation;
- (Widget*) createWidgetHierarchy;
- (Widget*) createWidgetsFromModel: (WidgetModel*) model;
- (void)killAssociatedFormModel;

- (void) presentModalViewController:(UIViewController *)modalViewController animated:(BOOL)animated  withDelegate: (id) delegate;

- (KonyTitleBarButton*) createTitleBarButtonWithButtonType:(KonyTitleBarButtonType) type andValue:(NSString*) value withSkin: (KonyTitleBarSkin*) titleBarSkin leftPointing : (BOOL) leftPointing;
- (void) executeSelector: (SEL) selector OnWidget: (Widget*) widget withValues : (NSArray*) values recursive: (BOOL) isRecursive;

- (void) netWorkCallStarted;
- (void) dismissCancelNetworkPopup;
-(void) refreshFormController:(BOOL) forceLayout_;
- (NSString*) getCustomStatusBarColor;
- (void) updateCustomStatusBarWithColor:(NSString *) color;
- (void) updateCustomStatusBarFrame;
- (void) removeCustomStatusBar;

-(void) removeNativeContainerFromChildViewControllers:(NativeContainerModel*) model;
-(void) removeAllNativeContainerFromChildViewControllers;

    
@end

@interface DummyViewController : UIViewController{

    NSNumber*               orientationmode;
}
@property (nonatomic, retain)                   NSNumber*   orientationmode;
@property (nonatomic, getter=isStatusBarHidden) BOOL        prefersStatusBarHiddenKony;

@end
