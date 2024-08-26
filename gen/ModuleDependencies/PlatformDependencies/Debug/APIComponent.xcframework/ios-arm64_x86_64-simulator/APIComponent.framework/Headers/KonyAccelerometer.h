//
//  KonyAccelerator.h
//  VM
//
//  Created by Sunil Nimmagadda on 22/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "LuaClosure.h"
#import <CoreComponent/LuaTable.h>
#import <CoreComponent/CallBack.h>

@interface KonyAccelerometer : NSObject {
}


+ (void) startMonitoringWithOnSuccess: (CallBack*)onSuccess OnFailure: (CallBack*)onFailure 
                                 Freq: (NSNumber*)freq OnChange: (BOOL) onChange;
+ (void) stopMonitoring;
+ (void) getCurrentValuesWithSuccess: (CallBack*)onSuccess orFailure: (CallBack*)onFailure;
+ (void) registerForEvents:(NSDictionary *)events;
+ (void) unRegisterForEvents:(NSArray *)events;
+ (void) handleShake;
@end
