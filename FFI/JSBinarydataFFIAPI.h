//
//  JSBinarydataFFIAPI.h
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2012 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"
#import "JSWidget.h"

@interface JSBinarydataFFIAPI :  NSObject <JSStaticAPI>

+ (NSArray *)deleteBinaryObject:(NSArray *)args;

+ (NSArray *)startDownload:(NSArray *)args;

+ (NSArray *)pauseDownload:(NSArray *)args;

+ (NSArray *)resumeDownload:(NSArray *)args;

+ (NSArray *)createDownloadTask:(NSArray *)args;

+ (NSArray *)clearBinaryDataManagerState:(NSArray *)args;

+ (NSArray *)getBinaryDataFilePath:(NSArray *)args;

+ (NSArray *)getOnlineBinaryData:(NSArray *)args;

+ (NSArray *)uploadBinaryData:(NSArray *)args;


@end

