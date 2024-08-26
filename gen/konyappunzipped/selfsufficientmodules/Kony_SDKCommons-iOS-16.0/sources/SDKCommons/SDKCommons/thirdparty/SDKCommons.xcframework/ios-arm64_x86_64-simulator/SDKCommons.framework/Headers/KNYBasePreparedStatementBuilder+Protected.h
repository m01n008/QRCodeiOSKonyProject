//
//  KNYBasePreparedStatementBuilder+Protected.h
//  KonySyncV2
//
//  Created by Archana Narahari on 05/06/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#ifndef KNYBasePreparedStatementBuilder_Protected_h
#define KNYBasePreparedStatementBuilder_Protected_h

#import "KNYBasePreparedStatementBuilder.h"

@interface KNYBasePreparedStatementBuilder (Protected)

- (NSString *)buildWhereCondition;
- (NSArray *)getPreparedStatementValues;
- (NSString *)buildQuery:(NSError **)error;
- (NSString *)getColumnAndPlaceholderSubstring:(NSArray <NSDictionary *> *)keyValues
                                  withOperator:(NSString *)operatorString
                               andConcatenator:(NSString *)concatenatorString;
- (BOOL)validateListOfMaps:(NSArray <NSDictionary *> *)mapList
                     error:(NSError **)error;
- (BOOL)validateInsertOrUpdateColumnsMap:(NSArray <NSDictionary *> *)mapList
                                   error:(NSError **)error;
- (BOOL)validateCommonOptions:(NSError **)error;
@end

#endif /* KNYBasePreparedStatementBuilder_Protected_h */
