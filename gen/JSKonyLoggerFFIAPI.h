//
//  JSKonyLoggerFFIAPI.h
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2012 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"
#import "JSWidget.h"

@interface JSKonyLoggerFFIAPI :  NSObject <JSStaticAPI>

+ (NSArray *)getLogLevel:(NSArray *)args;

+ (NSArray *)flush:(NSArray *)args;

+ (NSArray *)setConfig:(NSArray *)args;

+ (NSArray *)setPersistorConfig:(NSArray *)args;

+ (NSArray *)setLogLevel:(NSArray *)args;

+ (NSArray *)activatePersistors:(NSArray *)args;

+ (NSArray *)deactivatePersistors:(NSArray *)args;

+ (NSArray *)setClaimsToken:(NSArray *)args;

+ (NSArray *)subscribeLogListener:(NSArray *)args;

+ (NSArray *)unsubscribeLogListener:(NSArray *)args;

+ (NSArray *)setGlobalRequestParam:(NSArray *)args;

+ (NSArray *)removeGlobalRequestParam:(NSArray *)args;

+ (NSArray *)resetGlobalRequestParams:(NSArray *)args;

+ (NSArray *)configure:(NSArray *)args;


@end

