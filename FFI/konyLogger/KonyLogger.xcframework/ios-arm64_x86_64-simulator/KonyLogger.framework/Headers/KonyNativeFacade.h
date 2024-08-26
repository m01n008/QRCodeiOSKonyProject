//
//  KonyNativeFacade.h
//  logger_abc
//
//  Created by MADP on 06/12/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IPersistor.h"
#import "LoggerError.h"
#import "LoggerConfig.h"
#import "BaseLogPersister.h"
#import "LogListener.h"

@interface KonyNativeFacade : NSObject

/**-----------------------------------------------------------------------------
 * @name Setting the logger config through Native layer.
 
 Sets the loggerConfig to the loggerEngine.
 This is the first method that must be invoked to initialize the logger engine from the FFI layer.
 @param loggerConfig -The logger configuration for the loggerEngine, containing logFilterConfig and LogAccumulatorConfig.
 */
- (id)initWithLogger:(NSString *)loggerName
              config:(LoggerConfig*)loggerConfig;

/**-----------------------------------------------------------------------------
 * @name Adding the persister through facade layer.
 * -----------------------------------------------------------------------------
 */

/**
 Adds persisterConfig to the the loggerEngine.
 This method can be invoked any number of times to add multiple persisters each time.
 @param persisterConfig -The persister configuration for the loggerEngine, containing persisterType,  and LogAccumulatorConfig.
 */
+ (BaseLogPersister *)setPersisterConfig:(id<IPersistor>)persisterConfig;

+(void)setConfig:(LoggerConfig *)config;

+(void) activatePersistors: (NSNumber*) persistorType;
+(void) deactivatePersistors: (NSNumber*) persistorType;
+(void) subscribeLogListener:(LogListener) logListener;
+(void) unsubscribeLogListener;

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
 * @name Main logging utilities through facade layer.
 * -----------------------------------------------------------------------------
 */

/**
 * SET LOG LEVEL
 * @param logLevel -logLevel to be set to logFilter
 */
+ (void)setLogLevel:(NSUInteger) logLevel;

/**
 * SET LOG LEVEL
 * @param logLevel -logLevel to be set and activate network persister
 */
+(void)setLogLevelAndActivateNetworkPersister:(NSString*)logLevel;

/**
 * GET LOG LEVEL
 * @return logLevel -logLevel set to logFilter
 */
+ (NSUInteger)getLogLevel;

/**
 * FLUSH the accumulated logs.
 */
+ (void)flush;

/**
 * setting indirection level.
 * @param _indirectionLevel hop count to set indirection
 */
-(void)setIndirectionLevel:(int) _indirectionLevel;

/**
 * setting Claims Token for authorisation
 */
+(void)setClaimsToken:(NSString *) claimsToken;
/**
 * TRACE statement
 * @param statement -Statement to be logged
 */
- (void)logTrace:(NSString *)statement;

/**
 * DEBUG statement
 * @param statement -Statement to be logged
 */
- (void)logDebug:(NSString *)statement;

/**
 * PERF statement
 * @param statement -Statement to be logged
 */
- (void)logPerf:(NSString *)statement;

/**
 * WARNING statement
 * @param statement -Statement to be logged
 */
- (void)logWarning:(NSString *)statement;

/**
 * INFO statement
 * @param statement -Statement to be logged
 */
- (void)logInfo:(NSString *)statement;

/**
 * ERROR statement
 * @param statement -Statement to be logged
 */
- (void)logError:(NSString *)statement;

/**
 * FATAL statement
 * @param statement -Statement to be logged
 */
- (void)logFatal:(NSString *)statement;

@end
