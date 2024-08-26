//
//  BinaryFileStorageInterface.h
//  Binary
//
//  Created by Chirag Mantri on 29/12/18.
//  Copyright © 2018 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BinaryPublicConstants.h"

@interface BinaryFileStorageInterface : NSObject

/**
 Gets list of files
 
 @param url       URL to be accessed for getting metadata of files
 @param criteria  Criteria string
 @param headers   Map of headers
 @param onSuccess Callback for Success
 @param onFailure Callback for Failure
 @param options   Options if any
 */
+ (void)getFilesWithUrl:(NSString *)url
               criteria:(NSString *)criteria
                headers:(NSDictionary<NSString *, NSString *> *)headers
              onSuccess:(BinarySuccessCallback)onSuccess
              onFailure:(BinaryFailureCallback)onFailure
                options:(NSDictionary<NSString *, NSString *> *)options;

/**
 Uploads a file
 
 @param url             URL to upload
 @param uploadInputType Upload input type
 @param uploadParams    Parameters for upload
 @param onSuccess       Callback for Success
 @param onFailure       Callback for Failure
 @param onProgress      Callback for Progress
 @param options         Options if any
 */
+ (void)uploadBinaryWithUrl:(NSString *)url
                  InputType:(NSString *)uploadInputType
               uploadParams:(NSDictionary<NSString *, id> *)uploadParams
                  onSuccess:(BinarySuccessCallback)onSuccess
                  onFailure:(BinaryFailureCallback)onFailure
                 onProgress:(BinaryProgressCallback)onProgress
                    options:(NSDictionary<NSString *, id> *)options;

/**
 Downloads a file
 
 @param url            URL to perform download
 @param downloadParams Parameters for performing download
 @param onSuccess       Callback for Success
 @param onFailure       Callback for Failure
 @param options        Additional options, if any
 */
+ (void)downloadWithURL:(NSString *)url
                 Params:(NSDictionary<NSString *, id> *)downloadParams
              onSuccess:(BinarySuccessCallback)onSuccess
              onFailure:(BinaryFailureCallback)onFailure
             onProgress:(BinaryProgressCallback)onProgress
                options:(NSDictionary<NSString *, id> *)options;

/**
 Updates metadata of a file
 
 @param url          Url for the data to update
 @param updateParams Parameters for performing update
 @param onSuccess    Callback for Success
 @param onFailure    Callback for Failure
 @param options      Additional options, if any
 */
+ (void)updateWithUrl:(NSString *)url
               Params:(NSDictionary<NSString *, id> *)updateParams
            onSuccess:(BinarySuccessCallback)onSuccess
            onFailure:(BinaryFailureCallback)onFailure
              options:(NSDictionary<NSString *, id> *)options;

/**
 Deletes a file by its ID
 
 @param url          Url for the data to delete
 @param fileId       ID of the file to be deleted
 @param deleteParams Parameters for performing deletion
 @param headers      Headers to perform delete
 @param onSuccess    Callback for Success
 @param onFailure    Callback for Failure
 @param options      Additional options, if any
 */
+ (void)deleteWithUrl:(NSString *)url
               fileId:(NSString *)fileId
         deleteParams:(NSDictionary<NSString *, id> *)deleteParams
              headers:(NSDictionary<NSString *, id> *)headers
            onSuccess:(BinarySuccessCallback)onSuccess
            onFailure:(BinaryFailureCallback)onFailure
              options:(NSDictionary<NSString *, id> *)options;

/**
 Deletes a file by its criteria
 
 @param url            Url for the data to delete
 @param deleteCriteria Parameters for performing deletion
 @param headers        Headers to perform delete
 @param onSuccess      Callback for Success
 @param onFailure      Callback for Failure
 @param options        Additional options, if any
 */
+ (void)deleteByCriteria:(NSString *)url
          deleteCriteria:(NSDictionary<NSString *, id> *)deleteCriteria
                 headers:(NSDictionary<NSString *, id> *)headers
               onSuccess:(BinarySuccessCallback)onSuccess
               onFailure:(BinaryFailureCallback)onFailure
                 options:(NSDictionary<NSString *, id> *)options;

/**
 Abort a file by its ID
 
 @param url          Url for the data to abort
 @param fileId       ID of the file to be aborted
 @param abortParams  Parameters for performing abort
 @param headers      Headers to perform abort
 @param onSuccess    Callback for Success
 @param onFailure    Callback for Failure
 @param options      Additional options, if any
 */
+ (void)abortWithUrl:(NSString *)url
              fileId:(NSString *)fileId
         abortParams:(NSDictionary<NSString *, id> *)abortParams
             headers:(NSDictionary<NSString *, id> *)headers
           onSuccess:(BinarySuccessCallback)onSuccess
           onFailure:(BinaryFailureCallback)onFailure
             options:(NSDictionary<NSString *, id> *)options;

@end
