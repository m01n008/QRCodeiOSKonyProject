//
//  DatabaseError.h
//  KonySyncV2
//
//  Created by Vishnu Satis on 17/10/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseError.h"

@interface DatabaseError : BaseError

@property (nonatomic, readonly, nullable) NSError *cause;

- (nonnull instancetype)initWithDomain:(nullable NSErrorDomain)domain
                                  code:(NSInteger)code
                              userInfo:(nullable NSDictionary *)dict
                             callStack:(nullable NSArray<NSString *> *)callStack;

- (instancetype _Nullable ) init __attribute__((unavailable("Must use initWithDomain: or initWithCallStack: instead")));

@end
