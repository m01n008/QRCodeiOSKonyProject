//
//  KSCreatePreparedStatementBuilder.h
//  KonySyncV2
//
//  Created by Archana Narahari on 31/05/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KNYBasePreparedStatementBuilder.h"

@interface KNYCreatePreparedStatementBuilder : KNYBasePreparedStatementBuilder

/**
 Method for initialisation
 
 @param tableName for which preparedStatement have to be built
 @param insertOrReplace if Yes INSERT OR REPLACE INTO Query is Generated else INSERT Query is generated
 */
- (instancetype)initWithTableName:(NSString *)tableName
                  insertOrReplace:(BOOL)insertOrReplace;

@end
