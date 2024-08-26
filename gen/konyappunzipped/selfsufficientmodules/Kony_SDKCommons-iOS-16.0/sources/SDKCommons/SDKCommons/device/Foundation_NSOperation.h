#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSOperation_symbols(JSContext*);
@protocol NSOperationInstanceExports<JSExport>
@property (getter=isCancelled,readonly) BOOL cancelled;
@property (getter=isExecuting,readonly) BOOL executing;
@property (getter=isFinished,readonly) BOOL finished;
@property (getter=isConcurrent,readonly) BOOL concurrent;
@property (getter=isAsynchronous,readonly) BOOL asynchronous;
@property (getter=isReady,readonly) BOOL ready;
@property (readonly,copy) NSArray * dependencies;
@property () NSOperationQueuePriority queuePriority;
@property (getter=getJsCompletionBlock,setter=setJsCompletionBlock:) JSValue* jscompletionBlock;
@property () double threadPriority;
@property () NSQualityOfService qualityOfService;
@property (copy) NSString * name;
-(void) start;
-(void) main;
-(void) cancel;
-(void) addDependency: (NSOperation *) op ;
-(void) removeDependency: (NSOperation *) op ;
-(void) waitUntilFinished;
@end
@protocol NSOperationClassExports<JSExport>
@end
@protocol NSBlockOperationInstanceExports<JSExport>
@property (readonly,copy) NSArray * executionBlocks;
JSExportAs(addExecutionBlock,
-(void) jsaddExecutionBlock: (JSValue *) block );
@end
@protocol NSBlockOperationClassExports<JSExport>
JSExportAs(blockOperationWithBlock,
+(id) jsblockOperationWithBlock: (JSValue *) block );
@end
@protocol NSInvocationOperationInstanceExports<JSExport>
@property (readonly,retain) NSInvocation * invocation;
@property (readonly,retain) id result;
JSExportAs(initWithTargetSelectorObject,
-(id) jsinitWithTarget: (id) target selector: (NSString *) sel object: (id) arg );
JSExportAs(initWithInvocation,
-(id) jsinitWithInvocation: (NSInvocation *) inv );
@end
@protocol NSInvocationOperationClassExports<JSExport>
@end
@protocol NSOperationQueueInstanceExports<JSExport, NSProgressReportingInstanceExports_>
@property (readonly,strong) NSProgress * progress;
@property () NSInteger maxConcurrentOperationCount;
@property (getter=isSuspended) BOOL suspended;
@property (copy) NSString * name;
@property () NSQualityOfService qualityOfService;
-(void) addOperation: (NSOperation *) op ;
-(void) addOperations: (NSArray *) ops waitUntilFinished: (BOOL) wait ;
JSExportAs(addOperationWithBlock,
-(void) jsaddOperationWithBlock: (JSValue *) block );
JSExportAs(addBarrierBlock,
-(void) jsaddBarrierBlock: (JSValue *) barrier );
-(void) cancelAllOperations;
-(void) waitUntilAllOperationsAreFinished;
@end
@protocol NSOperationQueueClassExports<JSExport, NSProgressReportingClassExports_>
+(NSOperationQueue *) currentQueue;
+(NSOperationQueue *) mainQueue;
@end
@protocol NSOperationQueueNSDeprecatedCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * operations;
@property (readonly) NSUInteger operationCount;
@end
@protocol NSOperationQueueNSDeprecatedCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop