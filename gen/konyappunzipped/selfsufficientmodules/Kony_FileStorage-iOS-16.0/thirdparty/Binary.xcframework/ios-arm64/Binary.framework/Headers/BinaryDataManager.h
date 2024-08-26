//
//  BinaryDataManager.h
//  TaskFrameworkLibrary
//
//  Created by Krishna Nikhil Vedurumudi on 08/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompletionBlocks.h"
#import <Task/Task.h>

//Binary data manager itself is a TaskListener.

@interface BinaryDataManager : NSObject <KSTaskListener>
{
@protected
    NSMutableArray *schedulingQueue;
    NSMutableArray *inProgressQueue;
    NSMutableArray *finishedQueue;
    
    NSMutableDictionary *tasks;
}

//Get Instance method.
+ (instancetype)sharedInstance;

+ (void)initialize;

//Binary Data Control methods.
- (void)startDownload:(NSString *)blobIDString
           completion:(startDownloadTaskCompletionBlock)completionBlock;

- (void)pauseDownload:(NSString *)blobIDString
           completion:(pauseDownloadTaskCompletionBlock)completionBlock;

- (void)resumeDownload:(NSString *)blobIDString
            completion:(resumeDownloadTaskCompletionBlock)completionBlock;

- (void)createDownloadTaskForDb:(NSString *)dbName
                      tableName:(NSString *)tableName
                     columnName:(NSString *)columnName
                primaryKeyTable:(NSDictionary *)primaryKeyTable
                 downloadConfig:(NSDictionary *)downloadConfig
                     completion:(createDownloadTaskCompletionBlock)completionBlock;

- (void)getBinaryDataFilePathForPrimaryKeys:(NSDictionary *)primaryKeyTable
                                         db:(NSString *)dbName
                                  tableName:(NSString *)tableName
                                 columnName:(NSString *)columnName
                            completionBlock:(getBinaryDataFilePathCompletionBlock)completionBlock;

- (void)deleteBinaryObjectForPrimaryKeys:(NSDictionary *)primaryKeyTable
                                      db:(NSString *)dbName
                               tableName:(NSString *)tableName
                              columnName:(NSString *)columnName
                                 options:(NSDictionary *)deleteOptions
                         completionBlock:(deleteBinaryObjectCompletionBlock)completionBlock;
- (void)clearBinaryDataManagerState;

@end
