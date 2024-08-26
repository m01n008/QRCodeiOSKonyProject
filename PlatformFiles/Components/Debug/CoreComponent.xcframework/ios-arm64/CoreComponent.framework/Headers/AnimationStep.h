//
//  AnimationStep.h
//  VM
//
//  Created by Prabhakar K on 15/07/14.
//
//

#import <Foundation/Foundation.h>
#import "AnimationBaseInterface.h"

@interface AnimationStep : NSObject
{
    float stepVal;
    NSMutableDictionary *stepConfig;
    NSMutableDictionary *stepData;
    int animationTypesPresent;
    BOOL dummyStep;
//    float left;
//    float right;
//    float top;
//    float bottom;
//    float width;
//    float height;
//    CGPoint anchorPoint;
//    CGRect frame;
//    CGAffineTransform transform2D;
//    float opacity;
//    UIColor *borderColor;
//    UIColor *backgroundColor;
//    UIColor *shadowColor;
//    float borderWidth;
//    float cornerRadius;
//    float shadowOpacity;
//    float shadowOffset;
}
@property(nonatomic, retain) NSMutableDictionary *stepConfig;
@property(nonatomic, retain) NSMutableDictionary *stepData;
@property(nonatomic, readwrite) float stepVal;
@property(nonatomic, readwrite) int animationTypesPresent;
@property(nonatomic, readwrite) BOOL dummyStep;
-(id) initWithKeyData:(NSDictionary*) data;
-(BOOL) isAnchorPointDictComplete;
-(BOOL) isFrameAnimation;
-(BOOL) isAlphaAnimation;
-(BOOL) isZIndexAnimation;
-(BOOL) isTransformAnimation;
-(BOOL) isAnchorPointAnimation;
-(void) updateAnimationsPresentInStep;
@end
