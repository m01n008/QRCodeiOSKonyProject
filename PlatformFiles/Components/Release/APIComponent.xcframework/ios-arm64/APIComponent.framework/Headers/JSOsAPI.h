//
//  JSOsAPI.h
//  VM
//
//  Created by Amba on 19/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>
#import "CommonOsAPI.h"

@interface JSOsAPI : CommonOsAPI <JSStaticAPI>

// Deprecated

// New in 5.0

+ (NSArray *) hasGPSSupport: (NSArray *) arguments;
+ (NSArray *) hasCameraSupport: (NSArray *) arguments;
+ (NSArray *) getResourceSettings: (NSArray *) arguments;
+ (NSArray *) authorizeResourceAccess: (NSArray *) arguments;
+ (NSArray *) hasTouchSupport: (NSArray *) arguments;
+ (NSArray *) hasOrientationSupport: (NSArray *) arguments;
+ (NSArray *) hasAccelerometerSupport: (NSArray *) arguments;
+ (NSArray *) getDeviceCurrentOrientation: (NSArray *) arguments;
+(void)throwException:(NSException*)exception;

//

+ (NSArray *) toNumber: (NSArray *) arguments;
+ (NSArray *) toCurrency: (NSArray *) arguments;
+ (NSArray *) freeMemory: (NSArray *) arguments;
+ (NSArray *) userAgent: (NSArray *) arguments;
+ (NSArray *) deviceInfo: (NSArray *) arguments;
+ (NSArray *) createUUID: (NSArray *) arguments;
+ (NSArray *) isDeviceRootedOrJailBroken:(NSArray *) arguments;

+(void) registerBatteryService : (NSArray *)arguments;
+(void) unregisterBatteryService: (NSArray *) arguments;
+(NSArray *) getBatteryLevel: (NSArray *) arguments;
+(NSArray *) getBatteryState: (NSArray *) arguments;
+(void) detectDynamicInstrumentation:(NSArray *)arguments;

@end
