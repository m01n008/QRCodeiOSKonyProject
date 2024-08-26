//
//  CommonStoreAPI.h
//  VM
//
//  Created by Amba on 02/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonStoreAPI : NSObject

// Deprecated

// New in 5.0

//

+ (NSArray *) getKey: (NSArray *) arguments;
+ (NSArray *) setItem: (NSArray *) arguments;
+ (NSArray *) getItem: (NSArray *) arguments;
+ (NSArray *) removeItem: (NSArray *) arguments;
+ (NSArray *) clear: (NSArray *) arguments;
+ (NSArray *) storeLength: (NSArray *) arguments;

@end
