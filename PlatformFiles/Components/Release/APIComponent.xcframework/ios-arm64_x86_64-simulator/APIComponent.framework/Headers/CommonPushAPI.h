//
//  CommonPushAPI.h
//  VM
//
//  Created by Amba on 03/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonPushAPI : NSObject

// Deprecated

// New in 5.0

//

+ (NSArray *) registerForPush: (NSArray *) arguments;
+ (NSArray *) deRegister: (NSArray *) arguments;
+ (NSArray *) setCallbacks: (NSArray *) arguments;

@end
