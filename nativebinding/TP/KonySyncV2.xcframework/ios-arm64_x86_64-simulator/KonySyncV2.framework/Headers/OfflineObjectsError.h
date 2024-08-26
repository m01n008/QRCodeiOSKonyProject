//
//  OfflineObjectsError.h
//  KonySyncV2
//
//  Created by Vishnu Satis on 21/11/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <SDKCommons/SDKCommons.h>

@interface OfflineObjectsError : BaseError

- (nonnull instancetype)initWithDomain:(nullable NSErrorDomain) domain
                                  code:(NSInteger)code
                              userInfo:(nullable NSDictionary *)dict
                                 cause:(nullable BaseError *) error;

- (instancetype _Nullable ) init __attribute__((unavailable("Must use initWithDomain: instead.")));
@end
