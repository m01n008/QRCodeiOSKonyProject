#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSRunLoop_symbols(JSContext*);
@protocol NSObjectNSDelayedPerformingCategoryInstanceExports<JSExport>
JSExportAs(performSelectorWithObjectAfterDelay,
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay );
JSExportAs(performSelectorWithObjectAfterDelayInModes,
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay inModes: (NSArray *) modes );
@end
@protocol NSObjectNSDelayedPerformingCategoryClassExports<JSExport>
+(void) cancelPreviousPerformRequestsWithTarget: (id) aTarget ;
JSExportAs(cancelPreviousPerformRequestsWithTargetSelectorObject,
+(void) jscancelPreviousPerformRequestsWithTarget: (id) aTarget selector: (NSString *) aSelector object: (id) anArgument );
@end
@protocol NSRunLoopNSOrderedPerformCategoryInstanceExports<JSExport>
JSExportAs(performSelectorTargetArgumentOrderModes,
-(void) jsperformSelector: (NSString *) aSelector target: (id) target argument: (id) arg order: (NSUInteger) order modes: (NSArray *) modes );
-(void) cancelPerformSelectorsWithTarget: (id) target ;
JSExportAs(cancelPerformSelectorTargetArgument,
-(void) jscancelPerformSelector: (NSString *) aSelector target: (id) target argument: (id) arg );
@end
@protocol NSRunLoopNSOrderedPerformCategoryClassExports<JSExport>
@end
@protocol NSRunLoopInstanceExports<JSExport>
@property (readonly,copy) NSString * currentMode;
-(NSDate *) limitDateForMode: (NSString *) mode ;
-(id) getCFRunLoop;
-(void) addTimer: (NSTimer *) timer forMode: (NSString *) mode ;
-(void) addPort: (NSPort *) aPort forMode: (NSString *) mode ;
-(void) acceptInputForMode: (NSString *) mode beforeDate: (NSDate *) limitDate ;
-(void) removePort: (NSPort *) aPort forMode: (NSString *) mode ;
@end
@protocol NSRunLoopClassExports<JSExport>
+(NSRunLoop *) mainRunLoop;
+(NSRunLoop *) currentRunLoop;
@end
@protocol NSRunLoopNSRunLoopConveniencesCategoryInstanceExports<JSExport>
-(void) runUntilDate: (NSDate *) limitDate ;
-(void) run;
-(BOOL) runMode: (NSString *) mode beforeDate: (NSDate *) limitDate ;
@end
@protocol NSRunLoopNSRunLoopConveniencesCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop