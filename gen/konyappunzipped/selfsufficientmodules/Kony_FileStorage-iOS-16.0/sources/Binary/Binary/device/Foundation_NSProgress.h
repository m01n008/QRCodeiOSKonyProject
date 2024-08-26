#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSProgress_symbols(JSContext*);
@protocol NSProgressInstanceExports<JSExport>
@property () int64_t totalUnitCount;
@property () int64_t completedUnitCount;
@property (copy) NSString * localizedDescription;
@property (copy) NSString * localizedAdditionalDescription;
@property (getter=isCancellable) BOOL cancellable;
@property (getter=isPausable) BOOL pausable;
@property (getter=isCancelled,readonly) BOOL cancelled;
@property (getter=isPaused,readonly) BOOL paused;
@property (getter=getJsCancellationHandler,setter=setJsCancellationHandler:) JSValue* jscancellationHandler;
@property (getter=getJsPausingHandler,setter=setJsPausingHandler:) JSValue* jspausingHandler;
@property (getter=getJsResumingHandler,setter=setJsResumingHandler:) JSValue* jsresumingHandler;
@property (getter=isIndeterminate,readonly) BOOL indeterminate;
@property (readonly) double fractionCompleted;
@property (getter=isFinished,readonly) BOOL finished;
@property (readonly,copy) NSDictionary * userInfo;
@property (copy) NSProgressKind kind;
@property (copy) NSNumber * estimatedTimeRemaining;
@property (copy) NSNumber * throughput;
@property (copy) NSProgressFileOperationKind fileOperationKind;
@property (copy) NSURL * fileURL;
@property (copy) NSNumber * fileTotalCount;
@property (copy) NSNumber * fileCompletedCount;
JSExportAs(initWithParentUserInfo,
-(id) jsinitWithParent: (NSProgress *) parentProgressOrNil userInfo: (NSDictionary *) userInfoOrNil );
-(void) becomeCurrentWithPendingUnitCount: (int64_t) unitCount ;
JSExportAs(performAsCurrentWithPendingUnitCountUsingBlock,
-(void) jsperformAsCurrentWithPendingUnitCount: (int64_t) unitCount usingBlock: (JSValue *) work );
-(void) resignCurrent;
-(void) addChild: (NSProgress *) child withPendingUnitCount: (int64_t) inUnitCount ;
-(void) setUserInfoObject: (id) objectOrNil forKey: (NSProgressUserInfoKey) key ;
-(void) cancel;
-(void) pause;
-(void) resume;
@end
@protocol NSProgressClassExports<JSExport>
+(NSProgress *) currentProgress;
+(NSProgress *) progressWithTotalUnitCount: (int64_t) unitCount ;
+(NSProgress *) discreteProgressWithTotalUnitCount: (int64_t) unitCount ;
+(NSProgress *) progressWithTotalUnitCount: (int64_t) unitCount parent: (NSProgress *) parent pendingUnitCount: (int64_t) portionOfParentTotalUnitCount ;
@end
@protocol NSProgressReportingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) NSProgress * progress;
@end
@protocol NSProgressReportingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop