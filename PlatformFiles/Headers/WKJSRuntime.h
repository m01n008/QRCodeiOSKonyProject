//
//  WKJSRuntime.h
//  SampleWatchGenTest
//
//  Created by KH206 on 25/08/15.
//  Copyright (c) 2015 KH206. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKJSRuntime : NSObject

+(instancetype) sharedInstance;

+(void) executeMethod:(NSString*) methodName withArgument:(id) argument;
+(void) executeMethod:(NSString*) methodName withArguments:(NSArray*) arguments;

-(void) executeMethod:(NSString*) methodName withArgument:(id) argument;
-(void) executeMethod:(NSString*) methodName withArguments:(NSArray*) arguments;

@end
