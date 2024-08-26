//
//  AnimationHandleProxy.h
//  VM
//
//  Created by Prabhakar K on 24/07/14.
//
//

#import <QuartzCore/QuartzCore.h>
#import "Runtime.h"
#import "RuntimeObject.h"

@interface AnimationHandleProxy : RuntimeObject
{
    CAAnimation *associatedGroupAnimation;
    CAAnimation *associatedFrameAnimation;
    CAAnimation *associatedAlphaAnimation;
    CAAnimation *associatedZIndexAnimation;
}
@end
