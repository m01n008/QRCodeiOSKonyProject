//
//  KonyDownloadOperations.h
//  NSURLSessionEx
//
//  Created by Praveen Kanike on 13/11/17.
//  Copyright © 2017 Praveen Kanike. All rights reserved.
//

#ifndef KonyDownloadOperations_h
#define KonyDownloadOperations_h

#import "KonyDownloader.h"

@interface KonyDownloaderOperation : NSOperation < NSURLSessionTaskDelegate, NSURLSessionDataDelegate>
@property (strong, nonatomic, readonly, nullable) NSURLRequest *request;
@property (strong, nonatomic, readonly, nullable) NSURLSessionTask *dataTask;
@property (strong, nonatomic, nullable) NSString *httpMethod;


- (nonnull instancetype)initWithRequest:(nullable NSURLRequest *)request;
- (nullable id)addHandlersForcompleted:(nullable DownloaderCompletedBlock)completedBlock;


@end


#endif /* KonyDownloadOperations_h */
