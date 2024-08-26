//
//  KonyJSFacade.h
//  Logger
//
//  Created by Harshini Bonam on 09/09/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LoggerConfig.h"

@class CallBack;
/**
 The KonyJSFacade Class is the FFI layer class that exposes the Logging APIs to the Javascript layer.
 The static methods exposed are:
 + (void)setConfig:(NSDictionary *)loggerConfig errorCallback:(CallBack *)errorCallback;
 + (void)addPersister:(NSDictionary *) persisterConfig errorCallback:(CallBack *)errorCallback;
 + (void)logTrace:(NSString *) statement;
 + (void)logDebug:(NSString *) statement;
 + (void)logWarning:(NSString*) statement;
 + (void)logInfo:(NSString *) statement;
 + (void)logError:(NSString *) statement;
 + (void)logFatal:(NSString *) statement;
 
 */



@interface KonyJSFacade :NSObject

/**-----------------------------------------------------------------------------
 * @name Setting the logger config through FFI layer.
 * -----------------------------------------------------------------------------
 */

- (id)init;

- (id)initWithLogger:(NSString *)loggerName;

- (id)initWithLogger:(NSString *)loggerName
              config:(NSDictionary *)config;

/**
 Sets the loggerConfig to the loggerEngine.
 This is the first method that must be invoked to initialize the logger engine.
 @param loggerConfig The logger configuration for the loggerEngine, containing logFilterConfig and LogAccumulatorConfig.
 */
+ (void)setConfig:(NSDictionary *) loggerConfig;
/**-----------------------------------------------------------------------------
 * @name Adding the persister through FFI layer.
 * -----------------------------------------------------------------------------
 */

/**
 Adds persisterConfig to the the loggerEngine.
 This method can be invoked any number of times to add multiple persisters each time.
 @param persisterConfig The persister configuration for the loggerEngine, containing persisterType, and its properties.
 */
+ (void)setPersisterConfig:(NSDictionary *)persisterConfig;

+(void) activatePersistors:(NSNumber *)persistorType;

+(void) deactivatePersistors:(NSNumber *)persistorType;

/**
 * Method sets global request parameters for network calls
 *
 * @param paramName paramName name of the parameter
 * @param paramValue paramValue value of parameter
 * @param paramType paramType type of parameter
 */
+ (void)setGlobalRequestParam:(NSString *)paramName
                   paramValue:(NSString *)paramValue
                    paramType:(NSString *)paramType;


/**
 * Method gets global request parameters
 *
 * @param paramType type of parameter
 * @return dictionary of global request parameters
 */
+ (NSDictionary *)getGlobalRequestParams:(NSString *)paramType;


/**
 * Method removes global request parameter
 *
 * @param paramName name of the parameter
 * @param paramType type of parameter
 */
+ (void)removeGlobalRequestParam:(NSString *)paramName
                       paramType:(NSString *)paramType;


/**
 * Method resets global request parameters
 */
+ (void)resetGlobalRequestParams;

/**-----------------------------------------------------------------------------
 * @name Main logging utilities through FFI layer.
 * -----------------------------------------------------------------------------
 */

/**
 * SET LOG LEVEL 
 * @param logLevel logLevel to be set to logFilter
 */
+ (void)setLogLevel:(int)logLevel;

/**
 * GET LOG LEVEL
 * @return logLevel logLevel set to logFilter
 */
+ (int)getLogLevel;

/**
 * FLUSH the accumulated logs.
 */
+ (void)flush;

/**
 * setting Claims Token for authorisation
 */
+(void)setClaimsToken:(NSString *) claimsToken;
/**
 * TRACE statement
 * @param statement Statement to be logged
 */
- (void)logTrace:(NSDictionary *)statement;

/**
 * DEBUG statement
 * @param statement Statement to be logged
 */
- (void)logDebug:(NSDictionary *)statement;

/**
 * PERF statement
 * @param statement Statement to be logged
 */
- (void)logPerf:(NSDictionary*)statement;

/**
 * WARNING statement
 * @param statement Statement to be logged
 */
- (void)logWarning:(NSDictionary*)statement;

/**
 * INFO statement
 * @param statement Statement to be logged
 */
- (void)logInfo:(NSDictionary *)statement;

/**
 * ERROR statement
 * @param statement Statement to be logged
 */
- (void)logError:(NSDictionary *)statement;

/**
 * FATAL statement
 * @param statement Statement to be logged
 */
- (void)logFatal:(NSDictionary *)statement;

/**
 * subscribes given log listener to receive new logs until unsubscribed
 * Only one log listener is supported, listener with latest subscription is retained
 */
+ (void)subscribeLogListener:(CallBack *)logListener;

/**
 * unsubscribes the subscribed log listener
 */
+ (void)unsubscribeLogListener;

/**
 * configure logger by reading infoplist_configuration.json properties file
 */
+ (void)configure;

@end
