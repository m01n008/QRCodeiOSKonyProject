//
//  CompletionBlocks.h
//  Binary
//
//  Created by Vamshi Adi on 09/08/17.
//  Copyright © 2017 Kony. All rights reserved.
//
#import "Chunk.h"

#ifndef CompletionBlocks_h
#define CompletionBlocks_h

//Binary Data Mangaer Completion handlers..
typedef void(^createDownloadTaskCompletionBlock)(NSError *error, NSString *blobID);

typedef void (^getBinaryDataFilePathCompletionBlock)(NSError *error, NSString *filePath);

typedef void (^startDownloadTaskCompletionBlock)(NSString *blobID, NSError *error, NSDictionary *output);

typedef void (^pauseDownloadTaskCompletionBlock)(NSString *blobID, NSError *error, NSDictionary *output);

typedef void (^resumeDownloadTaskCompletionBlock)(NSString *blobID, NSError *error, NSDictionary *output);

typedef void (^deleteBinaryObjectCompletionBlock)(NSString *blobID, BOOL deleteAccepted, BOOL isFileDeleted, NSError *error);


//Online Binary Download Manager Completion Handlers
/*! @brief Handle for user-defined completion block to be invoked on file downloads start. */
typedef void (^onFileDownloadStartedCompletionBlock)(NSString *blobID, NSDictionary *context);

/*! @brief Handle for user-defined completion block to be invoked on each successful stream download. */
typedef void (^onStreamDownloadCompletedCompletionBlock)(NSString *blobID, Chunk *chunkData, NSDictionary *context);

/*! @brief Handle for user-defined completion block to be invoked on each successful chunk download. */
typedef void (^onChunkDownloadCompletedCompletionBlock)(NSString *blobID, long long int totalSizeWritten, long long int totalFileSize, NSDictionary *context);

/*! @brief Handle for user-defined completion block to be invoked on  successful file download. */
typedef void (^onFileDownloadCompletedCompletionBlock)(NSString *blobID, NSString *filePath, NSDictionary *context);

/*! @brief Handle for user-defined completion block to be invoked on failure of a file download. */
typedef void (^onDownloadFailureCompletionBlock)(NSString *blobID, NSError *error, NSDictionary *context);

//Online Binary Upload Manager Completion Handlers
typedef void (^onBytesUploadStartedCompletionBlock)(NSString *uploadSessionId, NSDictionary *context);

typedef void (^onByteChunkUploadCompletedCompletionBlock)(NSString *uploadSessionId, NSString *uploadedChunkId, NSDictionary *context);

typedef void (^onBytesUploadCompletedCompletionBlock)(NSString *uploadSessionId, NSString *fileDetails, NSDictionary *context);

typedef void (^onUploadFailureCompletionBlock)(NSString *uploadSessionId, NSError *error, NSDictionary *context);

#endif /* CompletionBlocks_h */
