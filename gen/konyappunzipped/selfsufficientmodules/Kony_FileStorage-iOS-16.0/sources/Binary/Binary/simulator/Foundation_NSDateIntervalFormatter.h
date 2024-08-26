#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateIntervalFormatter_symbols(JSContext*);
@protocol NSDateIntervalFormatterInstanceExports<JSExport>
@property (copy) NSLocale * locale;
@property (copy) NSCalendar * calendar;
@property (copy) NSTimeZone * timeZone;
@property (copy) NSString * dateTemplate;
@property () NSDateIntervalFormatterStyle dateStyle;
@property () NSDateIntervalFormatterStyle timeStyle;
-(NSString *) stringFromDate: (NSDate *) fromDate toDate: (NSDate *) toDate ;
-(NSString *) stringFromDateInterval: (NSDateInterval *) dateInterval ;
@end
@protocol NSDateIntervalFormatterClassExports<JSExport>
@end
#pragma clang diagnostic pop