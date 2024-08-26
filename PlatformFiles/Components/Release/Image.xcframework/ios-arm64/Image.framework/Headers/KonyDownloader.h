//
//  KonyDownloader.h
//  NSURLSessionEx
//
//  Created by Praveen Kanike on 13/11/17.
//  Copyright © 2017 Praveen Kanike. All rights reserved.
//

#ifndef KonyDownloader_h
#define KonyDownloader_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^DownloaderCompletedBlock)(UIImage * _Nullable image, NSData * _Nullable data,NSURLResponse * _Nullable respone, NSError * _Nullable error, BOOL finished);

@interface KonyDownloadToken : NSObject
@property (nonatomic, strong, nullable) NSURL *url;
@property (nonatomic, strong, nullable) id downloadOperationCancelToken;
@end


@interface KonyDownloader : NSObject
@property (assign, nonatomic) NSInteger maxConcurrentDownloads;
@property (readonly, nonatomic) NSUInteger currentDownloadCount;
@property (assign, nonatomic) NSTimeInterval downloadTimeout;

+ (nonnull instancetype)sharedDownloader;
- (nonnull instancetype)initWithConfiguration;
- (nullable KonyDownloadToken *)downloadImageWithURL:(nullable NSURL *)url
                                          httpMethod:(NSString*_Nullable)httpMethod
                                            cachePolicy:(NSURLRequestCachePolicy)cachePolicy
                                completed:(nullable DownloaderCompletedBlock)completedBlock;
@end

#endif /* KonyDownloader_h */
