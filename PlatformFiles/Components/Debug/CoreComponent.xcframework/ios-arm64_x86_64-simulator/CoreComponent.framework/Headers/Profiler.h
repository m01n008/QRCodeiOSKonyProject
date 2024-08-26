//
//  Profiler.h
//  Profiler
//
//  Created by Ramesh Kasturi on 20/09/11.
//  Copyright 2011 Kony Solutions (www.kony.com). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProfilerFunctionData.h"

/*
 * This does the actual profiling work
 * Methods of this interface are NOT thread-safe
 */
@interface Profiler : NSObject {
@private
    NSMutableDictionary* _funcdata;     // to store individual function data
    bool _timerStarted;                 // to know if profiler started
    bool _timerPaused;                  // to know if profiler is paused
    CFTimeInterval _timerBeginTicks;    // stores the time when the profiler started
                                        //      or resumed after a pause
    CFTimeInterval _timerElapsedTicks;  // stores the time elapsed since 
                                        //      the profiler started
                                        //      excluding the time spent while in pause state
    unsigned long _pauseCount;          // number of recursive pause calls
    unsigned long _stackLevel;          // psuedo stack level, for logging purpose only
}

-(FunctionData*) enterFunction: (NSString*)funcname;    // mark that the function entered
-(FunctionData*) leaveFunction: (NSString*)funcname;    // mark the function ended
-(NSDictionary*) getFunctionData;                // to get the data for all functions
-(unsigned long) getFreeMem;                            // free memory available
-(unsigned long) getTotalMem;                           // total memory available
-(unsigned long) getStackLevel;                         // get the psuedo stack leve

-(bool) getMem: (unsigned long*)freemem :(unsigned long*)usedmem;   // internal function to get memory details
-(void) startTimer;                                                 // begin the profiler
-(void) pauseTimer;                                                 // pause the profiler
-(void) resumeTimer;                                                // resume the profiler
-(CFTimeInterval) getElapsedTime;                                   // returns the elapsed time
-(void) resetTimer;                                                 // resets the timer

@end