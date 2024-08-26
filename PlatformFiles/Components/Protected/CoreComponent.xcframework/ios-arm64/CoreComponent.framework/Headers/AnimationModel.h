//
//  AnimationModel.h
//  VM
//
//  Created by Prabhakar K on 15/07/14.
//
//

#import <Foundation/Foundation.h>
#import "AnimationStep.h"
#import "PlatformConstants.h"
#import "RuntimeObject.h"
#import "CallBack.h"
@interface AnimationModel : RuntimeObject <NSCopying>
{
    float mduration;
    float delay;
    float iterationCount;
    NSString *direction;
    NSString *fillMode;
    NSString *timingFunction;
//    NSMutableArray *customTimingFuncArray;

    int animationTypesPresent;

    CallBack *animStartCallBack;
    CallBack *animEndCallBack;
}

@property(nonatomic, readonly) int animationTypesPresent;

-(void) setDuration:(float) timeInSec;
-(void) setDelay:(float) timeInSec;
-(void) setIterationCount:(float) count;
-(void) setDirection:(NSString*) dir;
-(void) setFillMode:(NSString*) fMode;
-(void) setTimingFunction:(NSString*) tFunc;
//-(void) setCustomTimingFunction:(NSArray*) tArray;
-(void) setStartCallBack:(CallBack*) startCallBack;
-(void) setEndCallBack:(CallBack*) endCallBack;
-(void) setStartCallBack:(CallBack*) startCallBack EndCallBack:(CallBack*) endCallBack;
-(void) setAllAnimationsThatPresentOnThisModel:(int) animationTypes;

-(float) getDuration;
-(float) getDelay;
-(float) getIterationCount;
-(NSString*) getDirection;
-(NSString*) getFillMode;
-(NSString*) getTimingFunction;
//-(NSArray*) getCustomTimingFuncArray;
-(CallBack*) getStartCallBack;
-(CallBack*) getEndCallBack;

-(BOOL) isFrameAnimation;
-(BOOL) isAlphaAnimation;
-(BOOL) isZIndexAnimation;
-(BOOL) isAnchorPointAnimation;
-(BOOL) isTransformAnimation;
-(BOOL) isSkinAnimation;
@end
