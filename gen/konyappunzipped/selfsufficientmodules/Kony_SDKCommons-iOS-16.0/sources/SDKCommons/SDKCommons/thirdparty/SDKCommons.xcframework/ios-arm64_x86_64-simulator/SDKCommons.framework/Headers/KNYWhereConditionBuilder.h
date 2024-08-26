//
//  KNYWhereConditionBuilder.h
//  SDKCommons
//
//  Created by Archana Narahari on 29/10/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DatabaseError.h"
#import "KNYConditionBuilder.h"
#import "KNYConjunctiveOperatorsEnum.h"

@interface KNYWhereConditionBuilder : NSObject

#pragma mark - Methods returning the instance

- (instancetype)init;
- (instancetype)appendCondition:(KNYConditionBuilder *)conditionBuilder
                          error:(DatabaseError **)error;
- (instancetype)appendConjunction:(KNYConjunctiveOperators)conjunctiveOperator
                            error:(DatabaseError **)error;

#pragma mark - Methods to fetch the result computed
- (NSString *)getWhereCondition;
- (NSArray *)getValues;

@end

