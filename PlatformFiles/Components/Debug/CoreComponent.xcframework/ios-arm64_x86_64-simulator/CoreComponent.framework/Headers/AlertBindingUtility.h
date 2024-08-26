//
//  AlertBindingUtility.h
//  VM
//
//  Created by Amba on 03/07/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlertModel.h"

@interface AlertBindingUtility : NSObject

+ (NSArray *) showAlert: (NSArray *) arguments;
+ (void) dismissAlert:(AlertModel *) alertModel;

@end
