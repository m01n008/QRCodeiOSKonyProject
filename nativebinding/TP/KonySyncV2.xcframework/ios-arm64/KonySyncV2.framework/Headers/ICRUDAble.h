//
//  ICRUDAble.h
//  KonySyncV2
//
//  Created by Girish Lingarajappa Haniyamballi on 02/03/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSSDKObjectRecord.h"
#import "OfflineObjectsError.h"

@protocol ICRUDAble <NSObject>

/**
 * createRecordsInDatabase method provides ability to create record in local database
 * @param record - SDK Record
 * @param options - MarkforUpload
 * @param error - Error to be populated on Failure of record creation.
 * @return NSDictionary - returns the primary key(s) value map of the created record
 */
- (NSDictionary <NSString *, id> *)createRecordsInDatabase:(KSSDKObjectRecord *) record
                                                   options:(NSDictionary *) options
                                                     error: (OfflineObjectsError **) error;

/**
 * readRecordsFromDatabaseWithOptions method provides ability to fetch records from local database
 * @param options - Where clause, OrderBy map, Limit, Offset
 * @param error - Error to be populated on Failure of read operation.
 * @return NSArray - Returns an array of records. Each record is in the form of NSDictionary
 */
- (NSArray < NSDictionary <NSString *, id> *> *)readRecordsFromDatabaseWithOptions:(NSDictionary *)options
                                                                             error:(OfflineObjectsError **)error;

/**
 * updateRecordsInDatabase method provides ability to update records in local database
 * @param record - SDK Record
 * @param options - MarkforUpload, Primary Key(s) of object
 * @param error - Error to be populated on Failure of record updation.
 * @return NSInteger - returns the number of records updated
 */
- (NSInteger)updateRecordsInDatabase:(KSSDKObjectRecord *) record
                              options:(NSDictionary *) options
                                error:(OfflineObjectsError **)error;

/**
 * deleteRecordsInDatabase method provides ability to deletes record in local database
 * @param options - Dictionary containing the clauses for deletion.
 * @param error - Error to be populated on Failure of record deletion.
 * @return BOOL - returns YES if the operation is successful
 */
- (BOOL)deleteRecordsInDatabase:(NSDictionary *) options
                          error:(OfflineObjectsError **) error;

@end
