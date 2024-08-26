//
//  JSQRCodeFFIiOSFFIAPI.m
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

//# import "lglobals.h"

#import "CallBack.h"
#import "KonyValueConversionUtility.h"


#import <QRPOC/QRPOC-Swift.h>
#import "JSQRCodeFFIiOSFFIAPI.h"


#import "ScanQRWrapperClass.h"

#define apiError @"API Error "
@implementation JSQRCodeFFIiOSFFIAPI



#pragma mark -
#pragma mark JSBindings

+ (NSArray *)scanQRCode:(NSArray *)args {

	id arg = nil;


	/* 1. callbackFunction (type: Function) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	CallBack *callbackFunction = nil;
	callbackFunction = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[ScanQRWrapperClass launchNativeControllerOnKonyForm:]; */
	[ScanQRWrapperClass launchNativeControllerOnKonyForm:callbackFunction];

	[callbackFunction release];

	return nil;
}

+ (NSArray *)genQRCode:(NSArray *)args {

	id arg = nil;


	/* 1. input (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *input = nil;
	input = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];

	/* 2. callbackFunction (type: Function) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	CallBack *callbackFunction = nil;
	callbackFunction = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[ScanQRWrapperClass generateQRCode::]; */
	[ScanQRWrapperClass generateQRCode:input :callbackFunction];

	[input release];
	[callbackFunction release];

	return nil;
}

/** @brief JS API namespace
 **/
+ (NSString *) jsStaticAPINamespace
{
	return @"QRCodeFFIiOS";
}

#pragma mark -
#pragma mark JSRuntime static API registration supporting methods 

/** @brief Load the js bindings into JS Runtime
 **/
+ (NSDictionary *) staticAPIMethodMapping
{

	NSDictionary *konyApplicationAPIs = [NSDictionary dictionaryWithObjectsAndKeys: \
					@"scanQRCode:", @"scanQRCode", \
					@"genQRCode:", @"genQRCode", \
					nil];

	return konyApplicationAPIs;

}

@end
