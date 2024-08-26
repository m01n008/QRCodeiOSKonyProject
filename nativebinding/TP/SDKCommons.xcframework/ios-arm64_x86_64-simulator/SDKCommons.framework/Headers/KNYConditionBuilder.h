//
//  KNYConditionBuilder.h
//  SDKCommons
//
//  Created by Archana Narahari on 29/10/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DatabaseError.h"
#import "KNYConditionalOperatorsEnum.h"

@interface KNYConditionBuilder : NSObject

- (instancetype)init __attribute__ ((unavailable("Must use initWithColumnName: instead.")));

- (instancetype)initWithColumnName:(NSString *) columnName
               conditionalOperator:(KNYConditionalOperators) conditionalOperator
                             value:(id) value;

- (instancetype)initWithColumnName:(NSString *) columnName
               conditionalOperator:(KNYConditionalOperators) conditionalOperator
                      listOfValues:(NSArray<id> *) values;

- (instancetype)buildWithError:(DatabaseError **)error;

- (NSString *)getCondition;

- (NSArray *)getValues;

@end
