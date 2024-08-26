//
//  LoggerConfig.h
//  Logger
//
//  Created by kony on 27/04/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPersistor.h"
#import "LogLevelConstants.h"
#import "TimeZonePreferences.h"

@interface LoggerConfig : NSObject{
    NSString * appID;
    NSString * appVersion;
    NSString * sessionID;
    Boolean overrideConfig;
    NSInteger bytesLimit;
    NSInteger statementsLimit;
    LogLevel logLevel;
    NSString * timeFormat;
    TimeZonePreference timeZone;
    NSNumber *activatedPersistorList;
    NSMutableArray *persistors;
}

-(instancetype)init;

-(void) setAppId:(NSString *) Id;

-(NSString *) getAppId;

-(void) setAppVersion: (NSString *) version;

-(NSString *) getAppVersion;

-(void) setSessionID: (NSString*) Id;

-(NSString *) setSessionID;

-(void) setOverrideConfig: (Boolean) overrideConfig;

-(Boolean) isOverrideConfig;

-(void) setBytesLimit: (NSInteger) limit;

-(NSInteger) getBytesLimit;

-(void) setStatementsLimit: (NSInteger) limit;

-(NSInteger) getStatementsLimit;

-(void) setLogLevel: (LogLevel) level;

-(LogLevel) getLogLevel;

-(void) setTimeFormat: (NSString *) format;

-(NSString *) getTimeFormat;


-(void) setTimeZone: (TimeZonePreference) timeZonePreference;

-(TimeZonePreference) getTimeZone;


-(void) setPersistorList: (NSMutableArray*) persistorsList;

-(NSMutableArray *) getPersistorList;

-(void) setActivatedPersistorList: (NSNumber*) activatedList;

-(NSNumber *) getActivatedPersistorList;

@end
