//
//  CustomAnimationProtocol.h
//  VM
//
//  Created by prabhakar on 14/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum 
{
    ANIM_STATE_PLAYING = 1,
    ANIM_STATE_STOPPED,
    ANIM_STATE_PAUSED
} AnimationStates;

@protocol CustomAnimationProtocol

@required
-(void) playAnimation;
-(void) stopAnimation;
-(void) pauseAnimation;
-(AnimationStates) presentState;
//-(void) update:(float) dt;

@optional
-(void) initialize;
-(void) clean;
-(void) reset;

@property(nonatomic, readonly) NSMutableArray *customAnimViews;
@property(nonatomic, readonly) AnimationStates presentState;
@property(nonatomic, readwrite) float transitionTime;

@end