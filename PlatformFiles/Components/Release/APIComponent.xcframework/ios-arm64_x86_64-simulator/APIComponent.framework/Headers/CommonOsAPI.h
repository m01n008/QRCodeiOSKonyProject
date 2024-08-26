//
//  CommonOsAPI.h
//  VM
//
//  Created by Amba on 02/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

//#import "LuaAPI.h"
#import <CoreComponent/CallBack.h>

#if USE_WBC
void __attribute__ ((nothrow)) frdSvrDetCB();
void __attribute__ ((nothrow)) frdSvrUDetCB();
#endif

@interface CommonOsAPI : NSObject

// Deprecated

// New in 5.0

+ (NSArray *) hasGPSSupport: (NSArray *) arguments;
+ (NSArray *) hasCameraSupport: (NSArray *) arguments;
+ (NSArray *) authorizeResourceAccess: (NSArray *) arguments;
+ (NSArray *) getResourceSettings: (NSArray *) arguments;
+ (NSArray *) hasTouchSupport: (NSArray *) arguments;
+ (NSArray *) hasOrientationSupport: (NSArray *) arguments;
+ (NSArray *) hasAccelerometerSupport: (NSArray *) arguments;
+ (NSArray *) getDeviceCurrentOrientation: (NSArray *) arguments;

//

+ (NSArray *) toNumber: (NSArray *) arguments;
+ (NSArray *) toCurrency: (NSArray *) arguments;
+ (NSArray *) freeMemory: (NSArray *) arguments;
+ (NSArray *) userAgent: (NSArray *) arguments;
+ (NSArray *) deviceInfo: (NSArray *) arguments;
+ (NSArray *) createUUID: (NSArray *) arguments;
+ (NSArray *) isDeviceRootedOrJailBroken: (NSArray *) arguments;
+ (void) detectDynamicInstrumentation: (NSArray *) arguments;

@end

@interface BatteryManager : CommonOsAPI

+ (id) sharedBatteryManager;
- (NSArray *) getBatteryState;
- (NSArray *) getBatteryLevel;
- (void) registerBatteryService: (NSArray *) arguments;
- (void) unregisterBatteryService;
- (void) registerBatteryStateMonitoring;

@property(nonatomic,retain) CallBack *batteryMonitoringJSCallBack;

@end

