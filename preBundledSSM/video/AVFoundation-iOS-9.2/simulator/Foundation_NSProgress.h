#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSProgress_symbols(JSContext*);
@protocol NSProgressInstanceExports<JSExport>
@property (readonly) double fractionCompleted;
@property (copy) NSString * localizedDescription;
@property (getter=isCancellable) BOOL cancellable;
@property (getter=getJsResumingHandler,setter=setJsResumingHandler:) JSValue* jsresumingHandler;
@property (copy) NSString * localizedAdditionalDescription;
@property (getter=isPausable) BOOL pausable;
@property () int64_t totalUnitCount;
@property (getter=isPaused,readonly) BOOL paused;
@property () int64_t completedUnitCount;
@property (readonly,copy) NSDictionary * userInfo;
@property (getter=isCancelled,readonly) BOOL cancelled;
@property (getter=getJsCancellationHandler,setter=setJsCancellationHandler:) JSValue* jscancellationHandler;
@property (getter=getJsPausingHandler,setter=setJsPausingHandler:) JSValue* jspausingHandler;
@property (getter=isIndeterminate,readonly) BOOL indeterminate;
@property (copy) NSString * kind;
-(void) becomeCurrentWithPendingUnitCount: (int64_t) unitCount ;
-(void) setUserInfoObject: (id) objectOrNil forKey: (NSString *) key ;
-(void) cancel;
-(void) pause;
-(void) resume;
JSExportAs(initWithParentUserInfo,
-(id) jsinitWithParent: (NSProgress *) parentProgressOrNil userInfo: (NSDictionary *) userInfoOrNil );
-(void) addChild: (NSProgress *) child withPendingUnitCount: (int64_t) inUnitCount ;
-(void) resignCurrent;
@end
@protocol NSProgressClassExports<JSExport>
+(NSProgress *) progressWithTotalUnitCount: (int64_t) unitCount ;
+(NSProgress *) currentProgress;
+(NSProgress *) discreteProgressWithTotalUnitCount: (int64_t) unitCount ;
+(NSProgress *) progressWithTotalUnitCount: (int64_t) unitCount parent: (NSProgress *) parent pendingUnitCount: (int64_t) portionOfParentTotalUnitCount ;
@end
@protocol NSProgressReportingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) NSProgress * progress;
@end
@protocol NSProgressReportingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop