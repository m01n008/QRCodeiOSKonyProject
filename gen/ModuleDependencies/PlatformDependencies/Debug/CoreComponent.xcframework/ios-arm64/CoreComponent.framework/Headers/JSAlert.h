//
//  JSAlert.h
//  VM
//
//  Created by Amba on 14/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSWidget.h"
#import "JSStaticAPI.h"

@interface JSAlert : JSWidget <JSStaticAPI>

+ (NSArray *) showAlert: (NSArray *) arguments;

@end
