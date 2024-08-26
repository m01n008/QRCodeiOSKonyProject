//
//  NetworkError.h
//  SDKCommons
//
//  Created by Archana Narahari on 21/12/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BaseError.h"

@interface NetworkError : BaseError

@property (nonatomic, readonly, nullable) NSError *cause;

- (nonnull instancetype)initWithDomain:(nullable NSErrorDomain)domain
                                  code:(NSInteger)code
                              userInfo:(nullable NSDictionary *)dict
                             callStack:(nullable NSArray<NSString *> *)callStack;

- (instancetype _Nullable ) init __attribute__((unavailable("Must use initWithDomain: or initWithCallStack: instead.")));

@end
