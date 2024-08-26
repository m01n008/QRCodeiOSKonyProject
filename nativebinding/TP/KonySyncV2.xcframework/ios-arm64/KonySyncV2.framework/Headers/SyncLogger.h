//
//  SyncLogger.h
//  KonySyncV2
//
//  Created by ambuj.kumar@kony.com on 03/02/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SyncLogger : NSObject

/**
 Blocking the default init method to enforce Singleton instance
 */
- (id) init __attribute__((unavailable("Must use sharedInstance instead.")));


/**
 Returns a singleton instance of <code>SyncLogger</code>. If a instance of this
 class is needed, then this is ONLY way as the default <code>init</code> method
 is marked unavailable.
 
 @return Singleton instance of <code>SyncLogger</code>
 */
+ (instancetype)sharedInstance;

/**
  Debug level logging - used for debugging
  @param statement Statement to be logged
  @param prefix A prefix to be appended to the log statement. It helps in filtering of logs based on area/feature/scope etc
 */
- (void)logDebug:(NSString *)statement withPrefix:(NSString *) prefix;

/**
 Error level logging - used for logging of errors
 @param statement Statement to be logged
 @param prefix A prefix to be appended to the log statement. It helps in filtering of logs based on area/feature/scope etc
 */
- (void)logError:(NSString *)statement withPrefix:(NSString *) prefix;

/**
 Fatal level logging - when something goes terribly wrong e.g. app crash
 @param statement Statement to be logged
 @param prefix A prefix to be appended to the log statement. It helps in filtering of logs based on area/feature/scope etc
 */
- (void)logFatal:(NSString *)statement withPrefix:(NSString *) prefix;

/**
 Info level logging - logs useful information only
 @param statement Statement to be logged
 @param prefix A prefix to be appended to the log statement. It helps in filtering of logs based on area/feature/scope etc
 */
- (void)logInfo:(NSString *)statement withPrefix:(NSString *) prefix;

/**
 Logging of PERF statements - useful for measuring performance of various operations
 @param statement Statement to be logged
 @param prefix A prefix to be appended to the log statement. It helps in filtering of logs based on area/feature/scope etc
 */
- (void)logPerformance:(NSString *)statement withPrefix:(NSString *) prefix;

/**
 Trace level logging - logs every small detail - useful for tracing complete flow of code in a module
 @param statement Statement to be logged
 @param prefix A prefix to be appended to the log statement. It helps in filtering of logs based on area/feature/scope etc
 */
- (void)logTrace:(NSString *)statement withPrefix:(NSString *) prefix;

/**
 Warning level logging
 @param statement Statement to be logged
 @param prefix A prefix to be appended to the log statement. It helps in filtering of logs based on area/feature/scope etc
 */
- (void)logWarning:(NSString *)statement withPrefix:(NSString *) prefix;

- (void)flush;

-(void)setLogLevel:(NSString*)logLevel;

@end
