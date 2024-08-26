//
//  CommonTimerAPI.h
//  VM
//
//  Created by Amba on 03/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonTimerAPI : NSObject

// Deprecated

// New in 5.0

//

+ (NSArray *) schedule: (NSArray *) arguments;
+ (NSArray *) cancel: (NSArray *) arguments;
+ (NSArray *) setCallback: (NSArray *) arguments;

@end
