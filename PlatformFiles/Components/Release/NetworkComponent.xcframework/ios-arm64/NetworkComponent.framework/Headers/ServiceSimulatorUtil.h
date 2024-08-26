//
//  ServiceSimulatorUtil.h
//  VM
//
//  Created by KH035 on 7/9/13.
//
//

#import <Foundation/Foundation.h>

#define RECORD_MODE @"RecordMode"
#define PLAY_MODE   @"PlayMode"
#define INACTIVE_MODE @"InactiveMode"

#define IS_IN_PLAY_MODE      ([[ServiceSimulatorUtil getServiceSimulatorMode] isEqualToString:PLAY_MODE])
#define IS_IN_RECORD_MODE    ([[ServiceSimulatorUtil getServiceSimulatorMode] isEqualToString:RECORD_MODE])
#define IS_IN_INACTIVE_MODE    ([[ServiceSimulatorUtil getServiceSimulatorMode] isEqualToString:INACTIVE_MODE])

@interface ServiceSimulatorUtil : NSObject

+(BOOL) shouldEnableServiceSimulator;
+(NSString*) getServiceSimulatorMode;
+(NSDictionary*) getServiceSimulatorDictionary;
+(NSArray*) getIgnoreServiceCallKeys;

+(NSString*) buildUniqueIDFromDictionary:(NSDictionary*)dictionary andURLString:(NSString*)URLString ignoringServiceCallKeys:(NSArray*)ignoreServiceCallKeys;
+(NSString*) buildStringFromDictionary:(NSDictionary*)dictionary ignoringServiceCallKeys:(NSArray *)ignoreServiceCallKeys;
+(NSString*) buildStringFromURLString:(NSString*)URLString ignoringServiceCallKeys:(NSArray *)ignoreServiceCallKeys;
+(NSString*) buildUniqueIDFromArrayOfStrings:(NSArray*)strArray ignoringServiceCallKeys:(NSArray*)ignoreServiceCallKeys;

+(NSString*) buildUniqueIDFromDictionary:(NSDictionary*)dictionary;
+(NSString*) buildUniqueIDFromURLString:(NSString*)URLString;

+(NSString*) getDecodedURLString:(NSString*) encodedURLString;
@end


