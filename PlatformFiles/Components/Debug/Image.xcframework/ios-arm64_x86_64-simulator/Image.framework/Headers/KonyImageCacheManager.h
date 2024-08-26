//
//  KonyImageCache.h
//  NSURLSessionEx
//
//  Created by Praveen Kanike on 14/11/17.
//  Copyright © 2017 Praveen Kanike. All rights reserved.
//

#ifndef KonyImageCache_h
#define KonyImageCache_h
#import <UIKit/UIKit.h>
#import "KonyDownloader.h"

@interface CacheObject : NSObject
@property (strong, nonatomic) UIImage * _Nullable img;
@property (strong, nonatomic) NSString * _Nullable etagRespData;
@end
//Bug internal: passing url in the completion callback.
typedef void(^ImageDownloadBlock)(UIImage * _Nullable image,  NSString * _Nullable url, NSError * _Nullable error);

@interface KonyImageCacheManager : NSObject<NSCacheDelegate>
@property (nonatomic) NSUInteger cacheSize;
@property (nonatomic) BOOL retriveCurrentCacheData;
/**
 *  Singleton method, returns the shared instance
 *
 *  @return global shared instance of downloader class
 */
+ (nonnull instancetype)sharedImageDownloader;
-(void)downloadImageWithURL:(nullable NSURL *)url
                cachePolicy:(NSURLRequestCachePolicy)cachePolicy
                  completed:(nullable ImageDownloadBlock)completedBlock;
@end

#endif /* KonyImageCache_h */
