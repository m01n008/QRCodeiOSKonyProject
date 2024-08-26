//
//  KonySplitVertical.h
//  VM
//
//  Created by prabhakar on 15/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KonyCustomAnimator.h"
enum 
{
    PRESENT_VIEW_ONE_VERTICAL_SPLIT_OUT = 15,
    PRESENT_VIEW_ONE_VERTICAL_SPLIT_IN,
    NEXT_VIEW_ONE_VERTICAL_SPLIT_OUT,
    NEXT_VIEW_ONE_VERTICAL_SPLIT_IN,
};
@interface KonySplitVertical : KonyCustomAnimator
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
-(AnimationStates) presentState;

@end
