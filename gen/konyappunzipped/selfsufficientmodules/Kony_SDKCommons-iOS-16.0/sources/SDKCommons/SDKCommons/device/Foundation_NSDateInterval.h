#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateInterval_symbols(JSContext*);
@protocol NSDateIntervalInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSDate * startDate;
@property (readonly,copy) NSDate * endDate;
@property (readonly) NSTimeInterval duration;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithStartDateDuration,
-(id) jsinitWithStartDate: (NSDate *) startDate duration: (NSTimeInterval) duration );
JSExportAs(initWithStartDateEndDate,
-(id) jsinitWithStartDate: (NSDate *) startDate endDate: (NSDate *) endDate );
-(NSComparisonResult) compare: (NSDateInterval *) dateInterval ;
-(BOOL) isEqualToDateInterval: (NSDateInterval *) dateInterval ;
-(BOOL) intersectsDateInterval: (NSDateInterval *) dateInterval ;
-(NSDateInterval *) intersectionWithDateInterval: (NSDateInterval *) dateInterval ;
-(BOOL) containsDate: (NSDate *) date ;
@end
@protocol NSDateIntervalClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop