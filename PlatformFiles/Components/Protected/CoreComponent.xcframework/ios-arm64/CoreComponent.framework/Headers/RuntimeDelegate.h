//
//  RuntimeDelegate.h
//  VM
//
//  Created by Amba on 12/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Runtime;

@interface RuntimeDelegate : NSObject

- (void)runtime:(Runtime *)runtime didReceiveLogMessage:(NSString *)msg;

@end
