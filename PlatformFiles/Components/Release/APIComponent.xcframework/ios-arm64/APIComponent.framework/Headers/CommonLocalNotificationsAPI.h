//
//  CommonLocalNotifications.h
//  VM
//
//  Created by Praveen.kothapeta on 01/04/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSObjectParsing.h>

@interface CommonLocalNotificationsAPI : JSObjectParsing

+(void) create:(NSArray*) args;
+(void) cancel:(NSArray*) args;
+(NSArray *) setCallbacks:(NSArray*)args;
+(void) getNotifications:(NSArray *)args;
@end
