#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSRunLoop_symbols(JSContext*);
@protocol NSRunLoopInstanceExports<JSExport>
@property (readonly,copy) NSRunLoopMode currentMode;
-(id) getCFRunLoop;
-(void) addTimer: (NSTimer *) timer forMode: (NSRunLoopMode) mode ;
-(void) addPort: (NSPort *) aPort forMode: (NSRunLoopMode) mode ;
-(void) removePort: (NSPort *) aPort forMode: (NSRunLoopMode) mode ;
-(NSDate *) limitDateForMode: (NSRunLoopMode) mode ;
-(void) acceptInputForMode: (NSRunLoopMode) mode beforeDate: (NSDate *) limitDate ;
@end
@protocol NSRunLoopClassExports<JSExport>
+(NSRunLoop *) currentRunLoop;
+(NSRunLoop *) mainRunLoop;
@end
@protocol NSRunLoopNSRunLoopConveniencesCategoryInstanceExports<JSExport>
-(void) run;
-(void) runUntilDate: (NSDate *) limitDate ;
-(BOOL) runMode: (NSRunLoopMode) mode beforeDate: (NSDate *) limitDate ;
JSExportAs(performInModesBlock,
-(void) jsperformInModes: (NSArray *) modes block: (JSValue *) block );
JSExportAs(performBlock,
-(void) jsperformBlock: (JSValue *) block );
@end
@protocol NSRunLoopNSRunLoopConveniencesCategoryClassExports<JSExport>
@end
@protocol NSObjectNSDelayedPerformingCategoryInstanceExports<JSExport>
JSExportAs(performSelectorWithObjectAfterDelayInModes,
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay inModes: (NSArray *) modes );
JSExportAs(performSelectorWithObjectAfterDelay,
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay );
@end
@protocol NSObjectNSDelayedPerformingCategoryClassExports<JSExport>
JSExportAs(cancelPreviousPerformRequestsWithTargetSelectorObject,
+(void) jscancelPreviousPerformRequestsWithTarget: (id) aTarget selector: (NSString *) aSelector object: (id) anArgument );
+(void) cancelPreviousPerformRequestsWithTarget: (id) aTarget ;
@end
@protocol NSRunLoopNSOrderedPerformCategoryInstanceExports<JSExport>
JSExportAs(performSelectorTargetArgumentOrderModes,
-(void) jsperformSelector: (NSString *) aSelector target: (id) target argument: (id) arg order: (NSUInteger) order modes: (NSArray *) modes );
JSExportAs(cancelPerformSelectorTargetArgument,
-(void) jscancelPerformSelector: (NSString *) aSelector target: (id) target argument: (id) arg );
-(void) cancelPerformSelectorsWithTarget: (id) target ;
@end
@protocol NSRunLoopNSOrderedPerformCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop