//
//  CommonNotificationSettingsAPI.h
//  VM
//
//  Created by Praveen.kothapeta on 01/04/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSObjectParsing.h>

@interface CommonNotificationSettingsAPI : JSObjectParsing

+(NSArray*) createAction:(NSArray*)arguments;
+(NSArray*) createCategory:(NSArray*)arguments;
+(void) registerCategory:(NSArray*)arguments;
+(void) setProperties :(NSArray*)arguments;

@end
