//
//  KNYDatabaseAPI.h
//  KonySyncV2
//
//  Created by Satya Eedara on 25/01/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DatabaseError.h"
#import "KNYSQLiteDatabaseHelper.h"

@class KNYPreparedStatement;

/**
 Defines API for Database CRUD Operations
 */
@interface  KNYDatabaseAPI : NSObject
{
    KNYSQLiteDatabaseHelper *_databaseConnectionhelper;
}

#pragma mark Select queries (R or CRUD)

/**
 Setup a database connection by encrypting DB with the given key.
 This method should be called before the application setup.
 i.e before setup and drop of the database.
 
 @param DBPath the database path
 @param options the options contain the device db encryption key
 @param error details with error code and description
 */
+ (instancetype)initWithPath:(NSString *)DBPath
                     options:(NSDictionary <NSString *, id> *)options
                       error:(DatabaseError **)error;

/**
 Executes a raw SQL SELECT query
 @param rawQuery valid SQL query to execute
 @param error error details with error code and description
 */
- (NSArray <NSDictionary *> *)executeSelectQuery:(NSString *)rawQuery
                                           error:(DatabaseError **)error;

/**
 Executes SQL SELECT query as a prepared statement
 @param preparedStatement  SQL query and values needed for constructing a prepared statement
 @param error error details with error code and description
 */
- (NSArray <NSDictionary *> *)executeSelectPreparedStatement:(KNYPreparedStatement *)preparedStatement
                                                       error:(DatabaseError **)error;


#pragma mark Update queries (CUD of CRUD)

/**
 Executes a valid CREATE, INSERT, UPDATE and DELETE SQL statement
 @param rawQuery valid SQL query to execute
 @param error error details with error code and description
 */
- (void)executeQuery:(NSString *)rawQuery
               error:(DatabaseError **)error;

/**
 Executes a list of valid CREATE, INSERT, UPDATE and DELETE SQL statements.
 @param rawQueries a list of valid SQL queries to execute.
 @param error error details with error code and description
 */
- (void)executeQueries:(NSArray <NSString *> *)rawQueries
                 error:(DatabaseError **)error;

/**
 Executes a list of CREATE, INSERT, UPDATE and DELETE SQL statements in transaction mode i.e either ALL or NONE
 @param rawQueries list of SQL queries to execute in transaction mode.
 @param error error details with error code and description
 */
- (void)executeQueriesAsTransaction:(NSArray <NSString *> *)rawQueries
                              error:(DatabaseError **)error;

/**
 Executes a single INSERT SQL statement in transaction mode
 @param statement containing INSERT SQL query and values to execute in transaction mode.
 @param error error details with error code and description
 @return row id of last inserted record
 */
- (long)executeSingleInsertStatement:(KNYPreparedStatement *)statement
                               error:(DatabaseError **)error;
/**
 Executes CREATE, INSERT, UPDATE and DELETE SQL query as a prepared statement.
 @param preparedStatement  SQL query and values needed for constructing a prepared statement
 @param error error details with error code and description
 */
- (void)executePreparedStatement:(KNYPreparedStatement *)preparedStatement
                           error:(DatabaseError **)error;

/**
 Executes a list of CREATE, INSERT, UPDATE and DELETE SQL queries as a prepared statements.
 @param preparedStatements a list of SQL queries and values needed for constructing a prepared statements.
 @param error error details with error code and description
 */
- (void)executePreparedStatements:(NSArray <KNYPreparedStatement *> *)preparedStatements
                            error:(DatabaseError **)error;


/**
 Executes a valid CREATE, INSERT, UPDATE and DELETE SQL prepared statements with values in transaction mode i.e either ALL or NONE
 @param preparedStatements  a list of SQL queries and values needed for constructing a prepared statements.
 @param error error details with error code and description
 */
- (void)executePreparedStatementsAsTransaction:(NSArray <KNYPreparedStatement *> *)preparedStatements
                                         error:(DatabaseError **)error;

/**
 Method to return count for number of rows selected
 @param rawQuery Raw SELECT query string.
 @return count for number of rows selected
 */
- (int)executeCountQuery:(NSString *)rawQuery;

/**
 Executes an UPDATE query on db
 @param rawQuery Raw SELECT query string.
 @return  YES/NO for successful/unsuccessful update.
 */
- (BOOL)executeUpdateQuery:(NSString *)rawQuery;
@end
