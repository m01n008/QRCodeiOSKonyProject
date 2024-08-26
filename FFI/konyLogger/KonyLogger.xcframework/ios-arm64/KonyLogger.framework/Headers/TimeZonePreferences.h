//
//  TimeZonePreferencesConstants.h
//  Logger
//
//  Created by Harshini Bonam on 26/08/16.
//  Copyright © 2016 kony. All rights reserved.
//

/**
 * Preferences for TimeZone to be used in logging statements
 */

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, TimeZonePreference){
    /**
     * The UTC time zone
     */
    TimeZonePreferenceUTC = 1,
    
    /**
     * The Local time zone
     */
    TimeZonePreferenceLocalTime
    
};

@interface TimeZonePreferences :NSObject

@end
