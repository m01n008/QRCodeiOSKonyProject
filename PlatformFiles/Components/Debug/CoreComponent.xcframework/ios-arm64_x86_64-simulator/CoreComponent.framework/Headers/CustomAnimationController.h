//
//  CustomAnimationController.h
//  VM
//
//  Created by Prabhakar K on 16/07/14.
//
//

#import <Foundation/Foundation.h>
#import "AnimationModel.h"
#import "KeyFrameAnimationModel.h"
#import "CustomAnimationWorker.h"
#import "AnimationHandleProxy.h"
@interface CustomAnimationController : NSObject
+ (id)sharedManager;
-(AnimationHandleProxy*) createKeyFrameAnimationWorkerWithAnimationModel:(AnimationModel*) model andWithWidgetModel:(WidgetModel*) widgetModel_;
@end
