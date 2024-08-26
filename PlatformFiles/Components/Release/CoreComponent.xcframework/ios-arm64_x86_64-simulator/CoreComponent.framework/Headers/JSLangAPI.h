//
//  JSLangAPI.h
//  VM
//
//  Created by KH206 on 18/02/15.
//  Copyright (c) 2015 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"

@interface JSLangAPI : NSObject<JSStaticAPI>

+ (NSArray *) setUncaughtExceptionHandler: (NSArray *) arguments;
+ (NSArray *) getUncaughtExceptionHandler: (NSArray *) arguments;

@end
