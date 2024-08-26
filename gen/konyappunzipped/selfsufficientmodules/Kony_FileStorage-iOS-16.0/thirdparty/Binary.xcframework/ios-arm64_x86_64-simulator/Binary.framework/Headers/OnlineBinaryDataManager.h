//
//  OnlineBinaryDataManager.h
//  Binary
//
//  Created by Vamshi Adi on 07/08/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Task/Task.h>
#import "Chunk.h"
#import "CompletionBlocks.h"
#import "BinaryDataManager.h"

@interface OnlineBinaryDataManager : NSObject <KSTaskListener>{
@private
    NSMutableArray *schedulingQueue;
    NSMutableArray *inProgressQueue;
    
    NSMutableDictionary *tasks;
}

//Get Instance method.
+ (instancetype)sharedInstance;

+ (void)initialize;

- (void) createAndStartOnlineDownloadTaskFor:(NSDictionary *) fileParams
                               withStreaming:(NSString *)streaming
                              downloadConfig:(NSDictionary *) downloadConfig
    withOnFileDownloadStartedCompletionBlock:(onFileDownloadStartedCompletionBlock)fileDownloadStartedCompletionBlock
  andOnChunkDownloadCompletedCompletionBlock:(onChunkDownloadCompletedCompletionBlock)chunkDownloadCompletedCompletionBlock
 andOnStreamDownloadCompletedCompletionBlock:(onStreamDownloadCompletedCompletionBlock)streamDownloadCompletionBlock
   andOnFileDownloadCompletedCompletionBlock:(onFileDownloadCompletedCompletionBlock)fileDownloadCompletedCompletionBlock
         andOnDownloadFailureCompletionBlock:(onDownloadFailureCompletionBlock)downloadFailureCompletionBlock
                                  andOptions:(NSDictionary *)options;
@end
