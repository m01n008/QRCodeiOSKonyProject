//
//  TaskQueueManager.h
//  Binary
//
//  Created by Vamshi Adi on 14/11/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Task/Task.h>

@interface TaskQueueManager : NSObject

-(void)addToScheduledQueue:(KSTask *)task;
-(KSTask *)getNextScheduledTask;
-(void)removeTaskFromInProgressQueue:(KSTask *)task;
-(void)addTaskToInProgressQueue:(KSTask *)task;
-(NSUInteger)getInProgressQueueLength;
-(bool)containsKey:(NSString *)key;
-(void)removeKey:(NSString *)key;
-(void)addTask:(KSTask *)task
       withKey:(NSString *)key;
-(KSTask *)get:(NSString *)key;
- (void)checkAndStartExecution:(KSTask *)task;
- (void)startNextScheduledTask;
- (void) addTaskAndCheckStartExecution:(KSTask *)task
                        withIdentifier:(NSString *)identifier;
@end
