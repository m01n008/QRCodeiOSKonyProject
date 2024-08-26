//
//  JSKonyLoggerInitializeLoggerFFIClass.m
//  JS - FFI bindings
//
//  This is a generated file. Do not modify this file.
//  Copyright 2011 Kony Labs. All rights reserved.
//

//# import "lglobals.h"

#import "CallBack.h"
#import "KonyValueConversionUtility.h"


#import <QRPOC/QRPOC-Swift.h>
#import "JSKonyLoggerInitializeLoggerFFIClass.h"


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
@implementation JSKonyLoggerInitializeLoggerFFIClass



#pragma mark -
#pragma mark JSBindings

/** @brief JS Object initialization
**/
- (id)initWithArguments:(NSArray *)args {
  if((self = [super init])) {

	id arg = nil;


	/* 1. loggerName (type: String) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	NSString *loggerName = nil;
	loggerName = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeString error:nil] retain];


	/* - (id)[LoggerAbstraction initWithLogger:]; */
	id returnValue = [[LoggerAbstraction alloc]  initWithLogger:loggerName];

	[loggerName release];

	self.value = returnValue;
  [returnValue autorelease]; }
  return self;
}

- (id)logTrace:(NSArray *)args {

	id arg = nil;


	/* 1. message (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *message = nil;
	message = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* - (void)[LoggerAbstraction logTrace:]; */
	[(LoggerAbstraction *)[self value]  logTrace:message];

	[message release];

	return nil;
}

- (id)logDebug:(NSArray *)args {

	id arg = nil;


	/* 1. message (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *message = nil;
	message = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* - (void)[LoggerAbstraction logDebug:]; */
	[(LoggerAbstraction *)[self value]  logDebug:message];

	[message release];

	return nil;
}

- (id)logWarning:(NSArray *)args {

	id arg = nil;


	/* 1. message (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *message = nil;
	message = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* - (void)[LoggerAbstraction logWarning:]; */
	[(LoggerAbstraction *)[self value]  logWarning:message];

	[message release];

	return nil;
}

- (id)logInfo:(NSArray *)args {

	id arg = nil;


	/* 1. message (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *message = nil;
	message = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* - (void)[LoggerAbstraction logInfo:]; */
	[(LoggerAbstraction *)[self value]  logInfo:message];

	[message release];

	return nil;
}

- (id)logError:(NSArray *)args {

	id arg = nil;


	/* 1. message (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *message = nil;
	message = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* - (void)[LoggerAbstraction logError:]; */
	[(LoggerAbstraction *)[self value]  logError:message];

	[message release];

	return nil;
}

- (id)logFatal:(NSArray *)args {

	id arg = nil;


	/* 1. message (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *message = nil;
	message = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* - (void)[LoggerAbstraction logFatal:]; */
	[(LoggerAbstraction *)[self value]  logFatal:message];

	[message release];

	return nil;
}

- (id)logPerf:(NSArray *)args {

	id arg = nil;


	/* 1. message (type: Object) */
	arg = nil;
	if([args count] > 0) { 
		arg = [args objectAtIndex:0];
	}

	/* Mapping Object->NSDictionary */
	NSDictionary *message = nil;
	message = [[[KonyValueConversionUtility sharedInstance] convertValue:arg toType:KonyValueTypeNativeDictionary error:nil] retain];


	/* - (void)[LoggerAbstraction logPerf:]; */
	[(LoggerAbstraction *)[self value]  logPerf:message];

	[message release];

	return nil;
}


/** @brief JS Object namespace
 **/
+ (NSString *)classJSNamespace {
    return @"KonyLogger";
}

/** @brief JS Object className
 **/
+ (NSString *)className {
    return @"InitializeLogger";
}

/** @brief JS Object methods
 **/
+ (NSSet *)methods {
    //TODO Some look up must be here to return the JS Method Names...
    return [NSSet setWithObjects:@"logError", @"logFatal", @"logDebug", @"logPerf", @"logTrace", @"logInfo", @"logWarning",  nil];
}

+ (NSSet*)fullSetOfMethods {
    return [self methods];
}

/** @brief JS Object supported widgetType
 **/
+ (KonyWidgetType)supportedWidgetType {
	return KonyWidgetUnknown;
}

/** @brief JS Object callback upon registration with JS Engine
 **/
+ (void)setUpJSWrapper {
    [[KonyValueConversionUtility sharedInstance] registerExternalClass:self forInternalClass:[LoggerAbstraction class]];
}



@end

