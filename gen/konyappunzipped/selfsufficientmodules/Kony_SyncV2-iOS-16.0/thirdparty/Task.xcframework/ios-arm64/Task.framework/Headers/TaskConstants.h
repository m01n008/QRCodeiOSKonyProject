//
//  TaskConstants.h
//  TaskFrameworkLibrary
//
//  Created by MADP on 07/09/16.
//  Copyright © 2016 MADP. All rights reserved.
//

#import <Foundation/Foundation.h>

//TODO: Discuss the error domains and codes...

//Context related
FOUNDATION_EXPORT NSString *const kTaskErrors;
FOUNDATION_EXPORT NSString *const kTaskInputContext;
FOUNDATION_EXPORT NSString *const kTaskOutputContext;
FOUNDATION_EXPORT NSString *const kTaskErrorContext;

//Error Domains
FOUNDATION_EXPORT NSString *const kTaskErrorDomain;

/**
 *  All the Task Framework error codes are listed out below.
 *
 *  Task Errors - (2100 - 2120)
 *
 *  Reserved range for Future Use - (2121 - 2140)
 */
//Error Codes
static const NSInteger kTaskInvalidInputErrorCode = 2100;
static const NSInteger kTaskNestedErrorCode = 2101;
static const NSInteger kTaskSubtaskTaskAlreadyStartedErrorCode = 2102;
static const NSInteger kTaskSubtaskMaxTasksReachedErrorCode = 2103;
static const NSInteger kTaskSubtaskCyclicDependencyErrorCode = 2104;
static const NSInteger kTaskSubtaskCyclicParentChildErrorCode = 2105;
static const NSInteger kTaskSubtaskMultipleParentsErrorCode = 2106;
static const NSInteger kTaskSubtaskInvalidDependencyErrorCode = 2107;
static const NSInteger kTaskCancelErrorCode = 2109;
static const NSInteger kTaskCancellationInProgressErrorCode = 2110;
static const NSInteger kTaskIsCancelCannotStartAgainErrorCode = 2111;

static const NSInteger kMaxNumberOfSubtasks = 50;
static const NSInteger kAddDependencyEntry = 1;
static const NSInteger kRemoveDependencyEntry = 0;
/**
 * Maximum number of concurrently running tasks KMaxInProgressTasksCount
 */
static const NSInteger  KMaxInProgressTasksCount = 10;

@interface TaskConstants : NSObject

@end
