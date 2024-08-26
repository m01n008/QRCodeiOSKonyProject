//
//  KonySplitHorizontal.h
//  VM
//
//  Created by prabhakar on 14/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KonyCustomAnimator.h"
#import "KonyCustomAnimationManager.h"
enum 
{
    PRESENT_VIEW_ONE_HORIZONTAL_SPLIT_OUT = 1,
    PRESENT_VIEW_ONE_HORIZONTAL_SPLIT_IN,
    NEXT_VIEW_ONE_HORIZONTAL_SPLIT_OUT,
    NEXT_VIEW_ONE_HORIZONTAL_SPLIT_IN,
    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_LEFT,
    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_RIGHT,
    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_TOP,
    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_BOTTOM,
    NEXT_VIEW_NO_SPLIT_MOVE_IN_LEFT,
    NEXT_VIEW_NO_SPLIT_MOVE_IN_RIGHT,
    NEXT_VIEW_NO_SPLIT_MOVE_IN_TOP,
    NEXT_VIEW_NO_SPLIT_MOVE_IN_BOTTOM,
};

@interface KonySplitHorizontal : KonyCustomAnimator
{
    UIImageView *toImageView;
    UIImageView *fromImageView;
    UIView *containerView;
    int animationType;
}

-(id) initWithToView:(UIImageView*) toView FromView:(UIImageView*) fromView containerView:(UIView*) container transitionDuration:(float) duration equalSpeed:(BOOL) equalSpeed transitionCurve:(int) curve;
-(void) splitAtPoint :(CGPoint) splitPoint :(CGPoint) mcontentOffset :(int) animType;
-(void) arrangeViewsToFormat :(int) msplitType :(CGPoint) splitPoint equalSpeed:(BOOL) equalSpeed;
-(void) initialize :(CGPoint) splitPoint :(CGPoint) mcontentOffset :(int) animType;
-(void) animateCustomTransition :(int) animation :(NSArray*) array equalSpeed:(BOOL) equalSpeed;
-(AnimationStates) presentState;
@end
