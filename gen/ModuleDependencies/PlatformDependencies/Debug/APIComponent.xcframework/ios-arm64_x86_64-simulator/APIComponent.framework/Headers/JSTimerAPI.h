//
//  JSTimerAPI.h
//  VM
//
//  Created by Amba on 09/04/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>
#import "CommonTimerAPI.h"

@interface JSTimerAPI : CommonTimerAPI <JSStaticAPI>

// Deprecated

// New in 5.0

//

+ (NSArray *) schedule: (NSArray *) arguments;
+ (NSArray *) cancel: (NSArray *) arguments;
+ (NSArray *) setCallBack: (NSArray *) arguments;
+(void)throwException:(NSException*)exception;

@end
