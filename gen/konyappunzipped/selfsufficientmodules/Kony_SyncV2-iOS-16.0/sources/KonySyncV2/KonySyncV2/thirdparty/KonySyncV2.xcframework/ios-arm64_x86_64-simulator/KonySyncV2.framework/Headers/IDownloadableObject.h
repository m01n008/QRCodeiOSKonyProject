//
//  IDownloadableObject.h
//  GenericObject
//
//  Created by Sunil Phani Manne on 10/11/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ICommonCapabilities.h"

@class KSSDKObject;
@class KSDownloadResponseMetadata;

/**
 IDownloadableObject is the protocol that needs to abided by the objects to
 participate in a Sync download session.
 
 */
@protocol IDownloadableObject <ICommonCapabilities>

@required

/**
 @brief This method fetches the delta context, fullyqualified name and filter of the current object
 
 @param error The error thrown in case something goes wrong while creating the delta context
 
 @return Array of dictionaries containing delta context, fullyqualified name and filter as per fullyqualified name and filter.
 */
- (NSArray <NSDictionary <NSString *, NSString *> *> *)getDeltaContext:(OfflineObjectsError **) error;

/**
 @brief This method persists the delta context of the current object to the DB
 
 @param deltaContext The delta context that needs to be persisted to the DB
 
 @param error The error thrown while persisting delta context
 */
- (void) persistDeltaContext:(NSString *) deltaContext
                       error:(OfflineObjectsError **) error;

/**
 @brief This method returns the download request build for a given object
 
 @options parameter which contains sync options
 @param error The error while building the download request
 
 @return The request url, headers and body (Keys: request_headers, url, request_body)
 **/
-(NSDictionary *) createDownloadRequest:(NSDictionary <NSString *,id> *)options
                                  error:(OfflineObjectsError **) error;

/**
 @brief This method will be used for parsing the download response of any given object
 
 @param response The string response of download request
 
 @param error The error thrown while parsing the response
 
 @param downloadStats Capture download Stats for Sync run.
 
 @return Dictionary containing data objects and download metadata(Keys: dataObjects, metadataObject)
 **/
-(NSDictionary *) parseDownloadResponse:(NSString *) response
                                  error:(OfflineObjectsError **) error
                          downloadStats:(SyncBatch *) downloadStats;


/**
 This method builds the download request body.

 @param deltaContextArray Array containing deltaContext associated with a objectName and filter.
 @param error Parameter to populate error, if any.
 @return String of download request body
 */
- (NSString *)buildDownloadRequestBodyParam:(NSArray <NSDictionary <NSString *, NSString *> *> *)deltaContextArray
                                      error:(OfflineObjectsError **)error;

@end
