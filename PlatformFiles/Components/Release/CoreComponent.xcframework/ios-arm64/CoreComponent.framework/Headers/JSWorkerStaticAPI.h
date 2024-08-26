//
//  JSWorkerStaticAPI.h
//  VM
//
//  Created by UDAY BHEEMA 29/05/14.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"

@interface JSWorkerStaticAPI : NSObject<JSStaticAPI>

+ (NSArray *) hasWorkerThreadSupport: (NSArray *) arguments;

+(void)throwException:(NSException*)exception;


@end
