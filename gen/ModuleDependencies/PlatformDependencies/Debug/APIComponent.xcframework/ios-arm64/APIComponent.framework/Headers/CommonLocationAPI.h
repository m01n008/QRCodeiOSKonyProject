//
//  CommonLocationAPI.h
//  VM
//
//  Created by Amba on 01/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

//#import "LuaAPI.h"
#import <Foundation/Foundation.h>

@class CallBack;

double watchPosition(CallBack* succCallBack, CallBack* errCallBack, NSMutableDictionary *options);

void stopWatchPosition(double watchLocationID);

@interface CommonLocationAPI : NSObject

// Deprecated

// New in 5.0

//
+(void) konyGetLocationWithOptions:(NSMutableDictionary*)values;
+ (NSArray *) getCurrentPosition: (NSArray *) arguments;
+ (NSArray *) watchPosition: (NSArray *) arguments;
+ (NSArray *) clearWatchPosition: (NSArray *) arguments;
+(void)createGeofences:(NSArray *)arguments;
+(void)clearAllGeofences;
+(void)setGeofencesCallback:(NSArray *)arguments;

@end
