//
//  LogLevelConstants.h
//  Logger
//
//  Created by Harshini Bonam on 26/08/16.
//  Copyright © 2016 kony. All rights reserved.
//


/**
 * Log levels for the Logger
 */
#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, LogLevel) {
    /**
     * Logs Nothing
     */
    LogLevelNone        = 127,
    
    /**
     * Logs Traces
     */
    LogLevelTrace       = 1,
    
    /**
     * Logs messages relevant to debugging of code (by developers)
     */
    LogLevelDebug       = 2,
    
    /**
     * Logs Info
     */
    LogLevelInfo        = 4,
    
    /**
     * Logs Perfs
     */
    LogLevelPerf        = 8,
    
    /**
     * Logs Warnings 
     */
    LogLevelWarning     = 16,
    
    /**
     * Logs errors
     */
    LogLevelError       = 32,
    
    /**
     * Logs Fatal Errors
     */
    LogLevelFatal       = 64,
    
    /**
     * Logs every level of log statements
     */
    LogLevelAll         = 0
};

@interface LogLevelConstants :NSObject

@end
