//
//  KSBasePreparedStatementBuilder.h
//  KonySyncV2
//
//  Created by Archana Narahari on 31/05/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KNYPreparedStatement.h"

#import "KNYWhereConditionBuilder.h"
#import "KNYBulkInsertColumnValuesBuilder.h"

@interface KNYBasePreparedStatementBuilder : NSObject
{
    NSInteger _limit;
    NSString *_tableName;
    BOOL _skipValidation;
    NSString *_queryPrefix;
    NSInteger _offsetForLimit;
    KNYPreparedStatement *_statement;
    NSString *_whereConditionAsAString;
    NSArray <NSString *> *_projectionColumns;
    KNYWhereConditionBuilder *_whereConditionBuilder;
    NSArray <NSDictionary <NSString *, id> *> *_orderByMap;
    NSArray <NSDictionary <NSString *, id> *> *_likeConditonMap;
    NSArray <NSDictionary <NSString *, id> *> *_insertValuesMap;
    NSArray <NSDictionary <NSString *, id> *> *_updateColumnsMap;
    NSArray <NSDictionary <NSString *, id> *> *_whereConditionMap;
    KNYBulkInsertColumnValuesBuilder *_bulkInsertColumnValuesBuilder;
}

- (instancetype)init __attribute__ ((unavailable("Must use initWithTableName: instead.")));

//Method for initialisation..
- (instancetype)initWithTableName:(NSString *)tableName;

//Methods to add the values to the builder..
- (KNYBasePreparedStatementBuilder *)addOrderByMap:(NSArray <NSDictionary *> *)orderByMap;
- (KNYBasePreparedStatementBuilder *)addWhereConditionAsAString:(NSString *)whereConditionAsAString;
- (KNYBasePreparedStatementBuilder *)addProjectionColumns:(NSArray <NSString *> *)projectionColumns;
- (KNYBasePreparedStatementBuilder *)addLimitCondition:(NSInteger)limit withOffset:(NSInteger)offsetForLimit;
- (KNYBasePreparedStatementBuilder *)addWhereConditionBuilder:(KNYWhereConditionBuilder *)whereConditionBuilder;
- (KNYBasePreparedStatementBuilder *)addInsertValuesMap:(NSArray <NSDictionary <NSString *, id> *> *)insertValuesMap;
- (KNYBasePreparedStatementBuilder *)addUpdateColumnsMap:(NSArray <NSDictionary <NSString *, id> *> *)updateColumnsMap;
- (KNYBasePreparedStatementBuilder *)addLikeConditionMap:(NSArray <NSDictionary <NSString *, id> *> *)likeConditionMap;
- (KNYBasePreparedStatementBuilder *)addWhereConditionMap:(NSArray <NSDictionary <NSString *, id> *> *)whereConditionMap;
- (KNYBasePreparedStatementBuilder *)addBulkInsertColumnValuesBuilder:(KNYBulkInsertColumnValuesBuilder *)bulkInsertColumnValuesBuilder;
- (void)setSkipValidation:(BOOL)value;
- (BOOL)getSkipValidation;

/**
 Returns a Prepared Statement built from the inputs given
 
 @param error Variable to populate error, if any.
 @return Prepared Statement with query and values.
 */
- (KNYPreparedStatement *)build:(NSError **)error;
@end
