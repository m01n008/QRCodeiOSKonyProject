//
//  JSPhoneAPI.h
//  VM
//
//  Created by Amba on 09/04/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>
#import "CommonPhoneAPI.h"

@interface JSPhoneAPI : CommonPhoneAPI <JSStaticAPI>

// Methods are moved to CommonPhoneAPI.h
+(void)throwException:(NSException*)exception;

@end
