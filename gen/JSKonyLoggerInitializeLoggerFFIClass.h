//
//  JSKonyLoggerInitializeLoggerFFIClass.h
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2012 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"
#import "JSWidget.h"

@interface JSKonyLoggerInitializeLoggerFFIClass :  JSObject <SupportedWidgetType,SetUPJSWrapper>


- (id)logTrace:(NSArray *)args;

- (id)logDebug:(NSArray *)args;

- (id)logWarning:(NSArray *)args;

- (id)logInfo:(NSArray *)args;

- (id)logError:(NSArray *)args;

- (id)logFatal:(NSArray *)args;

- (id)logPerf:(NSArray *)args;


@end

