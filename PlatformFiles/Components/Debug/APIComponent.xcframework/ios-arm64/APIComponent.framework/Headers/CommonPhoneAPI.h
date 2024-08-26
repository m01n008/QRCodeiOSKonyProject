//
//  CommonPhoneAPI.h
//  VM
//
//  Created by Amba on 03/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

//#import "LuaAPI.h"
#import <CoreComponent/KonyWrapperDS.h>

@interface CommonPhoneAPI : NSObject

// Deprecated

// New in 5.0

//
+(NSArray *) location: (NSArray *) args ;
+ (NSArray *) sendSMS: (NSArray *) arguments;
+ (NSArray *) dial: (NSArray *) arguments;
+ (NSArray *) openEmail: (NSArray *) arguments;
+ (NSArray *) openMediaGallery: (NSArray *) arguments;
+ (NSArray *) addCalendarEvent: (NSArray *) arguments;
+ (NSArray *) removeCalendarEvent: (NSArray *) arguments;
+ (NSArray *) findCalendarEvents: (NSArray *) arguments;
+ (NSArray *) getRemoveEventOptions: (NSArray *) arguments;
+ (NSArray *) performHapticFeedback: (NSArray *) arguments;
+ (void) startVibration: (NSArray *) args ;
@end
