//
//  FormWidgetData.h
//  VM
//
//  Created by Shiva on 10/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScrollContainerModelWithNavigation.h"
//#import "LuaClosure.h"
#import "KonyInputAccessoryView.h"
#import "FlexScrollModelProtocol.h"

typedef enum 
{
    FormWidgetCacheKeyContentOffset = 2000,
    FormOffsetKeyHitPoint,
}FormWidgetCacheKey;

@interface FormModel : ScrollContainerModelWithNavigation<FlexScrollModelProtocol>
{
    KonyFormWidgetType  formType;
	BOOL                menuRenderer;
	BOOL                needAppLevelMenu;
	BOOL                enabledforidletimeout;		
	BOOL                NeedsIndicatorDuringPostShow;
	NSNumber			*FormTransparencyDuringPostShow;
	NSString			*prevformtitle;
    NSString*               appName;
    BOOL                footerOverlap;
    BOOL                headerOverlap;
    BOOL                retainScrollPosition;
    BOOL                backwardCompatibilityMode;
	float				spacing;
	NSNumber			*orientationmode;
    BOOL                scrollsToTop;

	NSArray				*menu;
    NSArray             *globalheaders;
    NSArray             *globalfooters;


	NSDictionary		*menuSkin;
	NSDictionary		*menuOnFocusSkin;
    NSDictionary        *inTransitionConfig;
    NSDictionary        *outTransitionConfig;
    NSDictionary        *appLevelWidgetConfig;
    
    NSMutableDictionary        *titleBarAttributes;
    

	NSString			*transitionDirection;
	NSString			*transitionEffect;
    
    NSString            *customStatusBarColor;
    NSString            *uniqueFormId;

	id                  preshow;
	id                  postshow;
	id                  onDestroy;
	id			onhide;
	id			masterDataLoad;
	id			transactionalDataLoad;
	id			onLeftTilt;
	id			onRightTilt;
	id			onorientationchange;
    id			preorientationchange;
    CallBack  *keyboardWillShowCallback;
    CallBack  *keyboardDidShowCallback;
    CallBack  *keyboardWillHideCallback;
    CallBack  *keyboardDidHideCallback;
    BOOL    enableOnScrollWidgetPositionForSubwidgets;
    BOOL                isFormIntialized;
    KonyInputAccessoryViewTypes inputAccessoryViewType;
    
    NSInteger   defaultBottomPadding;
    BOOL     bounces;
    BOOL enableDefaultAnimation;
    NSNumber *scrollDirection;
    BOOL extendToBounds;
    BOOL extendTop;
    BOOL extendBottom;
    
    BOOL extendTopEff;
    BOOL extendBottomEff;
    
    StatusBarStyleType statusBarStyle;
    
    BOOL enableScrolling;
    BOOL prefersStatusBarHidden;
}
@property(nonatomic,assign) BOOL animateContentOffset;
@property(nonatomic,assign) BOOL animateZoomScale;
@property(nonatomic,assign) BOOL animateZoomToRect;
@property(nonatomic,retain) NSDictionary *zoomToRect;

@property (nonatomic)           BOOL enableDefaultAnimation;
@property (nonatomic)           KonyFormWidgetType  formType;
@property (nonatomic)           BOOL				menuRenderer;
@property (nonatomic)           BOOL				scrollsToTop;
@property (nonatomic)           BOOL				needAppLevelMenu;
@property (nonatomic)           BOOL                    enabledforidletimeout;
@property (nonatomic)           BOOL                    NeedsIndicatorDuringPostShow;
@property (nonatomic, retain)	NSNumber*				FormTransparencyDuringPostShow;
@property (nonatomic, retain)	NSString*				prevformtitle;
@property (nonatomic)           BOOL                    footerOverlap;
@property (nonatomic)           BOOL                    headerOverlap;
@property (nonatomic)           BOOL                    backwardCompatibilityMode;
@property (nonatomic)           BOOL                    retainScrollPosition;
#if DEBUGINFO
@property (nonatomic)           BOOL                    formLoadedBeforeShow;
#endif
@property (nonatomic)			float					spacing;
@property (nonatomic, retain)	NSNumber*               orientationmode;

@property (nonatomic, retain)	NSArray*				menu;
@property (nonatomic, retain)	NSArray*				globalheaders;
@property (nonatomic, retain)	NSArray*				globalfooters;

@property (nonatomic, retain)   NSDictionary*           appLevelWidgetConfig;
@property (nonatomic, retain)	NSDictionary*			menuSkin;
@property (nonatomic, retain)	NSDictionary*			menuOnFocusSkin;
@property (nonatomic, retain)	NSDictionary*			inTransitionConfig;
@property (nonatomic, retain)	NSDictionary*			outTransitionConfig;

@property (nonatomic, retain)	NSString*				transitionDirection;
@property (nonatomic, retain)	NSString*				transitionEffect;
@property (nonatomic, retain)    NSString*                uniqueFormId;

@property (nonatomic, retain)	NSDictionary*			titleBarAttributes;

@property (nonatomic, retain)   NSString*               customStatusBarColor;
@property (nonatomic, readonly, retain)   NSString*               appName;

@property (nonatomic, retain)	id				preshow;
@property (nonatomic, retain)	id				postshow;
@property (nonatomic, retain)	id				onDestroy;
@property (nonatomic, retain)	id				onhide;
@property (nonatomic, retain)	id				masterDataLoad;
@property (nonatomic, retain)	id				transactionalDataLoad;
@property (nonatomic, retain)	id				onLeftTilt;
@property (nonatomic, retain)	id				onRightTilt;
@property (nonatomic, retain)	id				onorientationchange;
@property (nonatomic, retain)	id				preorientationchange;
@property (nonatomic,readwrite,retain) CallBack* keyboardWillShowCallback;
@property (nonatomic,readwrite,retain) CallBack* keyboardDidShowCallback;
@property (nonatomic,readwrite,retain) CallBack* keyboardWillHideCallback;
@property (nonatomic,readwrite,retain) CallBack* keyboardDidHideCallback;
@property (nonatomic, assign) KonyInputAccessoryViewTypes inputAccessoryViewType;
@property (nonatomic, assign) NSInteger         defaultBottomPadding;
@property (nonatomic, retain) NSDictionary* scrollingEvents;
@property (nonatomic)         BOOL     bounces;
@property (nonatomic)         BOOL     enableOnScrollWidgetPositionForSubwidgets;
@property (nonatomic) BOOL appMenuOverlap;
@property (nonatomic, retain)	NSNumber*       scrollDirection;
@property (nonatomic) BOOL extendTop;
@property (nonatomic) BOOL extendToBounds;
@property (nonatomic) BOOL extendBottom;
@property (nonatomic) BOOL requiresTopSafeAreaInset;
@property (nonatomic) BOOL requiresBottomSafeAreaInset;
@property (nonatomic) BOOL requiresLeftSafeAreaInset;
@property (nonatomic) BOOL requiresRightSafeAreaInset;
@property (nonatomic)           StatusBarStyleType statusBarStyle;
@property (nonatomic ,readwrite) BOOL translucenttitlebar;

@property (nonatomic)     BOOL extendTopEff;
@property (nonatomic)     BOOL extendBottomEff;

@property (nonatomic)     BOOL enableScrolling;
@property (nonatomic)     BOOL prefersStatusBarHidden;

@property (nonatomic) FlexLayoutDisplayUnit layoutUnitType;
//this property will be used by konymvc_sdk framework to differentiate between mvc and non mvc forms..
@property (nonatomic, retain) NSString *_konyControllerName;
@property (nonatomic, retain) NSString *_appName;

@property (nonatomic,strong) NSString *bgImageForNavBarDefault;
@property (nonatomic,strong) NSString *bgImageForNavBarCompact;
@property (nonatomic,strong) NSString *bgImageForNavBarDefaultPrompt;
@property (nonatomic,strong) NSString *bgImageForNavBarCompactPrompt;

@property (nonatomic,strong) NSNumber *titlePositionForNavBarDefault;
@property (nonatomic,strong) NSNumber *titlePositionForNavBarCompact;
@property (nonatomic,strong) NSNumber *titlePositionForNavBarDefaultPrompt;
@property (nonatomic,strong) NSNumber *titlePositionForNavBarCompactPrompt;


@property (nonatomic,strong) NSMutableArray *leftBarButtonItems;
@property (nonatomic,strong) NSMutableArray *rightBarButtonItems;
@property (nonatomic) BOOL hidesBackButton;
@property (nonatomic) BOOL animatesBackButton;
@property (nonatomic) BOOL animatesLeftBarButtonItems;
@property (nonatomic) BOOL animatesRightBarButtonItems;
@property (nonatomic) BOOL hidesNavigationBar;


@property (nonatomic,strong) NSMutableDictionary *leftBarButtonConfig;
@property (nonatomic,strong) NSMutableDictionary *rightBarButtonConfig;
-(id) init;
- (void) tryInitializeForm;
- (void) destroy;
-(BOOL) showHeaderInForm;
-(BOOL) showFooterInForm;

#pragma mark -
#pragma mark Methods for implementing IDE debugging

- (BOOL) isDebugReady;

@end
