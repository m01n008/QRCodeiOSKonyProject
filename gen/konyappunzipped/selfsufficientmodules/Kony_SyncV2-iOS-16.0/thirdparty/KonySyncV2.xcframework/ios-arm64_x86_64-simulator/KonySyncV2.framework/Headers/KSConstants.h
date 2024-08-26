//
//  KSConstants.h
//  KonySyncV2
//
//  Created by Manikanta on 27/09/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Facade layer success completion handler.

 @param object nullable output object.
 */
typedef void (^KNYSuccessCompletionHandler) (id object);

/**
 Facade layer failure completion handler.

 @param error nullbale error object.
 */
typedef void (^KNYFailureCompletionHandler) (id object);

/**
 Facade layer sync progress completion handler.
 
 @param object nullable output object.
 */
typedef void (^KNYProgressCompletionHandler) (id object);

//SyncV2 Binary Download Manager Completion Handlers
/*! @brief Handle for user-defined completion block to be invoked on file downloads start. */
typedef void (^KNYFileDownloadStartedCompletionBlock)(id object);

/*! @brief Handle for user-defined completion block to be invoked on each successful stream download. */
typedef void (^KNYStreamDownloadCompletedCompletionBlock)(id object);

/*! @brief Handle for user-defined completion block to be invoked on each successful chunk download. */
typedef void (^KNYChunkDownloadCompletedCompletionBlock)(id object);

/*! @brief Handle for user-defined completion block to be invoked on  successful file download. */
typedef void (^KNYFileDownloadCompletedCompletionBlock)(id object);

/*! @brief Handle for user-defined completion block to be invoked on failure of a file download. */
typedef void (^KNYDownloadFailureCompletionBlock)(id object);
