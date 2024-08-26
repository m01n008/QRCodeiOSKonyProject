//
//  LogStatement.h
//  Logger
//
//  Created by Harshini Bonam on 09/09/16.

//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LoggerError.h"
#import "LogLevelConstants.h"

@interface LogStatement :NSObject

/**
 * LogLevel for the logging statement
 */
@property (nonatomic, readwrite) LogLevel logLevel;
@property (nonatomic, readonly) NSString *sessionID;
@property (nonatomic, readonly) NSString *threadInfo;
@property (nonatomic, readonly) NSString *fileName;
@property (nonatomic, readonly) NSString *className;
@property (nonatomic, readonly) NSString *methodName;
@property (nonatomic, readonly) NSString *lineNo;

- (instancetype) initWithLogger:(NSString *)loggerName
                       LogLevel:(LogLevel) logLevel
                      Statement:(NSDictionary *)logStatement
                          Error:(LoggerError **)error;

- (NSString *)getLoggerName;
- (NSDate *)getDate;
- (NSString *)getSessionId;
- (NSString *)getLogStatement;
- (NSString *)deviceID;
- (NSString *)deviceType;

@end
