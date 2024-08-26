//
//  CommonI18nAPI.h
//  VM
//
//  Created by Amba on 30/04/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonI18nAPI : NSObject

// Deprecated

+ (NSArray *) setCurrentLocale: (NSArray *) arguments;
+ (NSArray *) setDefaultLocale: (NSArray *) arguments;

// New in 5.0

+ (NSArray *) setCurrentLocaleAsync: (NSArray *) arguments;
+ (NSArray *) setDefaultLocaleAsync: (NSArray *) arguments;
+ (NSArray *) getSupportedLocales: (NSArray *) arguments;
+ (NSArray *) getCurrentDeviceLocale: (NSArray *) arguments;
+ (NSArray *) isLocaleSupportedByDevice: (NSArray *) arguments;

//

+ (NSArray *) getLocalizedString: (NSArray *) arguments;
+ (NSArray *) getCurrentLocale: (NSArray *) arguments;
+ (NSArray *) setResourceBundle: (NSArray *) arguments;
+ (NSArray *) updateResourceBundle: (NSArray *) arguments;
+ (NSArray *) deleteResourceBundle: (NSArray *) arguments;
+ (NSArray *) isResourceBundlePresent: (NSArray *) arguments;
/**
 @brief Sets locale specific config properties of RTL.
 **/
+ (void) setLocaleLayoutConfig: (NSArray *)arguments;

@end
