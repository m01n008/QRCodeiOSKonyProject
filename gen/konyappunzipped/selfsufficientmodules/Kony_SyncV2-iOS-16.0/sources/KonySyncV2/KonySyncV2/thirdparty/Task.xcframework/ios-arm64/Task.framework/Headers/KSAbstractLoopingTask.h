//
//  KSAbstractLoopingTask.h
//  KonySyncV2
//
//  Created by ambuj.kumar on 21/02/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Task/Task.h>

@interface KSAbstractLoopingTask : KSTask

- (instancetype)init __attribute__((unavailable("Must use initWithSubTasks instead.")));
+ (instancetype)new __attribute__((unavailable("Must use initWithSubTasks instead.")));

//subtask related methods

/*addSubTask cannot be blocked like this because it is being used internally*/

- (void)addSubtasks:(NSArray <KSTask *> *)subtasks __attribute__((unavailable("Not allowed for looping tasks.")));
- (void)removeSubtask:(KSTask *)subtask __attribute__((unavailable("Not allowed for looping tasks.")));
- (void)removeSubtasks:(NSArray <KSTask *> *)subtasks __attribute__((unavailable("Not allowed for looping tasks.")));

//error flavoured methods

/*addSubTask cannot be blocked like this because it is being used internally*/

- (void)addSubtasks:(NSArray <KSTask *> *)subtasks
              error:(NSError **)error __attribute__((unavailable("Not allowed for looping tasks.")));
- (void)removeSubtasks:(NSArray <KSTask *> *)subtasks
                 error:(NSError **)error __attribute__((unavailable("Not allowed for looping tasks.")));
- (void)removeSubtask:(KSTask *)subtask
                error:(NSError **)error __attribute__((unavailable("Not allowed for looping tasks.")));

/**
 * Initialize with a subTask
 * @param subTaskForLooping A Task to be run in each iteration of the loop
 */
- (instancetype)initWithSubTask:(KSTask*)subTaskForLooping error:(NSError**)error;

/**
 * This method is responsible for determining whether to iterate or not
 * Usual logic is to read the output context and determine whether to continue
 * or not according to some value present in output context
 * @state The current state of the task calling this function
 * @return True or false indicating whether to continue looping or not
 */
- (BOOL)shouldIterate:(KSTaskState) state;

/**
 * This method manipulates the inputContext for next iteration (if needed)
 * Leave this method body as blank if not needed
 */
- (void)transformInputContextForNextIteration;

/**
 * This method defines the logic for handling error in current iteration (i.e. the last completed iteration)
 * Depending on nature of error, it may be desirable to appropriately edit the input context and then continue
 * Also, depending on the logic of retry/abort, this method may clean up the error context
 * @return TRUE if it is desired to continue else FALSE
 */
- (BOOL)treatErrorAsSuccess;

/**
 * Cancels the task
 * @return True or False, indicating whether the Task got cancelled or not
 * @throws TaskCannotCancelException If task is not in a state when it can be cancelled
 * @throws TaskCancellationInProgressException If task cancellation is already in progress
 */

- (BOOL)cancel:(KSTaskError *__autoreleasing *)error;

@end
