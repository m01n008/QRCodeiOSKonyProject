//
//  KSReadPreparedStatementBuilder.h
//  KonySyncV2
//
//  Created by Archana Narahari on 31/05/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KNYBasePreparedStatementBuilder.h"

@interface KNYReadPreparedStatementBuilder : KNYBasePreparedStatementBuilder

/**
 Method for initialisation
 
 @param tableName for which preparedStatement have to be built
 @param distinctValue if Yes Select Distinct is Generated else only Select Query is generated
 */
- (instancetype)initWithTableName:(NSString *)tableName
                      addDistinct:(BOOL) distinctValue;

@end
