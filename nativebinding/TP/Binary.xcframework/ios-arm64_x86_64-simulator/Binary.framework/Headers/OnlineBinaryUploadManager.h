//
//  OnlineBinaryUploadManager.h
//  Binary
//
//  Created by Vamshi Adi on 16/11/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaskQueueManager.h"
#import <Task/Task.h>
#import "CompletionBlocks.h"
@interface OnlineBinaryUploadManager : NSObject  <KSTaskListener>

//Get Instance method.
+ (instancetype)sharedInstance;

+ (void)initialize;

- (void) createAndStartOnlineUploadTaskFor:(NSDictionary *) uploadConfig
  withOnBinaryUploadStartedCompletionBlock:(onBytesUploadStartedCompletionBlock)bytesUploadStartedCompletionBlock
  andOnChunkUploadCompletedCompletionBlock:(onByteChunkUploadCompletedCompletionBlock)byteChunkUploadCompletedCompletionBlock
 andOnBinaryUploadCompletedCompletionBlock:(onBytesUploadCompletedCompletionBlock)bytesUploadCompletedCompletionBlock
         andOnUploadFailureCompletionBlock:(onUploadFailureCompletionBlock)uploadFailureCompletionBlock
                                andOptions:(NSDictionary *)options;

@end
