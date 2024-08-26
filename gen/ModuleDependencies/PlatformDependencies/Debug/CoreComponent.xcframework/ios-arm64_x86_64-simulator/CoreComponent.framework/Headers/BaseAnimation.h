//
//  BaseAnimation.h
//  VM
//
//  Created by Prabhakar K on 15/07/14.
//
//

#import <Foundation/Foundation.h>
#import "AnimationBaseInterface.h"
#import "AnimationHandleProxy.h"


@class TransientLayoutModelProxy;

@interface BaseAnimation : CABasicAnimation<AnimationBaseInterface>
{
    NSMutableArray *stepArray;
    id<AnimationCallBackInterface> delegateWidget;
    NSMutableArray *timingFunctionArray;
    NSString *animationFillMode;
    NSString *animationDirection;

    float duration;
    float delay;
    float iterationCount;
    NSString *timingFunctionKony;
    Widget * __weak associatedWidget;
    AnimationHandleProxy *animHandle;
    float speed;
    BOOL shouldAutoReverse;
    BOOL removeAnimationOnCompletion;
    int animationState;
    NSMutableArray *timingFuncArray;
    TransientLayoutModelProxy *layoutProxy;
    BOOL didAnimationStart;
    BOOL didAnimationEnd;
    NSString *animationType;
    NSString *animationKind;
    NSMutableArray *valueArray;
    NSMutableArray *totalAssociatedAnimations;
    NSMutableArray *storeFinalAnimators;
}

@property(nonatomic, readwrite) float duration;
@property(nonatomic, readwrite) float iterationCount;
@property(nonatomic, readwrite) float delay;
@property(nonatomic, retain) NSString *timingFunctionKony;
@property(nonatomic, retain) NSMutableArray *timingFunctionArray;
@property(nonatomic, retain) NSMutableArray *valueArray;
@property(nonatomic, retain) NSString *animationFillMode;
@property(nonatomic, retain) NSString *animationDirection;
@property(nonatomic, retain) NSString *animationKind;
@property(nonatomic, readonly) NSString *animationType;
@property(nonatomic, weak) Widget *associatedWidget;
@property (nonatomic, retain) NSMutableArray *stepArray;
@property (nonatomic, retain) id<AnimationCallBackInterface> delegateWidget;
@property (nonatomic, retain) AnimationHandleProxy *animHandle;
@property (nonatomic, retain) TransientLayoutModelProxy *layoutProxy;
@property (nonatomic, retain) NSMutableArray *storeFinalAnimators;
@property (nonatomic,readonly) int animationState;

-(void) updateDirectionAndStay;
-(void) removeAnimation:(CAAnimation*)anim_ fromView:(UIView*) view_;
-(void) removeAnimationType:(NSString*) animationType_ fromWidget:(Widget *)widget_;
-(void) removeAnimationType:(NSString*) animationType_ fromWidget:(Widget *)widget_ recursively:(BOOL) recursive_;

-(void) initAnimationDataForWidget:(Widget*) widget_;
-(BOOL) isValueValidForAnimator:(id) value_;
-(void) forceCallAnimationEndForDelegate;
-(BOOL) checkIfAnimatorHasAllData;

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag;

@end
