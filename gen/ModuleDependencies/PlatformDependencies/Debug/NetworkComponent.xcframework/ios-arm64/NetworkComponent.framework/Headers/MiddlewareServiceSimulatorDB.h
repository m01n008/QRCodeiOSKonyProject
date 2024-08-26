//
//  MiddlewareServiceDatabase.h
//  MiddlewareServiceDataApp
//
//  Created by KH035 on 4/25/13.
//  Copyright (c) 2013 KH035. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface MiddlewareServiceSimulatorDB: NSObject{
    sqlite3 *_database;
}
+(MiddlewareServiceSimulatorDB*)database;

-(BOOL) saveResultDictionary:(NSDictionary*)dictionary forUniqueID:(NSString*)uniqueID shouldUpdateIfExists:(BOOL)updateIfExists;
-(NSDictionary*) getResultDictionaryForUniqueID:(NSString*) uniqueID;
-(void) dropTable:(NSString *) tableName;
-(BOOL) createTable:(NSString *)tableName withSchema:(NSString *)schema;
-(int) deleteRowsWithUniqueIDLike:(NSString*) uniqueID;
-(int) insertData:(NSDictionary*) dictionary intoRowWithUniqueID: (NSString*)uniqueID;
-(int) updateData:(NSDictionary*) dictionary intoRowWithUniqueID: (NSString*)uniqueID;
-(BOOL) isRowExistForUniqueID:(NSString*) uniqueID;
-(NSDictionary*) selectRowWithUniqueID:(NSString*) uniqueID;

@end
