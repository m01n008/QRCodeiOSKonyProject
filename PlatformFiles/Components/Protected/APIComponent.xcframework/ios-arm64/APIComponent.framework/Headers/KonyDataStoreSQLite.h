//
//  KonyDataStoreSQLite.m
//  VM
//
//  Created by Aravind Perumal on 4/6/09.
//	Rewritten by Praveen Basu Satyam on 10/07/09
//	FileBased KonyDataStore implemented by Krishna Kiran Kasturi on 15/09/11
//  Copyright 2009 Konylabs. All rights reserved.
//

#import <Foundation/Foundation.h>



#import <sqlite3.h>

typedef enum _DS_SQL_TABLETYPE {
	DS_SQL_TABLE_TYPE_MAIN,
	DS_SQL_TABLE_TYPE_ARRAY,
	DS_SQL_TABLE_TYPE_HASH
}DS_SQL_TABLE_TYPE;


typedef enum _DS_DATATYPE {
	DS_DATA_TYPE_NUMBER	 ,
	DS_DATA_TYPE_STRING	 ,
	DS_DATA_TYPE_TABLE	 ,
	DS_DATA_TYPE_CLOSURE ,
	DS_DATA_TYPE_BOOLEAN ,
	DS_DATA_TYPE_NIL	 ,
	DS_DATA_TYPE_ARRAY	 ,
	DS_DATA_TYPE_HASH	 ,
	DS_DATA_TYPE_LUABOOL ,
	DS_DATA_TYPE_RAWBYTES
}DS_DATA_TYPE;


@interface ElementInfo : NSObject

@property (nonatomic) DS_DATA_TYPE elementType;
@property (nonatomic, strong) NSString *elementValue;

@end

@interface TableRowData : NSObject

@property (nonatomic) NSUInteger index;
@property (nonatomic) DS_DATA_TYPE elementType_1;
@property (nonatomic, strong) NSString *elementValue_1;
@property (nonatomic) DS_DATA_TYPE elementType_2;
@property (nonatomic, strong) NSString *elementValue_2;

@end

@class LuaTable;

@interface DsBool : NSObject
{
@public
	BOOL value;
}

- (id)initWithBoolValue:(BOOL)boolValue;
@end


@interface DsLuaTable : NSObject
{
@public
	NSMutableArray *arrayPart;
	NSMutableDictionary *hashPart;
}

- (id)initWithArraySize:(NSUInteger)arraySize withHashSize:(NSUInteger)hashSize ;

@end

/**
 *	Internal class , SQLite based Data Store implementation.
 *	Dont use this functionality directly. Instead use KonyDataStore
 */

@interface KonyDataStoreSQLite : NSObject  {
	sqlite3 *database;
}


@property (nonatomic, assign) NSString *tableName;

- (id)initWithTableName:(NSString *)tbName;

+ (BOOL)deleteDataBaseFile:(NSString *)sqlFilePath ;

- (BOOL)createDataBaseFile:(NSString *)sqlFilePath ;


// Database interaction funcs
- (BOOL)openDataBaseConnection:(NSString *)sqlFilePath ;

- (void)closeDataBaseConnection ;

- (BOOL)createSqlTable:(NSString *)sqlTableName ofType:(DS_SQL_TABLE_TYPE) tableType ;

//- (void)deleteSqlTable:(NSString *)sqlTableName  ;

//- (void)commitSql;


// serializing
- (BOOL)serializeLuaTable:(DsLuaTable *)pTable;

- (BOOL)createDataBaseFile:(NSString *)sqlFilePath;

- (BOOL)createMasterTable:(DsLuaTable *)pTable withTableName:(NSString *)sqlTableName;

- (BOOL)createArrayPartTable:(NSArray *)arrayPart withTableName:(NSString *)sqlTableName ;

- (BOOL)createHashPartTable:(NSDictionary *)hashPart withTableName:(NSString *)sqlTableName ;

- (BOOL)getElementInfo:(ElementInfo *)elementStruct OfNsType:(id)value ;


// deserializing
- (BOOL)deserializeLuaTable:(DsLuaTable *)dsTable ;

- (BOOL)readMasterTableNames:(NSString *)sqlTableName intoRowData:(TableRowData *)rowData ;

- (BOOL)readMasterTable:(NSString *)sqlTableName intoTable:(DsLuaTable *)masterTable ;

- (BOOL)readArrayPartTable:(NSString *)sqlTableName intoTable:(NSMutableArray *)arrayPart ;

- (BOOL)readHashPartTable:(NSString *)sqlTableName intoDictionary:(NSMutableDictionary *)hashPart  ;

- (id)getObjectFromValue:(NSString *)strValue ofType:(DS_DATA_TYPE)type ;


//deleting
+ (BOOL)deleteDataStoreTable: (NSString*) databaseTableName;

- (BOOL) isDataStoreTableExists;
+(BOOL) isSQLiteFile:(NSString*)uniqueIdentifier;
+(NSArray*) listContents;

//- (void)deleteMasterTable:(NSString *)sqlTableName ;

//- (void)deleteArrayPartTable:(NSString *)sqlTableName ;

//- (void)deleteHashPartTable:(NSString *)sqlTableName  ;
@end

id getDsLuatableFromPTable( LuaTable *table );
LuaTable* getPTableFromDsLuaTable( id dTable ) ;
