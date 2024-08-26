//
//  JSSSOFFIFFIAPI.m
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

//# import "lglobals.h"

#import "CallBack.h"
#import "KonyValueConversionUtility.h"


#import <QRPOC/QRPOC-Swift.h>
#import "JSSSOFFIFFIAPI.h"


#import "keychainFFI.h"

#define apiError @"API Error "
@implementation JSSSOFFIFFIAPI



#pragma mark -
#pragma mark JSBindings

+ (NSArray *)saveToken:(NSArray *)args {

	id arg = nil;


	/* 1. item (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *item = nil;
	item = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. key (type: String) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	NSString *key = nil;
	key = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];


	/* + (BOOL)[keychainFFI setItem:forKey:]; */
	BOOL returnValue = [keychainFFI setItem:item forKey:key];

	[item release];
	[key release];

	id convertedRetValue = [[KonyValueConversionUtility sharedInstance] convertValue:[NSNumber numberWithBool:returnValue] toType:KonyValueTypeJSBoolean error:nil];

	return [NSArray arrayWithObject:(convertedRetValue)?convertedRetValue:[NSNull null]];
}

+ (NSArray *)getToken:(NSArray *)args {

	id arg = nil;


	/* 1. key (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *key = nil;
	key = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];


	/* + (NSString *)[keychainFFI itemForKey:]; */
	id returnValue = [keychainFFI itemForKey:key];

	[key release];

	id convertedRetValue = [[KonyValueConversionUtility sharedInstance] convertValue:returnValue toType:KonyValueTypeJSString error:nil];

	return [NSArray arrayWithObject:(convertedRetValue)?convertedRetValue:[NSNull null]];
}

+ (NSArray *)deleteToken:(NSArray *)args {

	id arg = nil;


	/* 1. key (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *key = nil;
	key = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];


	/* + (BOOL)[keychainFFI deleteItemForKey:]; */
	BOOL returnValue = [keychainFFI deleteItemForKey:key];

	[key release];

	id convertedRetValue = [[KonyValueConversionUtility sharedInstance] convertValue:[NSNumber numberWithBool:returnValue] toType:KonyValueTypeJSBoolean error:nil];

	return [NSArray arrayWithObject:(convertedRetValue)?convertedRetValue:[NSNull null]];
}

/** @brief JS API namespace
 **/
+ (NSString *) jsStaticAPINamespace
{
	return @"SSOFFI";
}

#pragma mark -
#pragma mark JSRuntime static API registration supporting methods 

/** @brief Load the js bindings into JS Runtime
 **/
+ (NSDictionary *) staticAPIMethodMapping
{

	NSDictionary *konyApplicationAPIs = [NSDictionary dictionaryWithObjectsAndKeys: \
					@"getToken:", @"getToken", \
					@"deleteToken:", @"deleteToken", \
					@"saveToken:", @"saveToken", \
					nil];

	return konyApplicationAPIs;

}

@end
