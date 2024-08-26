#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateComponentsFormatter_symbols(JSContext*);
@protocol NSDateComponentsFormatterInstanceExports<JSExport>
@property () NSDateComponentsFormatterUnitsStyle unitsStyle;
@property () NSCalendarUnit allowedUnits;
@property () NSDateComponentsFormatterZeroFormattingBehavior zeroFormattingBehavior;
@property (copy) NSCalendar * calendar;
@property (copy) NSDate * referenceDate;
@property () BOOL allowsFractionalUnits;
@property () NSInteger maximumUnitCount;
@property () BOOL collapsesLargestUnit;
@property () BOOL includesApproximationPhrase;
@property () BOOL includesTimeRemainingPhrase;
@property () NSFormattingContext formattingContext;
-(NSString *) stringForObjectValue: (id) obj ;
-(NSString *) stringFromDateComponents: (NSDateComponents *) components ;
-(NSString *) stringFromDate: (NSDate *) startDate toDate: (NSDate *) endDate ;
-(NSString *) stringFromTimeInterval: (NSTimeInterval) ti ;
@end
@protocol NSDateComponentsFormatterClassExports<JSExport>
+(NSString *) localizedStringFromDateComponents: (NSDateComponents *) components unitsStyle: (NSDateComponentsFormatterUnitsStyle) unitsStyle ;
@end
#pragma clang diagnostic pop