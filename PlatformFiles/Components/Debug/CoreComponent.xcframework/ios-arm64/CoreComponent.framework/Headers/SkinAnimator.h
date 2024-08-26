//
//  SkinAnimator.h
//  VM
//
//  Created by Prabhakar K on 27/08/14.
//
//

#import "BaseAnimation.h"
#import "AnimationBaseInterface.h"

@class Widget;

@interface SkinAnimator : BaseAnimation<AnimationBaseInterface>
{
}

@property (nonatomic, retain) NSString *animationProperty;

-(void) playAnimationFor:(Widget*) widget forProperty:(NSString*) property_;
@end
