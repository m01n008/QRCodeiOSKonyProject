//
//  NetworkService.h
//  NetworkPersistor
//
//  Created by admin on 05/12/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkService : NSObject

+ (instancetype)sharedInstance;
- (void)send:(NSString *)log;

@end
