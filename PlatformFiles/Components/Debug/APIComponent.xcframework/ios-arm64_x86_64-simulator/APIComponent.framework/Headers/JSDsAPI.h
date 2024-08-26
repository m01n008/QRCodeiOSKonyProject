//
//  JSDsAPI.h
//  VM
//
//  Created by KH707 on 18/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CommonDsAPI.h"
#import <CoreComponent/JSStaticAPI.h>

@interface JSDsAPI : CommonDsAPI


+(NSArray *) dsSave: (NSArray *) args;
+(NSArray *) dsRead: (NSArray *) args;
+(NSArray *) dsDelete: (NSArray *) args;
+(void)throwException:(NSException*)exception;

@end
