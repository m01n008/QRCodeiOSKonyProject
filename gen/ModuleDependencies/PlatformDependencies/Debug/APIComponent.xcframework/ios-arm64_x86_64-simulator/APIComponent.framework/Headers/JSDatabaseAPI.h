//
//  JSDatabaseAPI.h
//  VM
//
//  Created by Amba on 16/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import "CommonDatabaseAPI.h"
#import <CoreComponent/JSStaticAPI.h>

@interface JSDatabaseAPI : CommonDatabaseAPI <JSStaticAPI>

+(NSArray *) sqlResultSetRowItem: (NSArray *) args;
+(NSArray *) openReadWriteTransaction: (NSArray *) args;
+(NSArray *) openDatabase: (NSArray *) args;
+(NSArray *) openDatabaseSync: (NSArray *) args;
+(NSArray *) changeVersion: (NSArray *) args;
+(NSArray *) openReadTransaction: (NSArray *) args;
+(NSArray *) executeSql: (NSArray *) args;
+(NSArray *) closeDatabase: (NSArray *) args;
+(void)throwException:(NSException*)exception;
@end
