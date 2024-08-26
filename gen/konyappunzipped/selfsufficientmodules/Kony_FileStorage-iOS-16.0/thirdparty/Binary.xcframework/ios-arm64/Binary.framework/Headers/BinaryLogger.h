//
//  BinaryLogger.h
//  Binary
//
//  Created by mukesh.sharma@kony.com on 10/08/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryLogger : NSObject

/**
 Blocking the default init method to enforce Singleton instance
 */
- (id) init __attribute__((unavailable("Must use sharedInstance instead.")));


/**
 Returns a singleton instance of <code>BinaryLogger</code>. If a instance of this
 class is needed, then this is ONLY way as the default <code>init</code> method
 is marked unavailable.
 
 @return Singleton instance of <code>BinaryLogger</code>
 */
+ (instancetype)sharedInstance;

/**
  Debug level logging - used for debugging
  @param statement Statement to be logged
 */
- (void)logDebug:(NSString *)statement;
/**
 Error level logging - used for logging of errors
 @param statement Statement to be logged
 */
- (void)logError:(NSString *)statement;

/**
 Fatal level logging - when something goes terribly wrong e.g. app crash
 @param statement Statement to be logged
 */
- (void)logFatal:(NSString *)statement;

/**
 Info level logging - logs useful information only
 @param statement Statement to be logged
 */
- (void)logInfo:(NSString *)statement;

/**
 Logging of PERF statements - useful for measuring performance of various operations
 @param statement Statement to be logged
 */
- (void)logPerformance:(NSString *)statement;

/**
 Trace level logging - logs every small detail - useful for tracing complete flow of code in a module
 @param statement Statement to be logged
 */
- (void)logTrace:(NSString *)statement;

/**
 Warning level logging
 @param statement Statement to be logged
 */
- (void)logWarning:(NSString *)statement;

- (void)flush;

-(void)setLogLevel:(NSString*)logLevel;

@end

/** defining macros for ease of accessing logger in the code */

#define LogInfo(formatString,...) \
[[BinaryLogger sharedInstance]logInfo:[NSString stringWithFormat:formatString,##__VA_ARGS__]];

#define LogError(formatString,...) \
[[BinaryLogger sharedInstance]logError:[NSString stringWithFormat:formatString,##__VA_ARGS__]];

#define LogDebug(formatString,...) \
[[BinaryLogger sharedInstance]logDebug:[NSString stringWithFormat:formatString,##__VA_ARGS__]];

#define LogWarning(formatString,...) \
[[BinaryLogger sharedInstance]logWarning:[NSString stringWithFormat:formatString,##__VA_ARGS__]];

#define LogTrace(formatString,...) \
[[BinaryLogger sharedInstance]logTrace:[NSString stringWithFormat:formatString,##__VA_ARGS__]];

#define LogFatal(formatString,...) \
[[BinaryLogger sharedInstance]logFatal:[NSString stringWithFormat:formatString,##__VA_ARGS__]];

#define LogPerf(formatString,...) \
[[BinaryLogger sharedInstance]logPerformance:[NSString stringWithFormat:formatString,##__VA_ARGS__]];

