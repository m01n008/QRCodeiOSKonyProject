//
//  JSFunctionStackTracer.h
//  VM
//
//  Created by KH206 on 16/01/14.
//
//

#import <Foundation/Foundation.h>
#ifdef DEBUG_BUILD
#import <JavaScriptCoreC/JavaScriptCore.h>
#else
#import <JavaScriptCore/JavaScriptCore.h>
#endif


extern const NSString* konyJSFunctionStackTraceNotification;
extern const NSString* konyJSFunctionStackTraceThreadName;
extern const NSString* konyJSFunctionStackTraceThreadStack;
extern const NSString* konyJSFunctionStackTraceUpdateType;
extern const NSString* konyJSFunctionStackTraceUpdateTypeWillBeginExecution;
extern const NSString* konyJSFunctionStackTraceUpdateTypeDidEndExecution;
extern const NSString* konyJSFunctionStackTraceFunctionName;

@interface JSFunctionStackTracer : NSObject
{
}

+(JSFunctionStackTracer*) sharedInstance;
-(void) setGlobalContext:(JSGlobalContextRef) globalContext;
-(void) startFunctionTracing;
-(void) endFunctionTracing;

@end
