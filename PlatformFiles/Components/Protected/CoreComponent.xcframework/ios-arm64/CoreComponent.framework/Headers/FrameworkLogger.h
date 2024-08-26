//
//  FrameworkLogger.h
//  CoreComponent
//
//  Created by Saianuhya Kodimela on 26/06/18.
//  Copyright © 2018 Aravind Macharla. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, LogPersistencyType) {
    LogPersistencyTypeConsole = 0,
    LogPersistencyTypeFile,
    LogPersistencyTypeNetwork
};

typedef NS_ENUM(NSInteger, LogLevelType) {
    LogLevelTypeDebug = 2,
    LogLevelTypeInfo = 4,
    LogLevelTypeWarn = 8,
    LogLevelTypeFatal = 32,
    LogLevelTypeError = 16,
    LogLevelTypeTrace = 1,
    LogLevelTypeNone = 63,
    LogLevelTypeAll = 0
};

@interface FrameworkLogger : NSObject

@property BOOL logSwitcherFlag;
@property (nonatomic, strong) NSMutableArray* disabledFrameworkLogTypes;
+ (id)sharedFrameworkLogger;
+ (void)setLogLevel:(LogLevelType)loglevel;
+ (void)setPersistor:(LogPersistencyType)persistor;
- (void)log:(NSString *)logStmt withLogLevel:(LogLevelType)logLevel;

@end
