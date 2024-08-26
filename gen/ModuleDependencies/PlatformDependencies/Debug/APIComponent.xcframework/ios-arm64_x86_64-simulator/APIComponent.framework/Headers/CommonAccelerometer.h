//
//  CommonAccelerometer.h
//  VM
//
//  Created by KH707 on 24/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "LuaAPI.h"

@interface CommonAccelerometer : NSObject

+(NSArray *) startMonitoringAcceleration: (NSArray *) args;
+(NSArray *) stopMonitoringAcceleration: (NSArray *) args;
+(NSArray *) retrieveCurrentAcceleration: (NSArray *) args;
+(NSArray *) registerForAccelerationEvents: (NSArray *) args;
+(NSArray *) unRegisterAccelerationEvents: (NSArray *) args;


@end
