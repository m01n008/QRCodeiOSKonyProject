//
//  KSTask.h
//  TaskFrameworkLibrary
//
//  Created by Sunil Phani Manne on 07/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//

#import <Foundation/Foundation.h>

//Task State enumeration
typedef NS_ENUM(NSUInteger, KSTaskState) {
    KSTaskStateNotStarted = 0,
    KSTaskStateStarted,
    KSTaskStatePausing,
    KSTaskStatePaused,
    KSTaskStateResuming,
    KSTaskStateStopping,
    KSTaskStateEnded,
    KSTaskStateErrored,
    KSTaskStateCancelled
};

//Owning Queue enumeration
typedef NS_ENUM(NSUInteger, OwningQueueType) {
    
    OwningQueueTypeNoQueue = 0,
    OwningQueueTypeContainerQueue,
    OwningQueueTypeMarkedForCancelQueue,
    OwningQueueTypeScheduledQueue,
    OwningQueueTypeProgressQueue,
};

//Task type enumeration
typedef NS_ENUM(NSUInteger, TaskType) {
    TaskTypeExecutable,
    TaskTypeContainer
};

//Forward declarations
@class KSTask;
@class Matrix;
@class KSTaskError;
@protocol KSTaskListener;
@protocol KSContainerTask;
@protocol KSExecuteableTask;

//Block declarations
typedef void (^ValidateInputBlock)(KSTaskError** validationError);
typedef void (^ExecuteBlock)(KSTask *task, NSMutableDictionary *outputContext, NSMutableDictionary *errorContext);

@interface KSTask : NSObject
{
@protected
    NSUInteger _taskBitMap;
    Matrix *_dependencyMatrix;
    NSMutableDictionary *_errorContext;
    NSMutableDictionary *_outputContext;
    NSMutableOrderedSet <KSTask *>* _subtasks;
}

//Identification properties
@property (nonatomic, readonly) NSString *ID;
@property (nonatomic, readonly) NSString *name;

//Subtask related properties
@property (nonatomic, readonly) NSOrderedSet <KSTask *>* subtasks;
@property (nonatomic, readonly, weak) KSTask  *parentTask;

//Input, Output & Error related properties
@property (nonatomic, copy) NSMutableDictionary *inputContext;
@property (nonatomic, readonly) NSDictionary *outputContext;
@property (nonatomic, readonly) NSDictionary *errorContext;

//Miscellaneous properties
@property (nonatomic, readonly) KSTaskState state;
@property (nonatomic) OwningQueueType owningQueueType;
@property (nonatomic,readonly) TaskType taskType;
@property (nonatomic) BOOL isCancelInProgress;

//Block related properties
@property (nonatomic, copy) ValidateInputBlock validateInputBlock;
@property (nonatomic, copy) ExecuteBlock executeBlock;

//init methods
- (instancetype)initWithName:(NSString *)name;
+ (instancetype)taskWithName:(NSString *)name;
- (instancetype)initWithName:(NSString *)name
             inputValidation:(ValidateInputBlock)inputValidationBlock
                  andExecute:(ExecuteBlock)executeBlock;

//subtask related methods
- (void)addSubtask:(KSTask *)subtask;
- (void)removeSubtask:(KSTask *)subtask;
- (void)addSubtasks:(NSArray <KSTask *> *)subtasks;
- (void)removeSubtasks:(NSArray <KSTask *> *)subtasks;

//error flavoured methods
- (BOOL)addSubtask:(KSTask *)subtask
             error:(NSError **)error;
- (BOOL)removeSubtask:(KSTask *)subtask
                error:(NSError **)error;
- (BOOL)addSubtasks:(NSArray <KSTask *> *)subtasks
              error:(NSError **)error;
- (BOOL)removeSubtasks:(NSArray <KSTask *> *)subtasks
                 error:(NSError **)error;

//Exposed for ease
- (void)raiseError:(NSError *)error;
- (void)raiseContextChangeEvent;
- (void)handleTaskEndedForTask:(KSTask *)task;
- (void)handleErrorsForTask:(KSTask *)task;

//Task control methods
- (void)start;
- (void)pause;
- (void)resume;
- (void)stop;
- (BOOL)cancel:(KSTaskError **)error;
- (void)validateInput:(KSTaskError **)error;
- (void)execute;
- (TaskType)getTypeTask;
+ (BOOL)isCurrentTaskInCancellableState:(KSTask *)task;

//Dependency related methods
- (BOOL)checkForCyclicTaskDependencies;

- (BOOL)addDependencyBetween:(KSTask *)task1
                    andTask2:(KSTask *)task2
                       error:(NSError **)error;

- (BOOL)removeDependencyBetween:(KSTask *)task1
                       andTask2:(KSTask *)task2
                          error:(NSError **)error;

- (BOOL)removeAllDependencies:(NSError **)error;

//(Un)subscription methods
- (BOOL)subscribeForTaskUpdates:(id <KSTaskListener>)listener;
- (BOOL)unsubscribeForTaskUpdates:(id <KSTaskListener>)listener;
- (BOOL)unsubscribeAll;

@end

