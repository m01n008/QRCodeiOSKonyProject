//
//  KNYBulkInsertColumnValuesBuilder.h
//  SDKCommons
//
//  Created by Archana Narahari on 06/11/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DatabaseError.h"

@interface KNYBulkInsertColumnValuesBuilder : NSObject

- (instancetype)init __attribute__ ((unavailable("Must use initWithColumnList:valuesList: instead.")));

- (instancetype)initWithColumnsList:(NSArray *) columnList
                         valuesList:(NSArray <NSArray *> *) valuesList;
- (instancetype)build:(DatabaseError **)error;

- (NSString *)getQuery;
- (NSArray <NSArray *> *)getPreparedStatementValues;
@end
