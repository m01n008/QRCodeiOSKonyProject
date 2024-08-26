//
//  DownloadJobManager.h
//  SampleBinaryDownload
//
//  Created by Chandan Makam on 03/11/15.
//  Copyright © 2015 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryDownloader.h"
#import "PendingOperations.h"

@interface DownloadJobManager : NSObject<BinaryDownloaderDelegate>
+(instancetype)sharedInstance;
-(void) startDownloadingJobs:(NSArray*)jobs;
@property (nonatomic, strong) PendingOperations *pendingOperations;
@end
