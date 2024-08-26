//
//  KonyCustomAnimationManager.h
//  VM
//
//  Created by prabhakar on 15/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <UIKit/UIKit.h>
//#import "CustomAnimationProtocol.h"
//#import "KonyCustomAnimationDelegate.h"
//#import "KonyCustomAnimator.h"

#import "KonyCustomAnimator.h"
#import "KonySplitHorizontal.h"
#import "KonySplitVertical.h"
#import "KonyTwoSplit.h"
#import "KonyAnimTwoSplitRotate.h"
#import "KonyCustomAnimationManager.h"
#import "KonyDockableSplit.h"

#import "KonyTransitionFlip.h"

#import "HMGLTransition.h"
#import "HMGLTransitionManager.h"
#import "DoorsTransition.h"
#import "Switch3DTransition.h"
#import "FlipTransition.h"
#import "ClothTransition.h"
#import "RotateTransition.h"

#import "Widget.h"

@interface KonyCustomAnimationManager : NSObject <KonyCustomAnimationDelegate,HMGLTransitionViewDelegate>
{
    KonyCustomAnimator* customAnimation;
    HMGLTransition *transition;
    
    UIView *frontView;
    UIView *backView;
    UIView *containerView;
}
@property(nonatomic) NSMutableDictionary *customTransitionConfiguration;
@property(nonatomic) UIImageView *prevFormImageView;

+ (id)sharedManager;
-(void) createPreviouFormImageViewForView:(UIView*) view;
-(void) createCustomTransitionConfigurationWithKeys:(NSArray*) keysArr andValues:(NSArray*) values;
-(void) initializeAllPointersToNil;
-(void) shiftView :(UIView*) startView :(UIView*) endView transitionDuration:(float)duration;
- (void) setFlipTransitionfromView:(UIImageView*) fromView toView:(UIImageView*)toView container:(UIView*) container transitionDuration:(float)duration transitionCurve:(NSString*) curve transitionDirection:(NSString*) direction;
- (void) setSplitTransition :(NSString*) animType :(UIImageView*) fromView :(UIImageView*) toView :(UIView*) container :(CGPoint) splitPoint :(CGPoint) contentOffset transitionDuration:(float) duration equalSpeed:(BOOL) equalSpeed transitionCurve:(NSString*) curve :(NSArray*) headerFooterRects;
- (void) setHMGLTransition :(NSString*) animType :(UIView*) fromView :(UIView*) toView :(UIView*) container transitionDuration:(float) duration;
- (void) playAnimation;
-(void) cleanUpData;
-(AnimationStates) presentAnimationState;

#pragma mark -
#pragma mark Start of Widget Level Animations
//-(void) setWidgetAnimationDelegate:(id<KonyCustomAnimationDelegate>) delegate;
-(NSDictionary*) getAnimationCallBacks :(Widget*)forWidget;
-(NSDictionary*) getDefaultAnimations :(Widget*)forWidget;
-(void) playAnimationWithFrame:(CGRect) frame withContext:(NSDictionary *)context :(Widget*)forWidget;
//- (void) setWidgetViewFrame: (CGRect) frame withAnimation: (BOOL) shouldAnimate withContext:(NSDictionary*) context :(Widget*) forWidget;
-(void) animateView:(NSDictionary*) config;

-(void) backUpOriginalValues:(NSDictionary*) backupDict forWidget:(Widget*) froWidget;
-(void) restoreOriginalValuesForWidget:(Widget*) froWidget;

-(void)setAnchorPoint:(CGPoint)anchorPoint forView:(UIView *)view;
-(bool) doesWidgetHaveAnimationConstraints :(Widget*)forWidget;
-(void) setTheFrame:(CGRect)aFrame forView:(UIView*)aView shouldAnimate:(BOOL)shouldAnimate withConfig:(NSDictionary*) animConfig;
#pragma mark End of Widget Level Animations
#pragma mark -

@end
