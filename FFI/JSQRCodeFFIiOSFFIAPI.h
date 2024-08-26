//
//  JSQRCodeFFIiOSFFIAPI.h
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2012 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"
#import "JSWidget.h"

@interface JSQRCodeFFIiOSFFIAPI :  NSObject <JSStaticAPI>

+ (NSArray *)scanQRCode:(NSArray *)args;

+ (NSArray *)genQRCode:(NSArray *)args;


@end

