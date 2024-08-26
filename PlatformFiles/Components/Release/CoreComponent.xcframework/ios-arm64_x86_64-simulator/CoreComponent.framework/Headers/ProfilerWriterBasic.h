//
//  ProfilerOutput.h
//  Profiler
//
//  Created by Ramesh Kasturi on 21/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Profiler.h"

#define DEFAULT_PROFILER_OUTPUTFILE "/tmp/profiler.txt"     // default file where the profiler output will be stored
#define KILOBYTE    1024
#define MEGABYTE    1024 * KILOBYTE
#define MILLISEC(sec) ((sec*1000))

// interface for calling the Profiler and 
// logging the results

// this needs to extended as appropriate if we want to log in
// different formats eg: XML, CSV or if we want more elaborate reports

// this is NOT thread-safe

@interface ProfilerWriterBasic : NSObject {
@private
    NSString* _filename;            // file where the profiler output is returned
    NSFileHandle* _output;          // internal handle to the file
    Profiler* _profiler;            // profiler instance
}

-(id) initWithFilename  :(NSString*)filename;   // if you do not want to use the default file
-(bool) openOutput: (NSString*)filename;        // if you want to log to a different file after instance is created
-(NSString*) getFilename;                       // returns the filename where output is logged
-(void) enterFunction :(NSString*)funcname;     // log data when function funcname is called
-(void) enterFunction :(NSString*)funcname isLua:(BOOL)isLua;   // overriden method to log data when function funcname is entered
-(void) leaveFunction :(NSString*)funcname;     // log data when function funcname is returned
-(void) write :(NSString*)buffer;               // to log custom data to the output
-(void) writeSummary;                           // report summary in the output file
-(void) writeMemorySummary;                     // report memory summary
-(void) writeFunctionSummary;                   // report summary about all the functions
-(void) pauseProfiler;                          // pause the profiler
-(void) resumeProfiler;                         // resumes the profiler
@end
