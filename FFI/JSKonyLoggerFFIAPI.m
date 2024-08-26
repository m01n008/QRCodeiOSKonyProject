//
//  JSKonyLoggerFFIAPI.m
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

//# import "lglobals.h"

#import "CallBack.h"
#import "KonyValueConversionUtility.h"


#import <QRPOC/QRPOC-Swift.h>
#import "JSKonyLoggerFFIAPI.h"


#import "KonyLogger/BaseLogPersister.h"
#import "KonyLogger/IPersistor.h"
#import "KonyLogger/FormatError.h"
#import "KonyLogger/ConslePersistorConfig.h"
#import "KonyLogger/PersistError.h"
#import "KonyLogger/IAccumulatorListener.h"
#import "KonyLogger/LogLevelConstants.h"
#import "KonyLogger/LoggerConstants.h"
#import "KonyLogger/LoggerConfig.h"
#import "KonyLogger/LoggerError.h"
#import "KonyLogger/NetworkService.h"
#import "KonyLogger/TimeZonePreferences.h"
#import "LoggerAbstraction.h"
#import "KonyLogger/LogListener.h"
#import "KonyLogger/KonyJSFacade.h"
#import "KonyLogger/KonyNativeFacade.h"
#import "KonyLogger/LogStatement.h"
#import "KonyLogger/FilePersistorConfig.h"
#import "KonyLogger/KonyLogger.h"
#import "KonyLogger/NetworkPersistorConfig.h"

#define apiError @"API Error "
@implementation JSKonyLoggerFFIAPI



#pragma mark -
#pragma mark JSBindings

+ (NSArray *)getLogLevel:(NSArray *)args {



	/* + (int)[LoggerAbstraction getLogLevel]; */
	int returnValue = [LoggerAbstraction getLogLevel];


	id convertedRetValue = [[KonyValueConversionUtility sharedInstance] convertValue:[NSNumber numberWithInt:returnValue] toType:KonyValueTypeJSNumber error:nil];

	return [NSArray arrayWithObject:(convertedRetValue)?convertedRetValue:[NSNull null]];
}

+ (NSArray *)flush:(NSArray *)args {



	/* + (void)[LoggerAbstraction flush]; */
	[LoggerAbstraction flush];


	return nil;
}

+ (NSArray *)setConfig:(NSArray *)args {

	id arg = nil;


	/* 1. config (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *config = nil;
	config = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* + (void)[LoggerAbstraction setConfig:]; */
	[LoggerAbstraction setConfig:config];

	[config release];

	return nil;
}

+ (NSArray *)setPersistorConfig:(NSArray *)args {

	id arg = nil;


	/* 1. persistor (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *persistor = nil;
	persistor = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* + (void)[LoggerAbstraction setPersisterConfig:]; */
	[LoggerAbstraction setPersisterConfig:persistor];

	[persistor release];

	return nil;
}

+ (NSArray *)setLogLevel:(NSArray *)args {

	id arg = nil;


	/* 1. logLevel (type: Number) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* number mapped to int */
	arg = [[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeNumber error:nil];

	int logLevel = 0;
	if([arg isKindOfClass:[NSNumber class]]) {
		logLevel = [arg intValue];
	}



	/* + (void)[LoggerAbstraction setLogLevel:]; */
	[LoggerAbstraction setLogLevel:logLevel];


	return nil;
}

+ (NSArray *)activatePersistors:(NSArray *)args {

	id arg = nil;


	/* 1. activatedList (type: Number) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* number mapped to NSNumber */
	arg = [[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeNumber error:nil];

	NSNumber *activatedList = nil;
	if([arg isKindOfClass:[NSNumber class]]) {
		activatedList = [arg retain];
	}



	/* + (void)[LoggerAbstraction activatePersistors:]; */
	[LoggerAbstraction activatePersistors:activatedList];

	[activatedList release];

	return nil;
}

+ (NSArray *)deactivatePersistors:(NSArray *)args {

	id arg = nil;


	/* 1. deactivatedList (type: Number) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* number mapped to NSNumber */
	arg = [[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeNumber error:nil];

	NSNumber *deactivatedList = nil;
	if([arg isKindOfClass:[NSNumber class]]) {
		deactivatedList = [arg retain];
	}



	/* + (void)[LoggerAbstraction deactivatePersistors:]; */
	[LoggerAbstraction deactivatePersistors:deactivatedList];

	[deactivatedList release];

	return nil;
}

+ (NSArray *)setClaimsToken:(NSArray *)args {

	id arg = nil;


	/* 1. claimsToken (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *claimsToken = nil;
	claimsToken = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];


	/* + (void)[LoggerAbstraction setClaimsToken:]; */
	[LoggerAbstraction setClaimsToken:claimsToken];

	[claimsToken release];

	return nil;
}

+ (NSArray *)subscribeLogListener:(NSArray *)args {

	id arg = nil;


	/* 1. logListener (type: Function) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	CallBack *logListener = nil;
	logListener = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeCallBack error:nil] retain];


	/* + (void)[LoggerAbstraction subscribeLogListener:]; */
	[LoggerAbstraction subscribeLogListener:logListener];

	[logListener release];

	return nil;
}

+ (NSArray *)unsubscribeLogListener:(NSArray *)args {



	/* + (void)[LoggerAbstraction unsubscribeLogListener]; */
	[LoggerAbstraction unsubscribeLogListener];


	return nil;
}

+ (NSArray *)setGlobalRequestParam:(NSArray *)args {

	id arg = nil;


	/* 1. paramName (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *paramName = nil;
	paramName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. paramValue (type: String) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	NSString *paramValue = nil;
	paramValue = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 3. paramType (type: String) */
	arg = nil;
	if([args count] > 2) { 
		arg = [args objectAtIndex:2];
	}

	NSString *paramType = nil;
	paramType = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];


	/* + (void)[LoggerAbstraction setGlobalRequestParam:paramValue:paramType:]; */
	[LoggerAbstraction setGlobalRequestParam:paramName paramValue:paramValue paramType:paramType];

	[paramName release];
	[paramValue release];
	[paramType release];

	return nil;
}

+ (NSArray *)removeGlobalRequestParam:(NSArray *)args {

	id arg = nil;


	/* 1. paramName (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *paramName = nil;
	paramName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];

	/* 2. paramType (type: String) */
	arg = nil;
	if([args count] > 1) { 
		arg = [args objectAtIndex:1];
	}

	NSString *paramType = nil;
	paramType = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];


	/* + (void)[LoggerAbstraction removeGlobalRequestParam:paramType:]; */
	[LoggerAbstraction removeGlobalRequestParam:paramName paramType:paramType];

	[paramName release];
	[paramType release];

	return nil;
}

+ (NSArray *)resetGlobalRequestParams:(NSArray *)args {



	/* + (void)[LoggerAbstraction resetGlobalRequestParams]; */
	[LoggerAbstraction resetGlobalRequestParams];


	return nil;
}

+ (NSArray *)configure:(NSArray *)args {



	/* + (void)[LoggerAbstraction configure]; */
	[LoggerAbstraction configure];


	return nil;
}

/** @brief JS API namespace
 **/
+ (NSString *) jsStaticAPINamespace
{
	return @"KonyLogger";
}

#pragma mark -
#pragma mark JSRuntime static API registration supporting methods 

/** @brief Load the js bindings into JS Runtime
 **/
+ (NSDictionary *) staticAPIMethodMapping
{

	NSDictionary *konyApplicationAPIs = [NSDictionary dictionaryWithObjectsAndKeys: \
					@"setGlobalRequestParam:", @"setGlobalRequestParam", \
					@"setPersistorConfig:", @"setPersistorConfig", \
					@"resetGlobalRequestParams:", @"resetGlobalRequestParams", \
					@"subscribeLogListener:", @"subscribeLogListener", \
					@"setConfig:", @"setConfig", \
					@"flush:", @"flush", \
					@"activatePersistors:", @"activatePersistors", \
					@"configure:", @"configure", \
					@"removeGlobalRequestParam:", @"removeGlobalRequestParam", \
					@"setLogLevel:", @"setLogLevel", \
					@"getLogLevel:", @"getLogLevel", \
					@"unsubscribeLogListener:", @"unsubscribeLogListener", \
					@"deactivatePersistors:", @"deactivatePersistors", \
					@"setClaimsToken:", @"setClaimsToken", \
					nil];

	return konyApplicationAPIs;

}

@end
