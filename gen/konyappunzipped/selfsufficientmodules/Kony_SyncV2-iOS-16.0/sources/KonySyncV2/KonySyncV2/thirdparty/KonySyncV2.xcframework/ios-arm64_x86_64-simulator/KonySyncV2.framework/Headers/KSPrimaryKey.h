//
//  PrimaryKey.h
//  KonySyncV2
//
//  Created by Harshini Bonam on 09/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OrderedDictionary;
@class KSObjectAttribute;
/*
 * @name Primary key for a generic object.
 */

@interface KSPrimaryKey : NSObject

@property (nonatomic, readonly) NSDictionary<NSString *, KSObjectAttribute *> *attributes;

- (instancetype) init __attribute__((unavailable("Must use initWithKeyArray: instead.")));

- (instancetype)initWithKeyArray:(NSArray <NSString *> *)keyStringArray
                      attributes:(OrderedDictionary *)attributes;

/**
 Returns a set of primary key strings.
 @return Set of primary key strings.
 */
- (NSSet <NSString *> *)getPrimaryKeyStringSet;

@end
