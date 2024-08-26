//
//  DownloadManager.h
//  SampleView
//
//  Created by Chandan Makam on 02/11/15.
//  Copyright © 2015 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Job.h"
#import "PendingOperations.h"
#import "BinaryDownloader.h"

@interface DownloadOperation : NSOperation
+(instancetype)sharedInstance;
-(void) notifyOnDownloadTriggered;
-(void) notifyOnJobsAvailable;
@end

