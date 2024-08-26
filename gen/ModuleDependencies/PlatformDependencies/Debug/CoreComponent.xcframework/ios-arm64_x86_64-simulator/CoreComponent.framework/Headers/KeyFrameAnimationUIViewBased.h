//
//  KeyFrameAnimationUIViewBased.h
//  VM
//
//  Created by Prabhakar K on 16/07/14.
//
//

#import <Foundation/Foundation.h>
#import "BaseAnimation.h"
#import "AnimationBaseInterface.h"
#import "AnimationHandleProxy.h"

@class Widget;

@interface RangeAndValue: NSObject
{
    id rangeStart;
    id rangeEnd;
    id value;
}
@property (nonatomic, retain) id rangeStart;
@property (nonatomic, retain) id rangeEnd;
@property (nonatomic, retain) id value;
@end

@interface KeyFrameAnimationUIViewBased : BaseAnimation<AnimationBaseInterface>
{
//    NSMutableArray *frameArray;
    NSMutableSet *allKeys;
    int presentAnimationNumber;
    NSArray *KTFStateArray;
    BOOL animationsExist;
}
//@property (nonatomic, retain) NSMutableArray *frameArray;
@end
