//
//  BaseError.h
//  SDKCommons
//
//  Created by Archana Narahari on 21/12/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseError : NSError

@property (nonatomic, nullable) NSArray<NSString *> *callStack;

- (nonnull instancetype)initWithDomain:(nullable NSErrorDomain) domain
                                  code:(NSInteger)code
                              userInfo:(nullable NSDictionary *)dict
                             callStack:(nullable NSArray<NSString *> *) callStack;

- (instancetype _Nullable ) init __attribute__((unavailable("Must use initWithDomain: instead.")));

@end
