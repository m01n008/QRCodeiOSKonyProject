//
//  KonyApplicationContext.h
//  VM
//
//  Created by KH206 on 19/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyIdleTimer.h"
#import "Widget.h"
#import "ContainerWidget.h"
#import "CachedDictionary.h"
#import "ContainerModel.h"
#import "KonyApplicationGlobalHeaderFooters.h"
#import "RootContainerWidget.h"
#import "FnModuleInfo.h"

#define KonySIPDidFrameChangeNotification @"KonySIPDidFrameChangeNotification"

@interface KonyApplicationContext : NSObject
{
    KonyIdleTimer *idleTimer;
    CachedDictionary *imageCache;
    NSMutableDictionary *globalHash;
    UIPickerView *pickerView;
    BOOL  isBackwardCompatibilityMode;
    KonyApplicationGlobalHeaderFooters *globalHeaderFooters;
    BOOL showPreShowPostShowOnDeviceBack;//setApplicationBehaviors API inputs.
    BOOL retainsSpaceOnHide;    //setApplicationBehaviors API inputs.
    BOOL isPopupModel;        //setApplicationBehaviors API inputs.
    BOOL marginsIncludedInWidgetContainerWeight;        //setApplicationBehaviors API inputs.
    BOOL isCompositeApp;
    BOOL enableNSURLSession;
    BOOL separateChildAppData;
    BOOL enableChangeTextSizeFromAccessibility;
    KonyFontTextStyle fontTextStyle;
    BOOL allowMultiLinetitle;
    BOOL hideInputViewOnOrientationChange;
    BOOL enableSplashScreen;
    KonyBlurEffect blurEffectStyleInBackground;
    NSMutableDictionary *formList;
    CGFloat keyboardHeight;
    BOOL isBlockingCall;
    AppLaunchModeType appLaunchMode;
    AppLaunchModeInternalType internalAppLaunchMode;
    BOOL languageContextInitialized;
	BOOL startupFormHandled;
	id startupForm;
    NSString *deeplinkForm;
	CallBack *preAppInitEventHandler;
	CallBack *initializeEventHandler;
	CallBack *postAppInitEventHandler;
	CallBack *appserviceEventHandler;
	CallBack *showStartupFormEventHandler;
    BOOL appInitialized;
    BOOL isEmailProcessed;
    CheckBoxSelectionImageAlignment checkBoxSelectionImageAlignment;
    BOOL respectImageSizeForAlignment;
    FnModuleInfo* functionalModulesInfo;
    NSUInteger APILevel;
    BOOL isSoftKeyboardCurrentlyShown;
    NSString *appStatusBarColor;
    BOOL fileExcludeFromBackup;
    NSMutableDictionary *namespaceClassAndUserWidgetNameDictForUserWidget;
    NSString *JSUserCurrentNamespace;
    NSString *JSUserCurrentClassname;
    BOOL isI18nLayoutConfigEnabled;
    NSDictionary *localeLayoutConfig;
    UIInterfaceOrientation fromInterfaceOrientation;
    BOOL triggerActiveForegoundCallback;
    BOOL enableNavigationBarRecording;
    BOOL enableActionSheetRecording;
}

@property (nonatomic, retain) KonyIdleTimer* idleTimer;
@property (readwrite, retain) CachedDictionary *imageCache;
@property (nonatomic, retain) NSMutableDictionary *globalHash;
@property (nonatomic, retain) UIPickerView *pickerView;
@property (readwrite, assign)  BOOL  isBackwardCompatibilityMode;
@property (nonatomic, readonly)  KonyApplicationGlobalHeaderFooters *globalHeaderFooters;
@property (nonatomic, readwrite) BOOL showPreShowPostShowOnDeviceBack;
@property (nonatomic, readwrite) BOOL retainsSpaceOnHide;
@property (nonatomic, readwrite) BOOL isPopupModel;
@property (nonatomic, readwrite) BOOL isCompositeApp;
@property (nonatomic, readwrite) BOOL enableIntegralsInLayout;
@property (nonatomic, readwrite) BOOL defaultRemoteNotificationCallbackBehaviour;
@property (nonatomic, readwrite) BOOL respectShadowDirection;
@property (nonatomic, readwrite) BOOL allowMultiLinetitle;
@property (nonatomic, readwrite) BOOL hideInputViewOnOrientationChange;
@property (nonatomic, readwrite) BOOL enableSplashScreen;
@property (nonatomic, readwrite) KonyBlurEffect blurEffectStyleInBackground;
@property (nonatomic, readwrite) BOOL prefersHomeIndicatorAutoHidden;
@property (nonatomic, readwrite) BOOL marginsIncludedInWidgetContainerWeight;
@property (nonatomic, readwrite) BOOL enableNSURLSession;
@property (nonatomic, readwrite) BOOL separateChildAppData;
@property (nonatomic, readwrite) BOOL enableNavigationBarRecording;
@property (nonatomic, readwrite) BOOL enableActionSheetRecording;
@property (nonatomic, readwrite) KonyFontTextStyle fontTextStyle;
@property (nonatomic, readwrite) BOOL enableChangeTextSizeFromAccessibility;
@property (nonatomic, readonly) NSMutableDictionary *formList;
@property (nonatomic,assign) CGFloat keyboardHeight;
@property (nonatomic,assign) BOOL isBlockingCall;
@property (nonatomic,assign) BOOL isEmailProcessed;
@property (readwrite) CheckBoxSelectionImageAlignment checkBoxSelectionImageAlignment;
@property (nonatomic,assign)  BOOL useDefaultTextboxPaddingSet; // defaults to YES.
@property (nonatomic,assign)  BOOL useDefaultGroupWidgetPaddingSet; // defaults to YES.
@property (nonatomic, readwrite) NSUInteger APILevel;
@property (nonatomic, readwrite) BOOL fileExcludeFromBackup;//defaults to NO.
@property (nonatomic, readwrite) NSNumber *fontScaleFactor;
@property (nonatomic, readwrite) BOOL isI18nLayoutConfigEnabled;
@property (nonatomic, readwrite) NSDictionary *localeLayoutConfig;


@property (nonatomic,readwrite) BOOL respectImageSizeForAlignment;
@property (nonatomic,weak) UIImageView* backgroundScreenSaverView;
@property (nonatomic,weak) UIVisualEffectView* backgroundScreenBlurredView;
@property (nonatomic, retain) NSString *appStatusBarColor; //Application Status Bar Color

@property (nonatomic) AppLaunchModeType appLaunchMode;
@property (nonatomic) AppLaunchModeInternalType internalAppLaunchMode;
@property (nonatomic, retain) NSDictionary* launchOptions;
@property (nonatomic, retain) NSString* activityType;
@property (nonatomic) BOOL startupFormHandled;
@property (nonatomic) BOOL languageContextInitialized;
@property (nonatomic, readwrite) BOOL appInitialized;
@property (nonatomic,retain) FnModuleInfo* functionalModulesInfo;
#if DEBUGINFO
@property (nonatomic) NSMutableDictionary *AllWidgetsForXml;
@property (nonatomic) int countOfWidget;
@property (nonatomic) BOOL enableRuntimeXMLGeneration;
@property (nonatomic) BOOL xmlGenModeAuto;
#endif

//This property is used to launch onforeground/onActive callback when app launches for the first time.
@property (readwrite, nonatomic) BOOL triggerActiveForegoundCallback;

@property (nonatomic, retain) id startupForm;

/*
 this property holds the form identifier returned from appService or postAppInit call
 */
@property (nonatomic, retain) NSString *deeplinkForm;


@property (nonatomic, retain) CallBack *preAppInitEventHandler;
@property (nonatomic, retain) CallBack *initializeEventHandler;
@property (nonatomic, retain) CallBack *postAppInitEventHandler;
@property (nonatomic, retain) CallBack *appserviceEventHandler;
@property (nonatomic, retain) CallBack *showStartupFormEventHandler;
@property (nonatomic, assign) BOOL isSoftKeyboardCurrentlyShown;

//This dictionary holds the flexLayoutDefault values for the widgets...
@property (nonatomic, retain) NSMutableDictionary *flexLayoutDefaultValues;

//This property holds application level default values..
@property (nonatomic, retain) NSMutableDictionary *appLevelPropertyDictionary;
@property (nonatomic, retain) NSMutableArray<Widget *> *windowWidgets;

@property (nonatomic, assign) UIInterfaceOrientation fromInterfaceOrientation;

@property (nonatomic, assign) BOOL enableLoggerFramework;
@property (nonatomic, assign) KonyDismissSIPInCallbacksBehaviour dismissSIP;

@property (nonatomic, retain) Widget *currentAppHeader;
@property (nonatomic, retain) Widget *currentAppFooter;
@property (nonatomic, retain) FlexLayoutContainer *currentHeaderFlex;
@property (nonatomic, retain) FlexLayoutContainer *currentFooterFlex;

+ (KonyApplicationContext*) sharedContext;

- (RootContainerWidget*) getRootWidgetFor:(Widget*) aWidget;
- (ContainerModel*) getRootWidgetModelFor:(WidgetModel*) aWidgetModel;

- (void) addAppLevelWidget: (NSDictionary*) arguments;
- (RootContainerWidget*) getActiveRootWidget;
- (ContainerModel*) getActiveRootWidgetModel;

- (void)addNamespace:(NSString *)namespace classname:(NSString *)classname masterName:(NSString *)masterName;
- (NSString *)getUserWidgetNameForNamespaceAndClass:(NSString *)namespaceClass;
- (BOOL)isRegisteredNamespace:(NSString *)namespace classname:(NSString *)classname;

- (void)setJSUserCurrentNamespace:(NSString *)namespace classname:(NSString *)classname;
- (NSString *)getJSUserCurrentNamespace;
- (NSString *)getJSUserCurrentClassname;

- (void) doTransientLayoutFor:(WidgetModel*) aWidgetModel;
- (void) applyShadowOffsetX:(CGFloat) shadowOffsetX shadowOffsetY:(CGFloat) shadowOffsetY onLayer:(CALayer*) layer;
- (id)getRootContainerModelFor:(WidgetModel*)aWidgetModel;

- (BOOL) isCurrentAppHeaderSameAsPrevious;
- (BOOL) isCurrentAppFooterSameAsPrevious;
- (void) updateCurrentAppLevelHeader: (Widget*) currentHeader;
- (void) updateCurrentAppLevelFooter: (Widget*) currentFooter;
- (Widget*) getCurrentAppHeader;
- (Widget*) getCurrentAppFooter;

@end
