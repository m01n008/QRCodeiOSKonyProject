#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSRelativeDateTimeFormatter_symbols(JSContext*);
@protocol NSRelativeDateTimeFormatterInstanceExports<JSExport>
@property (copy) NSLocale * locale;
@property () NSRelativeDateTimeFormatterUnitsStyle unitsStyle;
@property () NSFormattingContext formattingContext;
@property (copy) NSCalendar * calendar;
@property () NSRelativeDateTimeFormatterStyle dateTimeStyle;
-(NSString *) localizedStringForDate: (NSDate *) date relativeToDate: (NSDate *) referenceDate ;
-(NSString *) localizedStringFromDateComponents: (NSDateComponents *) dateComponents ;
-(NSString *) localizedStringFromTimeInterval: (NSTimeInterval) timeInterval ;
-(NSString *) stringForObjectValue: (id) obj ;
@end
@protocol NSRelativeDateTimeFormatterClassExports<JSExport>
@end
#pragma clang diagnostic pop