//
//  KNYSQLiteDatabaseHelper.h
//  KonySyncV2
//
//  Created by Archana Narahari on 24/01/17.
//  Copyright © 2017 Kony. All rights reserved.
//
#import <Foundation/Foundation.h>

#import "DatabaseError.h"
#import "KNYPreparedStatement.h"

@interface KNYSQLiteDatabaseHelper : NSObject

-(instancetype) init __attribute__((unavailable("init not available, call getDBInstanceWithDBPath instead")));

/**
 Returns an instance of the KNYSQLiteDatabaseHelper containing the database connection.
 @param DBPath           Path of the database file.
 @param error            Parameter to populate the error, if any.
 
 @return Returns a singleton instance containing the dbConnection.
 */
+ (instancetype)getDBInstanceWithDBPath:(NSString *)DBPath
                                  error:(DatabaseError **)error;

/**
 Returns an instance of the KNYSQLiteDatabaseHelper containing the database connection.
 @param DBPath           Path of the database file.
 @param options       The options required to setup the database connection
 @param error            Parameter to populate the error, if any.
 
 @return Returns a singleton instance containing the dbConnection.
 */
+ (instancetype)getDBInstanceWithDBPath:(NSString *)DBPath
                                options:(NSDictionary <NSString *, id>*)options
                                  error:(DatabaseError **)error;

/**
 Closes the connection and resets signleton. This is a stop-gap solution
 to allow start consumming new database API.
 
 KSDatabaseOpenHelper.getInstance would close the shared DB connection using
 this method before creating a new non shared DB connection (current approach)
 */
+ (void)closeConnection:(KNYSQLiteDatabaseHelper *)dbInstance;

/**
 Method to execute multiple raw queries for CREATE, INSERT, UPDATE and DELETE operations.
 If any of the statements fail, the rollback depends on the parameter provided.
 
 @param rawQueries Raw query string.
 @param rollbackOnError On error, rolls back if set to YES.
 @param error Parameter to populate the error, if any.
 */
- (void)executeQueries:(NSArray <NSString *>*)rawQueries
       rollbackOnError:(BOOL)rollbackOnError
                 error:(DatabaseError **)error;

/**
 Method to execute prepared statements for CREATE, INSERT, UPDATE and DELETE operations.
 If any of the statements fail, the rollback depends on the parameter provided.
 
 @param statements Array of KNYPreparedStatement to be executed.
 @param rollbackOnError On error, rolls back if set to YES.
 @param error      Parameter to populate the error, if any.
 */
- (void)executePreparedStatements:(NSArray <KNYPreparedStatement *>*)statements
                  rollbackOnError:(BOOL)rollbackOnError
                            error:(DatabaseError **)error;

/**
 Executes a single INSERT SQL statement and returns the ROW ID of last inserted record in transaction mode
 @param statement to be executed.
 @param error Parameter to populate the error, if any.
 @return row id of last inserted record
 */
- (long)executeSingleInsertStatement:(KNYPreparedStatement *)statement
                               error:(DatabaseError **)error;

/**
 Method to execute raw query for SELECT operation.
 
 @param rawQuery Raw SELECT query string.
 @param error Parameter to populate the error, if any.
 
 @return Array of dictionary containing column names and their respective values which is the result of the SELECT operation.
 */
- (NSArray <NSDictionary *> *)executeSelectQuery:(NSString *)rawQuery
                                           error:(DatabaseError **)error;

/**
 Method to execute prepared statement for SELECT operation.
 
 @param statement KNYPreparedStatement object containing prepared statement and respective values.
 @param error     Parameter to populate the error, if any.
 
 @return Array of dictionary containing column names and their respective values which is the result of the SELECT operation.
 */
- (NSArray <NSDictionary *> *)executeSelectQueryForPreparedStatements:(KNYPreparedStatement *)statement
                                                                error:(DatabaseError **)error;

/**
 Method to return count for number of rows selected
 @param rawQuery Raw SELECT query string.
 @return count for number of rows selected
 */
-(int)executeCountQuery:(NSString *)rawQuery;

/**
 Executes an UPDATE query on db
 @param rawQuery Raw SELECT query string.
 @return  YES/NO for successful/unsuccessful update.
 */
-(BOOL)executeUpdateQuery:(NSString *)rawQuery;
@end
