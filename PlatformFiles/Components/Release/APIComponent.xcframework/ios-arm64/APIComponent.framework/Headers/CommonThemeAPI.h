//
//  CommonThemeAPI.h
//  VM
//
//  Created by Amba on 03/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

//#import "LuaAPI.h"
#import <Foundation/Foundation.h>

@interface CommonThemeAPI : NSObject

// Deprecated

// New in 5.0

+ (NSArray *) setCurrentTheme: (NSArray *) arguments;
+ (NSArray *) createTheme: (NSArray *) arguments;
+ (NSArray *) createThemeFromJSONString: (NSArray *) arguments;
+ (NSArray *) isThemePresent: (NSArray *) arguments;
+ (NSArray *) allThemes: (NSArray *) arguments;
+ (NSArray *) getCurrentThemeData: (NSArray *) arguments;
+ (NSArray *) getCurrentTheme: (NSArray *) arguments;
+ (NSArray *) deleteTheme: (NSArray *) arguments;

+ (NSArray *) setSkinsProperties: (NSArray *) arguments;

//

@end
