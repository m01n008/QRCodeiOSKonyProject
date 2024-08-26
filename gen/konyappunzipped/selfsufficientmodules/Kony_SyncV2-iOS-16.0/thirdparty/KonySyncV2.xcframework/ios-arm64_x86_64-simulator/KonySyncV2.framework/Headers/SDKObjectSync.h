//
//  SDKObjectSync.h
//  KonySyncV2
//
//  Created by Chirag Mantri on 15/02/17.
//  Copyright © 2017 Kony. All rights reserved.
//
#import <Foundation/Foundation.h>

#import "KSConstants.h"

@interface SDKObjectSync : NSObject

/**
 Preventing object creation for SDKObjectSync using init.
 */
- (instancetype)init __attribute__((unavailable("Use initWithName.")));

/**
 Initializing SDKObjectSync
 
 @param name Contains the name of the SDKObject
 @param error NSError object to be propagated in case of error
 @return Instance type of SDKObjectSync
 */
- (instancetype)initWithName:(NSString *)name
                       error:(NSError **)error;

/**
 Initializing SDKObjectSync
 
 @param name Contains the name of the SDKObject
 @param objectServiceName Contains the name of the object service
 @param error NSError object to be propagated in case of error
 @return Instance type of SDKObjectSync
 */
- (instancetype)initWithName:(NSString *)name
        andObjectServiceName:(NSString *)objectServiceName
                       error:(NSError **)error;

/**
 Method to Start Object Level Sync
 
 @param options contains sync options.
 @param onSuccess callback to be invoked on the Success of Sync.
 @param onFailure callback to be invoked at the time of any error.
 @param onProgress callback to be invoked during sync.
 */
- (void)startSync:(NSDictionary <NSString *,id>*) options
        onSuccess:(KNYSuccessCompletionHandler)onSuccess
        onFailure:(KNYFailureCompletionHandler)onFailure
        onProgress:(KNYProgressCompletionHandler) onProgress;

/**
 Method to get getPendingRecordsForUpload
 
 @param options contains Options for getPendingRecordsForUpload
 @param onSuccess callback to be invoked on the Success of getPendingRecordsForUpload
 @param onFailure callback to be invoked at the time of any error
 */
- (void)getPendingRecordsForUpload:(NSDictionary <NSString *,id>*) options
                         onSuccess:(KNYSuccessCompletionHandler)onSuccess
                         onFailure:(KNYFailureCompletionHandler)onFailure;


/**
 * Create method provides ability to create record in local database
 * @param record - list of fields to be populated in record during creation
 * @param options - parameter for future extensibility. MarkforUpload parameter should come through this data structure
 * @param onSuccess callback to be invoked on the Success of record creation.
 * @param onFailure callback to be invoked at the time of any error.
 */

- (void)create:(NSDictionary <NSString *,id>*) record
        options:(NSDictionary <NSString *,id>*)options
        onSuccess:(KNYSuccessCompletionHandler)onSuccess
        onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Update method provides ability to update record by PK in local database
 * @param record - list of fields to be updated
 * @param options - contains PrimaryKey(s), Disable change tracking options, MarkForUpload
 * @param onSuccess callback to be invoked on the Success of update operation.
 * @param onFailure callback to be invoked at the time of any error.
 */
- (void)updateByPK:(NSDictionary <NSString *,id>*)record
           options:(NSDictionary <NSString *,id>*)options
         onSuccess:(KNYSuccessCompletionHandler)onSuccess
         onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Method to update record(s) in local database
 *
 * @param record       - list of all the fields of the record including primary key(s).
 * @param options      - contains PrimaryKey(s), Disable change tracking options, MarkForUpload
 *                     WhereConditionAsAMap, WhereConditionAsAString of object
 * @param onSuccess callback to be invoked on the Success of update operation.
 * @param onFailure callback to be invoked at the time of any error.
 */
- (void)update:(NSDictionary <NSString *, id> *)record
       options:(NSDictionary <NSString *, id>*)options
     onSuccess:(KNYSuccessCompletionHandler)onSuccess
     onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Delete method provides ability to delete record by PK from local Database
 * @param options - contains PrimaryKey(s), Disable change tracking options, MarkForUpload
 * @param onSuccess callback to be invoked on the Success of delete operation.
 * @param onFailure callback to be invoked at the time of any error.
 */
- (void)deleteByPK:(NSDictionary <NSString *,id>*)options
         onSuccess:(KNYSuccessCompletionHandler)onSuccess
         onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Method to delete record(s) from local Database
 * @param options - contains PrimaryKey(s), Disable change tracking options, MarkForUpload
 *                  WhereConditionAsAMap, WhereConditionAsAString of object
 * @param onSuccess callback to be invoked on the Success of delete operation.
 * @param onFailure callback to be invoked at the time of any error.
 */
- (void)delete:(NSDictionary <NSString *,id>*)options
     onSuccess:(KNYSuccessCompletionHandler)onSuccess
     onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Get method provides ability to fetch records from local database
 * @param options - Where clause, OrderBy map, Limit, Offset
 * @param onSuccess callback to be invoked on the Success of get operation.
 * @param onFailure callback to be invoked at the time of any error.
 */
- (void)get:(NSDictionary <NSString *,id>*) options        
        onSuccess:(KNYSuccessCompletionHandler)onSuccess
        onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Rollback an object to its previous sync state
 * @param primaryKeyValueMap of record only for which rollback should happen.
 * @param onSuccess onSuccess will be invoked on the Successfull rollback on object.
 * @param onFailure onFailure will be invoked if rollback failed on object.
 */
- (void)rollback:(NSDictionary *)primaryKeyValueMap
       onSuccess:(KNYSuccessCompletionHandler)onSuccess
       onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Downloads binary for the specified column name and primary key(s) of the object.
 * If the file is available locally, it will not download from server unless Force Download is enabled.
 *
 * @param options - Options specific to the file to be downloaded
 *                               binaryColumnName: String
 *                               forceDownload: boolean
 *                               chunkSize: integer
 *                               primaryKeys: Map of column name and value
 *                               fileId: ID which user wants to name the file with. This will be appended with timestamp
 * @param fileDownloadStartedCompletionBlock - download started callback
 * @param chunkDownloadCompletedCompletionBlock - chunk download completion callback
 * @param streamDownloadCompletionBlock - stream download completion callback
 * @param fileDownloadCompletedCompletionBlock - file download completion callback
 * @param downloadFailureCompletionBlock - file download failure callback
 */
- (void)getBinary:(NSDictionary <NSString *,id>*)options
        downloadStartedHandler:(KNYFileDownloadStartedCompletionBlock)fileDownloadStartedCompletionBlock
        chunkDownloadCompletedHandler:(KNYChunkDownloadCompletedCompletionBlock)chunkDownloadCompletedCompletionBlock
        streamDownloadCompletedHandler:(KNYStreamDownloadCompletedCompletionBlock)streamDownloadCompletionBlock
        fileDownloadCompletedHandler:(KNYFileDownloadCompletedCompletionBlock)fileDownloadCompletedCompletionBlock
        downloadFailureHandler:(KNYDownloadFailureCompletionBlock)downloadFailureCompletionBlock;

/**
 * Returns list of primary keys of those records that match the search criteria.
 *
 * @param options                - Options format
 *                               {"download" : {
 *                                                "columnName" : <>
 *                                                 "QueryType" : "BinaryStatus_Pending | BinaryStatus_Success"
 *                                   }
 *                                  "upload" : {}
 *                               }.
 * @param onSuccess callback to be invoked with list of pending and completed primarykeys.
 * @param onFailure callback to be invoked with error.
 */
- (void)getBinaryStatus:(NSDictionary <NSString *,id>*) options
              onSuccess:(KNYSuccessCompletionHandler)onSuccess
              onFailure:(KNYFailureCompletionHandler)onFailure;

/** Mark for upload method provides ability to Mark record for upload from local Database
 * @param options - Where clause, OrderBy map, Limit, Offset
 * @param onSuccess onSuccess will be invoked on the Successfull Mark For Upload on object.
 * @param onFailure onFailure will be invoked if Mark For Upload failed on object.
 */
-(void) markForUpload:(NSDictionary <NSString *,id>*) options
            onSuccess:(KNYSuccessCompletionHandler)onSuccess
            onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * getUploadDeferredRecordKeys method provides ability to fetch deffered record primary keys from local database
 * @param onSuccess callback to be invoked on the Success of the operation.
 * @param onFailure callback to be invoked at the time of any error.
 */
-(void) getUploadDeferredRecordKeys:(KNYSuccessCompletionHandler)onSuccess
                          onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Cancel an object sync session
 * @param onSuccess onSuccess will be invoked on the Successfull cancellation.
 * @param onFailure onFailure will be invoked for failure to cancel sync.
 */
- (void)cancelSync:(KNYSuccessCompletionHandler)onSuccess
         onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Deletes data in an object table.
 * @param onSuccess onSuccess will be invoked on the Successfull deletion of table or a particular record data in the object.
 * @param onFailure onFailure will be invoked on the deletion of all table data in the objectService isn't possible at that moment.
 */
- (void)clearDataWithOptions:(NSDictionary <NSString *, id>*)options
                   onSuccess:(KNYSuccessCompletionHandler)onSuccess
                   onFailure:(KNYFailureCompletionHandler)onFailure;

@end

