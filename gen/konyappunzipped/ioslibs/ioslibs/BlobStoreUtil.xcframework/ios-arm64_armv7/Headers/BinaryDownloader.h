//
//  BinaryDownloader.h
//  SampleBinaryDownload
//
//  Created by Chandan Makam on 03/11/15.
//  Copyright © 2015 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Job.h"

@protocol BinaryDownloaderDelegate;

@interface BinaryDownloader : NSOperation

@property (nonatomic, assign) id <BinaryDownloaderDelegate> delegate;

@property (nonatomic, readonly, strong) Job *job;

- (id)initWithDownloadJob:(Job *)job delegate:(id<BinaryDownloaderDelegate>) theDelegate;

@end

@protocol BinaryDownloaderDelegate <NSObject>

- (void)binaryDownloaderDidFinish:(BinaryDownloader *)downloader;
@end
