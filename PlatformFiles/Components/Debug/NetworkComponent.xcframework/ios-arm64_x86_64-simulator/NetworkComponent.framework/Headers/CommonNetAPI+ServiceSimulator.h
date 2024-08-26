//
//  CommonNetAPI+ServiceSimulator.h
//  VM
//
//  Created by KH035 on 6/14/13.
//
//

#import <Foundation/Foundation.h>
#import "CommonNetAPI.h"

@interface CommonNetAPI(ServiceSimulator)

+ (NSArray *) simulateNetInvokeService: (NSArray *) args;
+ (void) enableSynchronousServiceSimulator;

@end