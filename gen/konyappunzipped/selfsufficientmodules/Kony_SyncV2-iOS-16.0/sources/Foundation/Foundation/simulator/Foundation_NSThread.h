#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSThread_symbols(JSContext*);
@protocol NSThreadInstanceExports<JSExport>
@property (readonly,retain) NSMutableDictionary * threadDictionary;
@property () double threadPriority;
@property () NSQualityOfService qualityOfService;
@property (copy) NSString * name;
@property () NSUInteger stackSize;
@property (readonly) BOOL isMainThread;
@property (getter=isExecuting,readonly) BOOL executing;
@property (getter=isFinished,readonly) BOOL finished;
@property (getter=isCancelled,readonly) BOOL cancelled;
-(id) jsinit;
JSExportAs(initWithTargetSelectorObject,
-(id) jsinitWithTarget: (id) target selector: (NSString *) selector object: (id) argument );
JSExportAs(initWithBlock,
-(id) jsinitWithBlock: (JSValue *) block );
-(void) cancel;
-(void) start;
-(void) main;
@end
@protocol NSThreadClassExports<JSExport>
JSExportAs(detachNewThreadWithBlock,
+(void) jsdetachNewThreadWithBlock: (JSValue *) block );
JSExportAs(detachNewThreadSelectorToTargetWithObject,
+(void) jsdetachNewThreadSelector: (NSString *) selector toTarget: (id) target withObject: (id) argument );
+(BOOL) isMultiThreaded;
+(void) sleepUntilDate: (NSDate *) date ;
+(void) sleepForTimeInterval: (NSTimeInterval) ti ;
+(void) exit;
+(double) threadPriority;
+(BOOL) setThreadPriority: (double) p ;
+(NSThread *) currentThread;
+(NSArray *) callStackReturnAddresses;
+(NSArray *) callStackSymbols;
+(BOOL) isMainThread;
+(NSThread *) mainThread;
@end
@protocol NSObjectNSThreadPerformAdditionsCategoryInstanceExports<JSExport>
JSExportAs(performSelectorOnMainThreadWithObjectWaitUntilDoneModes,
-(void) jsperformSelectorOnMainThread: (NSString *) aSelector withObject: (id) arg waitUntilDone: (BOOL) wait modes: (NSArray *) array );
JSExportAs(performSelectorOnMainThreadWithObjectWaitUntilDone,
-(void) jsperformSelectorOnMainThread: (NSString *) aSelector withObject: (id) arg waitUntilDone: (BOOL) wait );
JSExportAs(performSelectorOnThreadWithObjectWaitUntilDoneModes,
-(void) jsperformSelector: (NSString *) aSelector onThread: (NSThread *) thr withObject: (id) arg waitUntilDone: (BOOL) wait modes: (NSArray *) array );
JSExportAs(performSelectorOnThreadWithObjectWaitUntilDone,
-(void) jsperformSelector: (NSString *) aSelector onThread: (NSThread *) thr withObject: (id) arg waitUntilDone: (BOOL) wait );
JSExportAs(performSelectorInBackgroundWithObject,
-(void) jsperformSelectorInBackground: (NSString *) aSelector withObject: (id) arg );
@end
@protocol NSObjectNSThreadPerformAdditionsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop