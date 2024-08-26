//
//  KSTask+Protected.h
//  TaskFrameworkLibrary
//
//  Created by Sunil Phani Manne on 07/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//

#ifndef KSTask_Protected_h
#define KSTask_Protected_h

#import "KSTask.h"

#import "KSTaskListener.h"

#pragma mark - Macros

#define CHECK_TASK_INDEX_BOUNDS(index) (index >= [_subtasks count]) ? nil :
#define TASK(index) (CHECK_TASK_INDEX_BOUNDS(index) _subtasks[index])
#define TASK_INDEX(task) ([_subtasks indexOfObject:task])

@class KSTaskError;

@interface KSTask (Protected) <KSTaskListener>

@property (nonatomic, assign) KSTaskState state;

//Task state related methods
- (void)setSubtaskFinished:(NSUInteger)taskIndex;
- (void)resetSubtaskFinished:(NSUInteger)taskIndex;
- (BOOL)isSubtaskFinished:(NSUInteger)taskIndex;
- (BOOL)areAllSubtasksDone;
- (BOOL)isCurrentTaskInCancellableState:(KSTask *)task;
- (void)handleExecute;
//output related methods
- (void)mergeOutputToParentTaskOutput:(KSTask *)task;

//Context related methods
- (void)raiseContextChangeEvent;

//error related methods
- (void)raiseError:(KSTaskError *)error;
- (void)linkChildErrorsToParentTaskErrors:(KSTask *)task;

//Cancel related methods
- (BOOL)isCancellable;
- (void)resetAllFlags;

@end

#endif /* KSTask_Protected_h */
