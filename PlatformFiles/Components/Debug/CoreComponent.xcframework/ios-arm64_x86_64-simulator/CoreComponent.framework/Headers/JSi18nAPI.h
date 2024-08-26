//
//  JSi18nAPI.h
//  VM
//
//  Created by Amba on 19/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"
#import "CommonI18nAPI.h"

@interface JSi18nAPI : CommonI18nAPI <JSStaticAPI>

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
+(void)throwException:(NSException*)exception;

+ (void) setLocaleLayoutConfig: (NSArray *)arguments;

@end
