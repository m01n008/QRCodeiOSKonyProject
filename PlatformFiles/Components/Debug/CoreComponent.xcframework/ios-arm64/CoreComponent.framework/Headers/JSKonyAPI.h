//
//  JSKonyAPI.h
//  VM
//
//  Created by Amba on 19/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"
@class Runtime;
@interface JSKonyAPI : NSObject <JSStaticAPI>

// Deprecated

// New in 5.0

+ (NSArray *) getError: (NSArray *) arguments;

// 

+ (NSArray *) convertToBase64: (NSArray *) arguments;
+ (NSArray *) convertToRawBytes: (NSArray *) arguments;
+ (NSArray *) print: (NSArray *) arguments;
+ (NSArray *) type: (NSArray *) arguments;

/** @method convertRawBytes
 *  @brief compresses the image and return the rawbytes of the type of image mentioned.
 *  @param
 *  @returns nil.
 **/
+(NSArray*)convertRawBytes:(NSArray*)arguments;

+(NSArray*)runOnMainThread:(NSArray*)arguments withRuntime:(Runtime*) rt;
+(NSArray*)runOnWorkerThread:(NSArray*)arguments withRuntime:(Runtime*) rt;

//Internal Method
+(NSArray*)getCurrentThreadDetails:(NSArray*)arguments;


@end

