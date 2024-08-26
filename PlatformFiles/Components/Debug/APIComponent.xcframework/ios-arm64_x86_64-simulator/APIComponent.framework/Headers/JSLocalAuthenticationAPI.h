//
//  JSLocalAuthenticationAPI.h
//  VM
//
//  Created by Uday on 14/05/14.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>

@interface JSLocalAuthenticationAPI :NSObject <JSStaticAPI>

+ (NSArray *) getStatusForAuthenticationMode: (NSArray *) arguments;

+ (NSArray *) authenticate: (NSArray *) arguments;

+ (NSArray *) getBiometryType: (NSArray *) arguments;

@end
