//
//  KonyWebSQL.h
//  VM
//
//  Created by Uday Bheema on 21/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PLSqlite/PLDatabase.h>
#import <PLSqlite/PLSqliteDatabase.h>
#import <CoreComponent/LuaTable.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyMacros1.h>

#define KEY_INSERT_ID @"insertId"
#define KEY_ROWS_EFFECTED @"rowsAffected"
#define KEY_ROWS @"rows"
#define KEY_ROWS_ACTUAL @"rowsActual"
#define KEY_LENGTH @"length"

@class KonyWebSQLDB;

@interface KonyWebSQLDBManager : NSObject {
    NSMutableDictionary *dbHandles;
}

+ (KonyWebSQLDBManager*) sharedKonyWebSQLDBManager;
- (void) addConnection:(KonyWebSQLDB*) database fileName:(NSString*) name;
- (KonyWebSQLDB*) getConnectionIfAlreadyOpened:(NSString*) fileName;
- (void) removeConnection:(id) obj;
//- (KonyWebSQLDB*) dbFromTransaction:(double) transactionId;

@end


@class KonyWebSQLTransaction;

@interface KonyWebSQLDB : NSObject
{
 @private   
    BOOL isInSynchronousMode;
}

@property(nonatomic) PLSqliteDatabase *db;
@property(nonatomic) NSMutableDictionary *transactionMap;
@property(assign) BOOL isInSynchronousMode;

+ (KonyWebSQLDB*) openConnection:(NSString*)name Version:(NSString*)ver DisplayName:(NSString*)displayName Size:(double)estimatedSize IsSyncMode:(BOOL) isSync
                     InitPragmas:(NSArray*) initPragmas;
                       
- (id) initWithFileName:(NSString*) fName InitPragmas:(NSArray*) initPragmas;


- (void) changeVersion:(NSString*) oldVersion NewVersion:(NSString*) newVersion 
                        SQLTransactionSyncCallback:(CallBack*)sqlTranactionErrorCallback  SQLVoidCallback:(CallBack*) sqlVoidCallback;

- (BOOL) beginTransactionExclusiveAndReturnError: (NSError **) error;

- (BOOL) beginTransactionSharedAndReturnError: (NSError **) error;

- (BOOL) commitTransactionAndReturnError: (NSError **) error;

- (BOOL) rollbackTransactionAndReturnError: (NSError **) error;

- (id) prepareStatement:(NSString*) stmt;

- (void) closeDatabase;

- (id) executeQueryAndReturnError: (NSError **) error statement: (NSString *) statement;

- (int64_t) lastInsertRowId;

- (int) numberOfRowsEffected;

- (void) transaction:(CallBack*) sqlTransactionCallback  SQLTransactionErrorCallback:(CallBack*) sqlTranactionErrorCallback SQLVoidCallback:(CallBack*) sqlVoidCallback;

- (void) readTransaction:(CallBack*) sqlTransactionCallback  SQLTransactionErrorCallback:(CallBack*) sqlTranactionErrorCallback SQLVoidCallback:(CallBack*) sqlVoidCallback;

- (KonyWebSQLTransaction *) createTransaction;

- (KonyWebSQLTransaction*) getTransaction:(double) transId;

- (void) notifyFinishTranaction:(double) transId;


@end

@class SQLTransaction;

@interface KonyWebSQLTransaction : NSObject {
@private
    BOOL errorOccured;
    BOOL isReadTransaction;
}

@property(nonatomic) SQLTransaction *transaction;
@property(nonatomic) BOOL errorOccured;
@property(nonatomic) BOOL isReadTransaction;

- (id) initWithDataBase:(KonyWebSQLDB*) kwsdldb TransactionId:(double) transId;

- (void) transaction:(CallBack*) sqlTransactionCallback  SQLTransactionErrorCallback:(CallBack*) sqlTranactionErrorCallback SQLVoidCallback:(CallBack*) sqlVoidCallback;

- (void) readTransaction:(CallBack*) sqlTransactionCallback  SQLTransactionErrorCallback:(CallBack*) sqlTranactionErrorCallback SQLVoidCallback:(CallBack*) sqlVoidCallback;

- (NSDictionary*) executeSQL:(NSString*) queryString QueryParameters:(NSArray*) qParameters 
    SQLStatementCallback:(CallBack*)sqlStatementCallback SQLStatementErrorCallback:(CallBack*) sqlStatementErrorCallback;

- (void) performTransaction:(CallBack*) sqlTransactionCallback  SQLTransactionErrorCallback:(CallBack*) sqlTranactionErrorCallback SQLVoidCallback:(CallBack*) sqlVoidCallback IsReadTransaction:(BOOL)isReadTransaction;

- (BOOL) validateQuery:(NSString*) sqlQuery;

- (void) analyseAndRaiseError:(CallBack*) errorCB ErrorCode:(int) eCode DBError:(NSError*) dbError;

- (void) raiseError:(CallBack*) errorCB ErrorCode:(int) eCode DBError:(NSError*) dbError;

//- (void) populateResultAndSend:(id<PLResultSet>)results CallBack:(CallBack*)sqlStatementCallback;
- (NSDictionary*) populateResult:(id<PLResultSet>)results;

//- (void) populateResult:(id<PLResultSet>)results CallBack:(CallBack*)sqlStatementCallback;

- (NSDictionary*) sqlResultSetRowItem:(NSDictionary*)resultSet Index:(NSNumber*)indx;

@end

@interface SqlRows : NSObject 
{
    NSArray *rows;
}

@property(nonatomic,retain) NSArray *rows;
@end


@interface SQLTransaction : NSObject

@property (nonatomic, assign) KonyWebSQLDB *db;
@property (nonatomic, readwrite) double transactionId;

- (id) initWithDataBase:(KonyWebSQLDB*) kwsqldb transactionId:(double) transId;

@end



