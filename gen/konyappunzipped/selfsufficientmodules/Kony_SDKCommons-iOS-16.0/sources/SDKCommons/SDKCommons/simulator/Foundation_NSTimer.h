#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSTimer_symbols(JSContext*);
@protocol NSTimerInstanceExports<JSExport>
@property (copy) NSDate * fireDate;
@property (readonly) NSTimeInterval timeInterval;
@property () NSTimeInterval tolerance;
@property (getter=isValid,readonly) BOOL valid;
@property (readonly,retain) id userInfo;
JSExportAs(initWithFireDateIntervalRepeatsBlock,
-(id) jsinitWithFireDate: (NSDate *) date interval: (NSTimeInterval) interval repeats: (BOOL) repeats block: (JSValue *) block );
JSExportAs(initWithFireDateIntervalTargetSelectorUserInfoRepeats,
-(id) jsinitWithFireDate: (NSDate *) date interval: (NSTimeInterval) ti target: (id) t selector: (NSString *) s userInfo: (id) ui repeats: (BOOL) rep );
-(void) fire;
-(void) invalidate;
@end
@protocol NSTimerClassExports<JSExport>
+(NSTimer *) timerWithTimeInterval: (NSTimeInterval) ti invocation: (NSInvocation *) invocation repeats: (BOOL) yesOrNo ;
+(NSTimer *) scheduledTimerWithTimeInterval: (NSTimeInterval) ti invocation: (NSInvocation *) invocation repeats: (BOOL) yesOrNo ;
JSExportAs(timerWithTimeIntervalTargetSelectorUserInfoRepeats,
+(NSTimer *) jstimerWithTimeInterval: (NSTimeInterval) ti target: (id) aTarget selector: (NSString *) aSelector userInfo: (id) userInfo repeats: (BOOL) yesOrNo );
JSExportAs(scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeats,
+(NSTimer *) jsscheduledTimerWithTimeInterval: (NSTimeInterval) ti target: (id) aTarget selector: (NSString *) aSelector userInfo: (id) userInfo repeats: (BOOL) yesOrNo );
JSExportAs(timerWithTimeIntervalRepeatsBlock,
+(NSTimer *) jstimerWithTimeInterval: (NSTimeInterval) interval repeats: (BOOL) repeats block: (JSValue *) block );
JSExportAs(scheduledTimerWithTimeIntervalRepeatsBlock,
+(NSTimer *) jsscheduledTimerWithTimeInterval: (NSTimeInterval) interval repeats: (BOOL) repeats block: (JSValue *) block );
@end
#pragma clang diagnostic pop