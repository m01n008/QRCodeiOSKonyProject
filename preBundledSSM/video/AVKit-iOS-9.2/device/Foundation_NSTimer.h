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
@property (getter=isValid,readonly) BOOL valid;
@property () NSTimeInterval tolerance;
@property (readonly,retain) id userInfo;
-(void) invalidate;
-(void) fire;
JSExportAs(initWithFireDateIntervalTargetSelectorUserInfoRepeats,
-(id) jsinitWithFireDate: (NSDate *) date interval: (NSTimeInterval) ti target: (id) t selector: (NSString *) s userInfo: (id) ui repeats: (BOOL) rep );
@end
@protocol NSTimerClassExports<JSExport>
JSExportAs(scheduledTimerWithTimeIntervalTargetSelectorUserInfoRepeats,
+(NSTimer *) jsscheduledTimerWithTimeInterval: (NSTimeInterval) ti target: (id) aTarget selector: (NSString *) aSelector userInfo: (id) userInfo repeats: (BOOL) yesOrNo );
+(NSTimer *) scheduledTimerWithTimeInterval: (NSTimeInterval) ti invocation: (NSInvocation *) invocation repeats: (BOOL) yesOrNo ;
+(NSTimer *) timerWithTimeInterval: (NSTimeInterval) ti invocation: (NSInvocation *) invocation repeats: (BOOL) yesOrNo ;
JSExportAs(timerWithTimeIntervalTargetSelectorUserInfoRepeats,
+(NSTimer *) jstimerWithTimeInterval: (NSTimeInterval) ti target: (id) aTarget selector: (NSString *) aSelector userInfo: (id) userInfo repeats: (BOOL) yesOrNo );
@end
#pragma clang diagnostic pop