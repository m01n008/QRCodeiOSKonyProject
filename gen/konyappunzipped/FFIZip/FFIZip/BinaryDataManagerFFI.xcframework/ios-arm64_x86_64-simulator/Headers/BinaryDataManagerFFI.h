//
//  BinaryDataManagerFFI.h
//  BinaryDataManager
//
//  Created by MADP on 22/09/16.
//  Copyright © 2016 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CallBack.h"

@interface BinaryDataManagerFFI : NSObject

+ (void)binaryDownloadTaskCreationForDb:(NSString *)dbName
                              tableName:(NSString *)tableName
                             columnName:(NSString *)columnName
                        primaryKeyTable:(NSDictionary *)primaryKeyTable
                         downloadConfig:(NSDictionary *)downloadConfig
                    withSuccessCallback:(CallBack *)downloadTaskCreationSuccessCallback
                       andErrorCallback:(CallBack *)downloadTaskCreationFailureCallback;


+ (void)binaryStartDownloadTaskForBlobID:(NSString *)blobID
                     withSuccessCallback:(CallBack *)startDownloadTaskSuccessCallback
                        andErrorCallback:(CallBack *)startDownloadTaskFailureCallback;

+ (void)binaryPauseDownloadTaskForBlobID:(NSString *)blobID
                     withSuccessCallback:(CallBack *)pauseDownloadTaskSuccessCallback
                       withErrorCallback:(CallBack *)pauseDownloadTaskFailureCallback;

+ (void)binaryResumeDownloadTaskForBlobID:(NSString *)blobID
                      withSuccessCallback:(CallBack *)resumeDownloadTaskSuccessCallback
                        withErrorCallback:(CallBack *)resumeDownloadTaskFailureCallback;

+ (void)getBinaryDataFilePath:(NSString *)dbName
                    tableName:(NSString *)tableName
                   columnName:(NSString *)columnName
               forPrimaryKeys:(NSDictionary *)primaryKeyTable
          withSuccesscallback:(CallBack *)getBinaryDataFilePathSuccessCallback
            withErrorCallback:(CallBack *)getBinaryDataFilePathFailureCallback;

+ (void)deleteBinaryObject:(NSString *)dbName
                 tableName:(NSString *)tableName
                columnName:(NSString *)columnName
            forPrimaryKeys:(NSDictionary *)primaryKeyTable
                   options:(NSDictionary *)deleteOptions
       withSuccessCallback:(CallBack *)deleteBinaryObjectSuccessCallback
         withErrorCallback:(CallBack *)deleteBinaryObjectFailureCallback;

+ (void)binaryClearBinaryDataManagerState;

+(void) createAndStartOnlineDownload:(NSDictionary*) fileParams
                       withStreaming:(BOOL) streaming
                      downloadConfig:(NSDictionary*) downloadConfig
withOnFileDownloadStartedCompletionBlock:(CallBack*) fileDownloadStartedCallback
andOnChunkDownloadCompletedCompletionBlock:(CallBack*) chunkDownloadCompletedCallback
andOnFileDownloadCompletedCompletionBlock:(CallBack*) fileDownloadCompletedCallback
 andOnDownloadFailureCompletionBlock:(CallBack*) downloadFailureCallback
                          andOptions:(NSDictionary *)options;



+(void) uploadBinaryData:(NSDictionary*) uploadParams
withOnBinaryDownloadStartedCompletionBlock:(CallBack*) uploadStartedCallback
andOnChunkUploadCompletedCompletionBlock:(CallBack*) uploadChunkCompletedCallback
andOnBinaryUploadCompletedCompletionBlock:(CallBack*) uploadCompletedCallback
andOnUploadFailureCompletionBlock:(CallBack*) uploadErrorCallback
              andOptions:(NSDictionary *)options;

@end
