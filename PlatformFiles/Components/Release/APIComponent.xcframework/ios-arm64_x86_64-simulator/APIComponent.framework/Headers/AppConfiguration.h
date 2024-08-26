//
//  AppConfiguration.h
//  VM
//
//  Created by Rajeeva Ranjan on 26/12/11.
//  Copyright (c) 2011 KonyLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
	NO_ERR, 
	KEY_NOT_PRESENT,
	VALUE_NOT_PRESENT,
	UNKNOWN_ERROR
} CONFIG_ERROR;

@interface AppConfiguration : NSObject

+ (void) initializeAppConfiguration;
+ (id) getAppConfwithName:(NSString*) settingName withErrorCode:(NSNumber**) errorCode;
+ (void) setAppConfwithName:(NSString*) settingName withValue:(id) value withErrorCode:(NSNumber**) errorCode;

@end
