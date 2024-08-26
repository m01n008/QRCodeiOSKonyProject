//
//  KonyCustomAnimator.h
//  VM
//
//  Created by prabhakar on 14/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "CustomAnimationProtocol.h"
#import "KonyCustomAnimationDelegate.h"
@interface KonyCustomAnimator : NSObject <CustomAnimationProtocol>
{
    NSMutableArray *customAnimViews;
    AnimationStates presentState;
    float transitionTime;
    BOOL trasitionMakeEqualSpeed;
    int transitionCurve;
    id<KonyCustomAnimationDelegate> delegate;
}
+(UIImage*) convertViewToImage:(UIView*) pView;
-(void) setDelegate:(id<KonyCustomAnimationDelegate>) mdelegate;
//-(AnimationStates) presentState;
-(NSArray*) customAnimViews;
@end
