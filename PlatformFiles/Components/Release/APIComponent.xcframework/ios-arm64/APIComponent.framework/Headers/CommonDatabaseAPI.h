//
//  CommonDatabaseAPI.h
//  VM
//
//  Created by Amba on 16/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

//#import "LuaAPI.h"
#import <Foundation/Foundation.h>

@class KonyWebSQLDB;

#pragma mark - Web SQL API'S
KonyWebSQLDB* openTheDataBase(NSArray *parameters, BOOL isSync);

@interface CommonDatabaseAPI : NSObject

+(NSArray *) sqlResultSetRowItem: (NSArray *) parameters;
+(NSArray *) openReadWriteTransaction: (NSArray *) parameters;
+(NSArray *) openDatabase: (NSArray *) parameters;
+(NSArray *) openDatabaseSync: (NSArray *) parameters;
+(NSArray *) changeVersion: (NSArray *) parameters;
+(NSArray *) openReadTransaction: (NSArray *) parameters;
+(NSArray *) executeSql: (NSArray *) parameters;
+(NSArray *) closeDatabase: (NSArray *) args;

@end
