//
//  JSNetAPI.h
//  VM
//
//  Created by Amba on 19/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>
#import "CommonNetAPI.h"
#define URLENCODE_EXCEPTIONLIST @".-*_"

@interface JSNetAPI : CommonNetAPI <JSStaticAPI>

+ (NSArray *)getActiveNetworkType:(NSArray *)args;
+ (NSArray *)isActiveNetworkAvailable:(NSArray *)args;
+ (void)setNetworkCallbacks:(NSArray *)callbackConfig;

+(NSArray *) netInvokeService: (NSArray *) args;
+(NSArray *) loadClientCertificate:(NSArray *)args;
+(NSArray *) removeClientCertificate:(NSArray *)args;
+(void)throwException:(NSException*)exception;
+(NSArray *) urlEncode:(NSArray *)args;
+(NSArray*)urlDecode:(NSArray*)args;
@end
