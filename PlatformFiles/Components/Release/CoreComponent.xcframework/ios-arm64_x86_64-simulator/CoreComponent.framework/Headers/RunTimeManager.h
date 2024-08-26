//
//  RunTimeManager.h
//  VM
//
//  Created by ఉదయ్ కిరణ్ on 14/05/14.
//
//

#import <Foundation/Foundation.h>
#import "Runtime.h"
#import "KonyTypes.h"
#import "KonyManager.h"



@interface WrkrThread : NSThread
{
@public
    BOOL stopThread;
@private
    NSRunLoop* runLoop;
}

@property(readwrite, assign) BOOL stopThread;

@end



@interface RunTimeManager : KonyManager
{
    @private
        Runtime *rootRunTime;
}

+ (instancetype)sharedInstance;
-(BOOL) registerRunTime:(Runtime*) childRunTime withParentRunTimeId:(uint) parentRunTimeID;
-(BOOL) deRegisterRunTime:(Runtime*) childRunTime;
-(Runtime*) getRunTimeForID:(uint) runtimeID;
-(Runtime*) getRootRunTime;
+(int) getUniqueRunTimeID;
-(void) setUpChildRuntime:(Runtime*) aChildRuntime;
+(uint) getCurrentThreadID;
-(id) getCurrentRuntime;
-(id) getCurrentThread;
-(Runtime*) createAndSetupRuntimeForWorker:(id) aWorker;

@end


