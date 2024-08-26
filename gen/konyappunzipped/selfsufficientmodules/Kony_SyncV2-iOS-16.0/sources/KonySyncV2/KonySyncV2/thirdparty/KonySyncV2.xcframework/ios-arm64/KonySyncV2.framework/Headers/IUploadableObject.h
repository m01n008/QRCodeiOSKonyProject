//
//  IUploadableObject.h
//  GenericObject
//
//  Created by Sunil Phani Manne on 10/11/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SyncBatch.h"
#import "ICommonCapabilities.h"

@class KSSDKObject;
@class KSSDKObjectRecord;
@class KSUploadResponseMetadata;
@class UploadBatchParams;

@protocol IUploadableObject <ICommonCapabilities>

@required

/**
  @brief This method is used for getting the list of sdk objects to upload
 
  @param error The error thrown while getting upload objects
 
  @param uploadBatchParams UploadBatchParams which contains UploadBatchSize, BatchNumber, lastRSNOfPreviousBatch, lastRSNToUploadInTheCurrentSession and hierarchyContext
 
  @return The list object to upload
 **/
- (NSArray <KSSDKObject *> *) objectsToUpload:(OfflineObjectsError **)error
                                  uploadStats:(SyncBatch *) uploadStats
                            uploadBatchParams:(UploadBatchParams *)uploadBatchParams;
/**
  @brief The method handles the upload response to populate the sdk object
 
  @param uploadedObjects The uploaded objects list from upload response
 
  @param responseMetadata The metadata the came with upload response
 **/
- (void) onObjectUpload:(NSArray<KSSDKObject *> *)uploadedObjects
   withResponseMetadata:(KSUploadResponseMetadata *)responseMetadata;

/**
 @brief This method returns the upload request build for a given object

 @param error The error while building the upload request

 @param uploadStats Capture upload Stats for Sync run.
 
 @param uploadBatchParams UploadBatchParams which contains UploadBatchSize, BatchNumber, lastRSNOfPreviousBatch, lastRSNToUploadInTheCurrentSession and hierarchyContext
 
 @param context contains sync options and query params.
 
 @return The request url, headers and body (Keys: request_headers, url, request_body)
 **/
-(NSDictionary *) createUploadRequest:(OfflineObjectsError **) error
                          uploadStats:(SyncBatch *) uploadStats
                    uploadBatchParams:(UploadBatchParams *)uploadBatchParams
                              context:(NSDictionary <NSString *,id> *)context;

/**
 @brief This method will be used for parsing the upload response of any given object
 
 @param response The string response of upload request
 
 @param error The error thrown while parsing the response
 
 @return Dictionary containing data objects, upload metadata and upload failed objects
        (Keys: failureObjects, dataObjects, metadataObject)
 **/
-(NSDictionary *) parseUploadResponse:(NSString *) response
                                error:(OfflineObjectsError **) error;

@end
