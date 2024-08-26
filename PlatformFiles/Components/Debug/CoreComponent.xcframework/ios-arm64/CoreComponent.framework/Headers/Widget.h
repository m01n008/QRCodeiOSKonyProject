//
//  Widget.h
//  VM
//
//  Created by KH206 on 08/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WidgetModel.h"
#import "WidgetLayout.h"
#import "Skin.h"
#import "CallBackListenerProtocol.h"
#import "KonyWidgetProtocol.h"
#import "KonyWidgetEventSenderProtocol.h"
#import "ObservationInfo.h"
#import "CustomBadge.h"
#import "KonyMacros1.h"
#import "KonyWidgetFocusProtocol.h"
#import "AnimationBaseInterface.h"
#import "KeyFrameAnimationUIViewBased.h"
#import "KeyframeAlphaAnimator.h"
#import "KeyFrameZIndexAnimator.h"
#import "KeyFrameAnchorPointAnimator.h"
#import "KeyFrameTransformAnimator.h"
#import "AnimationModel.h"
#import "KonyTouchEvents.h"
#import "LayerLayoutDelegate.h"

#import "KonyTouchEventsProtocol.h"
#define WIDGET_CACHE_LAYOUT_INFO 1111

/*
 *  Defining required Macro for some key
 */

#define IMAGE_SHOULD_DOWNLOAD   @"shouldDownloadImage"
#define PARAM_APPENDED          @"paramsToBeAppended"
#define MASTER_TYPE              @"masterType"
#define DEFAULT_SPINWHEEL_WIDTH		25
#define DEFAULT_SPINWHEEL_HEIGHT	25
#define KONY_BLUR_ENABLED_KEY @"enabled"
#define KONY_BLUR_VALUE_KEY @"value"
#define KONY_BLUR_STYLE_KEY @"style"
#define KONY_BLUR_VIZ_ALPHA_MIN_VALUE 0
#define KONY_BLUR_VIZ_ALPHA_MAX_VALUE 100

@class CustomAnimationWorker;
@class KonySwipe;


@interface Widget : NSObject <WidgetLayout,CallBackListenerProtocol,KonyWidgetProtocol, KonyWidgetEventSenderProtocol, KonyWidgetFocusProtocol,KonyTouchEventsProtocol,AnimationAndWidgetContract,LayerLayoutDelegate>
{
    WidgetModel *widgetModel;
    Widget __weak *parentWidget;
    UIActivityIndicatorView *downloadProgressIndicator;
    NSMutableArray *observationInfoList;
    NSMutableDictionary *eventListenersInfo;
    NSDictionary *widgetContextInfo;
    NSMutableDictionary *widgetConstraints;
    
    CustomBadge *badge;
    BOOL isCachingEnabled;
    BOOL isAnimating;
    KonyTouchEvents *touchEventsRecogniser;
    
    //keep track the blur view
    UIVisualEffectView *blurView;
@public
    
    BOOL requiresLayout;
    BOOL shouldPropagateLayoutToParent;
    
    //Accessibility index as per a11yIndex set in acccessibilityConfig, if not set INT_MAX
    NSUInteger accessibilityIndex;

#pragma mark -
#pragma mark Start of Widget Level Animations
/*
 * Created variables that needed to be backed up for animation stuff.
 * Add if any extra variables need for future animations
 */
@private
    NSDictionary *backupDict;
//    LayoutModel *dirtyLayoutModel;
    CustomAnimationWorker *_associatedAnimationWorker;
    KeyFrameAnimationUIViewBased *keyFrameUIBasedFrameAnimator;
    KeyframeAlphaAnimator *keyFrameAlphaAnimator;
    KeyFrameZIndexAnimator *keyFrameZIndexAnimator;
    KeyFrameAnchorPointAnimator *keyFrameAnchorAnimator;
    KeyFrameTransformAnimator *keyFrameTransformAnimator;
    
    AnimationHandleProxy *animationHandle;
    AnimationModel *animModel;
//    NSMutableDictionary *initialValDict;
    int totalAnimationsPresent;
    NSMutableDictionary *skinAnimators;

#pragma mark End of Widget Level Animations
#pragma mark -
}

@property (nonatomic, readwrite) CGRect allocatedWidgetFrame;
@property (nonatomic, readonly) WidgetModel *widgetModel;
@property (nonatomic, readwrite) BOOL requiresLayout;
@property (nonatomic, readonly, weak) Widget* parentWidget;
@property (nonatomic, readonly) NSMutableArray* subWidgetList;
@property (nonatomic, retain) NSDictionary* widgetContextInfo;
@property (nonatomic, strong) UIView *view;
@property (nonatomic, retain) CustomBadge *badge;
@property (nonatomic) BOOL shouldPropagateLayoutToParent;
@property (nonatomic, readwrite) BOOL isAnimating;
@property (nonatomic, readwrite) float tempAnimAlpha;
@property (nonatomic, readwrite) BOOL tempAnimClipsToBounds;
@property (nonatomic, assign) id<UIViewControllerPreviewing> previewContext;
#pragma mark -
#pragma mark Start of Widget Level Animations
@property (nonatomic, retain) NSDictionary *backupDict;
//@property (nonatomic, retain) LayoutModel *dirtyLayoutModel;
@property (nonatomic, retain) KeyFrameAnimationUIViewBased *keyFrameUIBasedFrameAnimator;
@property (nonatomic, retain) KeyframeAlphaAnimator *keyFrameAlphaAnimator;
@property (nonatomic, retain) KeyFrameZIndexAnimator *keyFrameZIndexAnimator;
@property (nonatomic, retain) KeyFrameAnchorPointAnimator *keyFrameAnchorAnimator;
@property (nonatomic, retain) KeyFrameTransformAnimator *keyFrameTransformAnimator;

@property (nonatomic, retain) AnimationHandleProxy *animationHandle;
@property (nonatomic, retain) AnimationModel *animModel;
@property (nonatomic, retain) CustomAnimationWorker *_associatedAnimationWorker;

@property (nonatomic,retain) id dragDelegate;
@property (nonatomic,retain) id dropDelegate;

@property (nonatomic) CGPoint pointTobeAnchored;
@property (nonatomic,strong) id overlayWidgetGestureClass;
//@property (nonatomic, retain) NSMutableDictionary *initialValDict;
@property (nonatomic, readwrite) int totalAnimationsPresent;
@property (nonatomic, retain) NSMutableDictionary *skinAnimators;

@property (nonatomic, readwrite) BOOL shouldAutogrow;

@property (nonatomic) NSUInteger accessibilityIndex;
@property (nonatomic) KonySwipe *swipeKony;
#pragma mark End of Widget Level Animations
#pragma mark -

/**
 
 Updates the Font of the widget and invoke
 
 */
- (void)updateFontAndLayoutSubWidgets;
- (id) initWithModel: (WidgetModel*) model;
- (void) updatedProperty:(NSString*)propName forObject: (id) object withNewValue:(id) newValue andOldValue:(id) oldValue observationContext: (ObservationInfo*) obsinfo;
- (void) setupWidget;
- (void) destroyWidget;
- (void) notifyEvent: (KonyWidgetEventType) eventType withContext: (NSDictionary*) eventContext;
-(Skin*) getNormalSkin;
- (void) setBadgeViewFrame:(CGRect *)rect;
-(void) valueChangedForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;
-(void) poulateOservationInfoForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;
- (void) addWidgetContextInfo:(NSDictionary *)objects recursive:(BOOL) isRecursive;
- (void) addWidgetConstraintsInfo:(NSDictionary *)objects recursive:(BOOL) isRecursive;
- (void) removeWidgetConstraintsForKey:(NSString *) constraintKey recursive:(BOOL) isRecursive;
- (void) removeAllConstraintsRecursive:(BOOL) isRecursive;
- (void) updateWidgetHighlight:(BOOL) value recursive:(BOOL) isRecursive;
- (id) getWidgetConstraintsForKey:(NSString *) constraintKey;
- (void) executeEventCallback:(id)closure  values:(NSMutableArray *)values numberOfValues:(NSUInteger)numberOfValues spawn:(BOOL)spawn overRide:(BOOL)overRide;

-(BOOL) isContainedInHeaders;
-(BOOL) isContainedInFooters;
-(void) updatePropertyChangesToWidget;
-(void) setParentWidgetPrivate:(Widget *)aParentWidget;
-(void)updateShadowPathForView:(UIView *)currentView andSkin:(Skin *)currentSkin withRect:(CGRect)pathBounds;
- (void) setRequiresLayout:(BOOL)value propogateToParent:(BOOL) doPropogate;
- (void) setRequiresLayout:(BOOL)value resetCache:(BOOL) doResetCache propogateToParent:(BOOL) doPropogate;
- (void) resetLayoutCacheAndPropogateToParent:(BOOL) doPropogate;

#if DEBUG_ENABLE_OBJECT_PROFILING 
+ (long int) getObjectCount;
#endif

-(BOOL) isWidgetScrollContainer;
- (void) setWidgetViewFrame: (CGRect) frame withAnimation: (BOOL) shouldAnimate withContext:(NSDictionary*) context;
- (void) wlaAnimationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context;
-(void) wlaAnimationWillStart:(NSString *)animationID context:(void *)context;
-(void)setContentInsetForScreenLevelWidget:(UIEdgeInsets)insets;

//Accessibility related apis

//Api for configuring accessibility traits
- (void)updateAccessibilityTrait;

//Api to update accessibilityLabel, accessibilityValue, accessibilityHint and isAccessibilityEement from the input dictionary
- (void)updateAccessibilityConfiguration;

//Api to take care of default state of isAccessbilityElement flag for any widget
- (void)updateAccessibilityDefault;

//Api to track if a widget supports accessibility configuartion
- (BOOL)isAccessibilitySupported;

//Api to wipe off the set accessibility properties
- (void)resetAccessibilityConfiguration;

//Api to return yes for widgets which are accessibile to voiceover , may differ from isAccessibilityElement boolean , label is one such example
-(BOOL)isWidgetAccessible;

- (void) startProgressAnimation:(NSDictionary*) dict;
- (void) stopProgressAnimation;
- (void) updateProgressAnimation:(NSDictionary*) dict;

#pragma mark -
#pragma mark Start of Widget Level Animations 6.0
//-(UIView*) getSkinAnimatableView;
#pragma mark End of Widget Level Animations 6.0
#pragma mark -

- (BOOL)isMemberOfSegmentedUI;
- (BOOL)isMemberOfCollectionView;
- (BOOL)isWidgetCollectionViewTempContainer;
- (NSDictionary*)getWidgetContextInfoInSegment;
- (void)wipeOutAnimationUpdates;

//The data docitionary here contains values in widgetID:corresponding Value format
- (void)updateSegmentDataUsingData:(NSDictionary *)data;
- (void)updateCollectionViewDataUsingData:(NSDictionary *)data;
- (void)updateSegmentDataUsingData:(NSDictionary *)data triggeredByUserInput:(BOOL)flag;
/**
@brief : This function is used to update the masterdata of segment
 @param data: A dictionary of data which needs to be updated in the segment master data.
 @param flag: A boolean, whether the update occured because of user action(YES) or animation(NO).
 @param layoutNeeded : A boolean flag tells us whether layout is needed or not.(For animations, need to send this flag as false because view is already updated by the
 time animation gets over. Hence no need of layout again. If there is a component inside row, and it can updated using this.view, here data will be updated but view is not updated. Hence need to layout so send this flag as true ).
 */

- (void)updateSegmentDataUsingData:(NSDictionary *)data triggeredByUserInput:(BOOL)flag withLayoutNeeded:(BOOL) layoutNeeded;
- (void)updateCollectionViewDataUsingData:(NSDictionary *)data triggeredByUserInput:(BOOL)flag;
- (void)updateSegmentDataResetDictForSensitiveDataWithData:(NSDictionary *)data;
- (void)updateCollectionViewDataResetDictForSensitiveDataWithData:(NSDictionary *)data;
- (NSMutableDictionary *)getContextInfoForWidgetInSegment;

-(UIView *)getViewForAccessibilityIdentifier;

-(void)onAnimationComplete:(CAAnimation*)anim;
+(BOOL)isValidBlurLevel:(NSNumber*)val;
+(CGFloat)getMappedBlurAlphaValue:(NSNumber*)val;
+(UIBlurEffectStyle)getNativeBlurEffectForKonyBlurEffect:(KonyBlurEffect)blurStyle;
@end

