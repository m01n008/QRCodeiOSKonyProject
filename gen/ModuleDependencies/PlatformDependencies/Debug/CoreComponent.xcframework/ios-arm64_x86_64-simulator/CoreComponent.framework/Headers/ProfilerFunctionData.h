//
//  ProfilerFunctionData.h
//  Profiler
//
//  Created by Ramesh Kasturi on 13/10/11.
//  Copyright 2011 Kony Solutions (www.kony.com). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

/*
 * object used to store the function specific data
 */
@interface FunctionData: NSObject {
@public
    CFTimeInterval totalRunTime;        // total time spent in this function
    CFTimeInterval lastRunTime;         // last run time of this function
    unsigned long count;                // number of times this function is called
    NSMutableArray *timers;             // used to store the entry timer of this function
                                        //      required to profile recursive functions
}

-(void) addTimer: (CFTimeInterval)t;    // should be called when the function is called
-(CFTimeInterval) getLastTimer;         // should be called when the function returns
@end
