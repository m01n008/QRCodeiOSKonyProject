//
//  KeyFrameAnimation.h
//  VM
//
//  Created by Prabhakar K on 15/07/14.
//
//

#import <QuartzCore/QuartzCore.h>

@interface KeyFrameAnimation : CAKeyframeAnimation
{
    NSArray *positionArray;
    NSArray *boundsArray;
    NSArray *opacityArray;
    NSArray *affineTransformArray;
    NSArray *anchorPointArray;
    NSArray *backgroundColorArray;
    NSArray *borderColorArray;
    NSArray *borderWidthArray;
    NSArray *cornerRadiusArray;
    NSArray *shadowColorArray;
    NSArray *shadowOpacityArray;
    NSArray *shadowOffsetArray;
}
@end
