//
//  LoggerAbstraction.h
//  LoggerAbstraction
//
//  Created by Harshini Bonam on 14/06/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CallBack;

@interface LoggerAbstraction : NSObject

- (id)initWithLogger:(NSString *)loggerName;

+ (void)setConfig:(NSDictionary *) loggerConfig;

+ (void)setPersisterConfig:(NSDictionary *) persisterConfig;

+ (void)activatePersistors: (NSNumber*) persistorType;

+ (void)deactivatePersistors: (NSNumber*) persistorType;

+ (void)setClaimsToken:(NSString *) claimsToken;

+ (void)subscribeLogListener:(CallBack *)logListener;

+ (void)unsubscribeLogListener;

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

/**
 * Method to configure logger
 */
+ (void)configure;

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
 * TRACE statement
 * @param statement Statement to be logged
 */
- (void)logTrace:(NSDictionary *) statement;

/**
 * DEBUG statement
 * @param statement Statement to be logged
 */
- (void)logDebug:(NSDictionary *) statement;

/**
 * WARNING statement
 * @param statement Statement to be logged
 */
- (void)logWarning:(NSDictionary*) statement;

/**
 * INFO statement
 * @param statement Statement to be logged
 */
- (void)logInfo:(NSDictionary *) statement;

/**
 * ERROR statement
 * @param statement Statement to be logged
 */
- (void)logError:(NSDictionary *) statement;

/**
 * FATAL statement
 * @param statement Statement to be logged
 */
- (void)logFatal:(NSDictionary *) statement;

@end
