//
//  CustomAnimationWorker.h
//  VM
//
//  Created by Prabhakar K on 16/07/14.
//
//

#import <Foundation/Foundation.h>
#import "AnimationModel.h"
#import "KeyFrameAnimationModel.h"
#import "KeyFrameAnimationUIViewBased.h"
#import "KeyframeAlphaAnimator.h"
#import "AnimationStep.h"
#import "LayoutModel.h"

#import "AnimationHandleProxy.h"

#import "KonyUtil.h"
#import "Widget.h"

@interface CustomAnimationWorker : NSObject <AnimationCallBackInterface>
{
    AnimationHandleProxy *animProxy;
    AnimationModel* animModel;
    WidgetModel *widgetModel;
    ModelUpdateProgressForAnimations modelUpdateProgress;
    NSMutableDictionary *initialAndFinalValDict;
    
    NSMutableArray *explicitAndImplicitAnimators;
    NSMutableArray *completedExplicitAndImplicitAnimators;
    NSMutableArray *animationWdgList;
}
-(void) createWorkerForAnimationModel:(AnimationModel*) model_ forWidgetModel:(WidgetModel*) widgetModel_;
-(void) forceCloseAnimationForWidget:(Widget*) widget_;
-(void) removeAllAnimatorsFromList;
-(void) removeAnimatorFromList:(BaseAnimation*) animator;
@end
