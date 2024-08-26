//
//  JSBasicAPI.h
//  VM
//
//  Created by KH206 on 17/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"

@interface JSBasicAPI : NSObject <JSStaticAPI>

+(NSArray*) alert:(NSArray *)parameters;
+ (NSArray *)importScripts:(NSArray *)arguments;

@end
