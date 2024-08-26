//
//  KSPreparedStatementBuilderFactory.h
//  KonySyncV2
//
//  Created by Archana Narahari on 31/05/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KNYBasePreparedStatementBuilder.h"
#import "KNYPreparedStatementBuilderConstants.h"

@interface KNYPreparedStatementBuilderFactory : NSObject

/**
 Returns a prepared statement builder from the factory according to the action type
 provided.
 
 @param tableName Fully qualified name of the table.
 @param builderType KSPreparedStatementBuilderType stating which builder is needed.
 @param error Variable to populate the error, if any.
 @return Returns a Prepared Statement builder.
 */
+ (KNYBasePreparedStatementBuilder *)getPreparedStatementForTableName:(NSString *)tableName
                                                         builderType:(KNYPreparedStatementBuilderType)builderType
                                                               error:(NSError **)error;
@end
