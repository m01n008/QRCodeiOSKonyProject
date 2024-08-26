//
//  Constants.h
//  SampleBinaryDownload
//
//  Created by Chandan Makam on 03/11/15.
//  Copyright © 2015 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG
#define DLog( s, ... ) NSLog( @"<%p %@:(%d)> %@", self, [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define DLog( s, ... )
#endif

FOUNDATION_EXPORT NSString* const params;
FOUNDATION_EXPORT NSString* const httpHeaders;
FOUNDATION_EXPORT NSString* const url;
FOUNDATION_EXPORT NSString* const blobId;
FOUNDATION_EXPORT NSString* const blobName;
FOUNDATION_EXPORT NSString* const downloadRequest;
FOUNDATION_EXPORT NSString* const uploadRequest;
FOUNDATION_EXPORT NSString* const d;
FOUNDATION_EXPORT NSString* const results;
FOUNDATION_EXPORT NSString* const filePath;
FOUNDATION_EXPORT NSString* const statusCode;
FOUNDATION_EXPORT NSString* const requestState;
FOUNDATION_EXPORT NSString* const errorResponse;
FOUNDATION_EXPORT NSString* const serverError;
FOUNDATION_EXPORT NSString* const requestType;
FOUNDATION_EXPORT NSString* const syncObjects;
FOUNDATION_EXPORT NSString* const binary;
FOUNDATION_EXPORT NSString* const blobsDirName;
FOUNDATION_EXPORT NSString* const networkTimeout;
FOUNDATION_EXPORT NSString* const downloadInProgress;
FOUNDATION_EXPORT NSString* const uploadInProgress;
FOUNDATION_EXPORT NSString* const deleteInProgress;

typedef NS_ENUM(int, REQUEST_TYPE) {
    DOWNLOAD=1
};