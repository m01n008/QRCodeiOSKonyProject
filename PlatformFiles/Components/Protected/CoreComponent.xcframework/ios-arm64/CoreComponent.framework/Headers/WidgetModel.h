//
//  WidgetData.h
//  VM
//
//  Created by Shiva on 09/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"
#import "KonyConstants.h"
#import "SkinModel.h"
#import "BaseProxy.h"
#import "CallBackListenerProtocol.h"
#import "BaseModel.h"

#import "TransformDataModel.h"
#import "KeyFrameAnimationModel.h"

#pragma mark -
#pragma mark Private Constants

#pragma mark -
#pragma mark WidgetModel
@class LayoutModel;
@class Widget;
@interface WidgetModel : BaseModel <NSCopying, CallBackListenerProtocol> {
    
	NSString				*widgetID;
	KonyWidgetType			widgetType;
	NSString                *skinIdentifier;    /**< Skin identifier corresponding to normal skin   */
	
	BOOL			visible;
	BOOL			enabled;
    BOOL            needsLayoutChangedNotification;
    
    LayoutModel     *layoutModel;
	WidgetModel __weak    *parentWidget;
	
	BaseProxy __weak		*proxyObject;
    NSMutableArray*  konyGestures;
    NSMutableDictionary *info;
    NSDictionary    *configKeyEntries;

    NSMutableDictionary *widgetCache;
    NSNumber            *needsBadge;
    NSMutableArray      *badgeConfig;
    NSMutableDictionary *accessibilityConfig;
    NSMutableDictionary *widgetSwipeMove;
    NSMutableDictionary * privateStateDict;
    NSDictionary        *animationConfig;
    NSDictionary        *defaultAnimationConfig;
   //layoutAnimations is same as defaultAnimationConfig(implemented for CITI) ... this new variable came into existence as part of specking
    NSDictionary        *layoutAnimations;
    int                widIdx;
    BOOL                markedForRemoval;
    BOOL isChildOfUserWidget;
    
    void *objectRef;
    NSObject *lockObject;
    NSUInteger protectCount;

    TransformDataModel *transformDataModel;
    NSDictionary *anchorPoint;
    id backgroundColor;
    NSString *borderColor;
    NSString *fontColor;
    NSString *fontFamily;
    id fontSize;
    NSString *backgroundImage;
    NSNumber *borderWidth;
    NSNumber *cornerRadius;
    NSNumber *shadowRadius;
    NSString *shadowColor;
    NSNumber *shadowOpacity;
    NSDictionary *shadowOffset;
    
    NSString *textShadowColor;
    NSNumber *textShadowRadius;
    NSDictionary *textShadowOffset;
    NSNumber *borderStyle;
    NSDictionary *borderColorGradient;
    NSDictionary *focusStateSkinProperties;
    NSDictionary *backgroundColorTwoStepGradient;
    NSDictionary *backgroundColorMultiStepGradient;
    
    //accessibilityOrderMode tracks the accessibility mode set by the user
    AccessibilityOrderMode accessibilityOrderMode;
    
    //accessibilityOrderModeEffective denotes the effective accessibility mode for the widget after considering the fallback to appropriate parent
    AccessibilityOrderMode accessibilityOrderModeEffective;
    
    NSMutableDictionary *segmentRelatedCache;
    //blur related
    NSDictionary   *blur;
    NSMutableArray *advancedHaptics;
    BOOL enableHapticFeedback;
}

#pragma mark Properties
@property (nonatomic, retain)   NSMutableArray *    activeWidgetFocusData;
@property (nonatomic, retain)   NSString*			widgetID;
//Stores dataMapKey of a widget which is mentioned segment widgetdatamap
@property (nonatomic, retain)   NSString*            widgetDataMapKey;
@property (nonatomic)			KonyWidgetType		widgetType;

@property (nonatomic, retain)	NSString*          skinIdentifier;

@property (nonatomic)			BOOL				visible;
@property (nonatomic)           BOOL                isChildOfUserWidget;
@property (nonatomic)           BOOL                needsLayoutChangedNotification;
@property (nonatomic)			BOOL				enabled;
@property (nonatomic, retain)   LayoutModel*        layoutModel;
@property (nonatomic, weak)	WidgetModel*		parentWidget;
@property (nonatomic, weak)	BaseProxy*			proxyObject;
@property (nonatomic, strong) Class proxyObjectClass;
@property (nonatomic, readonly,retain)              NSMutableArray						*konyGestures;
@property (nonatomic, retain)   NSNumber            *needsBadge;
@property (nonatomic, retain)   NSMutableArray      *badgeConfig;
@property (nonatomic, retain)   NSMutableDictionary *info;
@property (nonatomic, retain)   NSDictionary        *configKeyEntries;
@property (nonatomic, retain)   NSMutableDictionary *widgetSwipeMove;
@property (nonatomic, retain)   NSMutableDictionary *accessibilityConfig;
@property (nonatomic, retain)   NSMutableDictionary * privateStateDict;
@property (nonatomic, retain)   NSDictionary        *animationConfig;
@property (nonatomic, retain)   NSDictionary        *defaultAnimationConfig;
@property (nonatomic, retain)   NSDictionary        *layoutAnimations;
@property (nonatomic)           int                widIdx;
@property (nonatomic,retain)    CallBack            *onDrag;
@property (nonatomic,retain)    CallBack            *onScrollWidgetPosition;
@property (nonatomic,retain)    CallBack            *onTouchStart;
@property (nonatomic,retain)    CallBack            *onTouchMove;
@property (nonatomic,retain)    CallBack            *onTouchEnd;
@property (nonatomic, readwrite, assign) BOOL highlightOnParentFocus;
@property (nonatomic, retain)   NSNumber            *opacity;

@property (nonatomic, readwrite, retain) NSDictionary   *blur;
@property (nonatomic, readonly) BOOL retainFlexPositionProperties;
@property (nonatomic, readonly) BOOL retainContentAlignment;
@property (nonatomic, readwrite) BOOL isFlexPositionPropertiesMirrored;
@property (nonatomic, readwrite) BOOL isContentAlignmentMirrored;

#if DEBUGINFO
@property (nonatomic, readwrite) NSMutableDictionary *touchEventsTime;
@property (nonatomic) NSMutableArray *variableLefts;
@property (nonatomic) NSMutableArray *variableTops;
@property (nonatomic) NSMutableArray *variableHeights;
@property (nonatomic) NSMutableArray *variableWidths;
@property (nonatomic) BOOL visibilityChanged;
#endif

@property (nonatomic, retain) TransformDataModel *transformDataModel;
@property (nonatomic, retain) NSDictionary *anchorPoint;
@property (nonatomic, readwrite, retain) id backgroundColor;
@property (nonatomic, readwrite, retain) NSString *borderColor;
@property (nonatomic, readwrite, retain) NSString *fontColor;
@property (nonatomic, readwrite, retain) NSString *fontFamily;
@property (nonatomic, readwrite, retain) id fontSize;
@property (nonatomic, readwrite, retain) NSString *textShadowColor;
@property (nonatomic, readwrite, retain) NSNumber *textShadowRadius;
@property (nonatomic, readwrite, retain) NSDictionary *textShadowOffset;
@property (nonatomic, readwrite, retain) NSNumber *borderStyle;
@property (nonatomic, readwrite, retain) NSDictionary *borderColorGradient;
@property (nonatomic, readwrite, retain) NSDictionary *focusStateSkinProperties;
@property (nonatomic, readwrite, retain) NSDictionary *backgroundColorTwoStepGradient;
@property (nonatomic, readwrite, retain) NSDictionary *backgroundColorMultiStepGradient;
@property (nonatomic, readwrite, retain) NSString *backgroundImage;
@property (nonatomic, readwrite, retain) NSNumber *borderWidth;
@property (nonatomic, readwrite, retain) NSNumber *cornerRadius;
@property (nonatomic, readwrite, retain) NSNumber *shadowRadius;
@property (nonatomic, readwrite, retain) NSString *shadowColor;
@property (nonatomic, readwrite, retain) NSNumber *shadowOpacity;
@property (nonatomic, retain) NSDictionary *shadowOffset;
@property (nonatomic,readwrite, assign) BOOL restrictScrollingToParentScrollContainer;

@property (nonatomic) AccessibilityOrderMode accessibilityOrderMode;
@property (nonatomic) AccessibilityOrderMode accessibilityOrderModeEffective;

@property (nonatomic, retain) NSMutableDictionary *segmentRelatedCache;

//stores if preview is enabled for widget or not
@property (nonatomic, assign) BOOL previewingEnabled;
@property (nonatomic, assign)  BOOL enableHapticFeedback;
@property (nonatomic)  NSMutableArray *advancedHaptics;
@property (nonatomic, readwrite) BOOL requireWidgetCreation;
@property (nonatomic,strong) NSString *classNameSpaceForWdg;
@property (nonatomic, readwrite) BOOL isInheritedWidget;
@property (nonatomic,readwrite, retain) NSValue* classRef;

#pragma mark Methods

- (BOOL) validateData: (NSDictionary*) dataDict;
- (void) updateWithData: (NSDictionary*) dataDict;

- (Widget*) createWidget;
- (NSString*) addGesture:(NSMutableArray*) gestureInfo;
- (void) removeGesture:(id) gestureIdentifier;

- (id) getWidgetCacheForKey: (NSNumber*) key;
- (void) setWidgetCache: (id) cacheData forKey: (NSNumber*) key;
- (void) removeWidgetCacheForKey: (NSNumber*) key;

- (NSString*) getMappedKeyForConfigKey: (NSString*) configKey;
- (NSString*) getConfigKeyForMappedKey: (NSString*) mappedKey;
- (NSArray*) getMappedKeysForConfigKey: (NSString*) configKey;

- (void)setBadgeWithConfig:(NSArray *)badgeConfig;
- (NSString *)getBadge;
-(void) setParentWidgetPrivate: (WidgetModel*) parentWidget;

- (void) setEnable:(id) enbld;
- (void) setVisibility:(id) vsblty;
- (void) setFocus:(id) aFocus;
- (void) setFocusOnChildWidget:(NSArray*) aFocusWidget;
- (void) performInitTasks;
- (void) setDefaultAnimationConfigPrivate:(NSDictionary *)aDefaultAnimationConfig;

// Widget private state methods
- (void) setNonModelStateValue:(id)value forKey:(NSString *)key;
- (id) getNonModelStateValueForKey:(NSString *)key;

- (void *)objectRef;
- (void)setObjectRef:(void *)anObjectRef;
- (void) protectJSHandle;
- (void) unprotectJSHandle;


- (void)removeFromParent;
- (id)clone:(NSString *)str;
- (NSDictionary *)convertPoint:(NSDictionary *)point toWidget:(WidgetModel *)toWidget;
- (NSDictionary *)convertPoint:(NSDictionary *)point fromWidget:(WidgetModel *)fromWidget;
- (NSArray *) getWidgetCallbacks;
- (void) propogateModelUpdatesToSegmentWithValue:(id)value andKey:(NSString *)key;

/**
    To destroy the widget  level properties, if any like MVC Controller associated.
     For e.g : Segment flex template controllers needs to destroy by calling destroy method of MVC sdk
 */
- (void) destroy;
@end
#pragma mark -

