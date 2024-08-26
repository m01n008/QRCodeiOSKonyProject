#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDateFormatter_symbols(JSContext*);
@protocol NSDateFormatterInstanceExports<JSExport>
@property () NSFormattingContext formattingContext;
@property (copy) NSString * dateFormat;
@property () NSDateFormatterStyle dateStyle;
@property () NSDateFormatterStyle timeStyle;
@property (copy) NSLocale * locale;
@property () BOOL generatesCalendarDates;
@property () NSDateFormatterBehavior formatterBehavior;
@property (copy) NSTimeZone * timeZone;
@property (copy) NSCalendar * calendar;
@property (getter=isLenient) BOOL lenient;
@property (copy) NSDate * twoDigitStartDate;
@property (copy) NSDate * defaultDate;
@property (copy) NSArray * eraSymbols;
@property (copy) NSArray * monthSymbols;
@property (copy) NSArray * shortMonthSymbols;
@property (copy) NSArray * weekdaySymbols;
@property (copy) NSArray * shortWeekdaySymbols;
@property (copy) NSString * AMSymbol;
@property (copy) NSString * PMSymbol;
@property (copy) NSArray * longEraSymbols;
@property (copy) NSArray * veryShortMonthSymbols;
@property (copy) NSArray * standaloneMonthSymbols;
@property (copy) NSArray * shortStandaloneMonthSymbols;
@property (copy) NSArray * veryShortStandaloneMonthSymbols;
@property (copy) NSArray * veryShortWeekdaySymbols;
@property (copy) NSArray * standaloneWeekdaySymbols;
@property (copy) NSArray * shortStandaloneWeekdaySymbols;
@property (copy) NSArray * veryShortStandaloneWeekdaySymbols;
@property (copy) NSArray * quarterSymbols;
@property (copy) NSArray * shortQuarterSymbols;
@property (copy) NSArray * standaloneQuarterSymbols;
@property (copy) NSArray * shortStandaloneQuarterSymbols;
@property (copy) NSDate * gregorianStartDate;
@property () BOOL doesRelativeDateFormatting;
-(NSString *) stringFromDate: (NSDate *) date ;
-(NSDate *) dateFromString: (NSString *) string ;
-(void) setLocalizedDateFormatFromTemplate: (NSString *) dateFormatTemplate ;
@end
@protocol NSDateFormatterClassExports<JSExport>
+(NSString *) localizedStringFromDate: (NSDate *) date dateStyle: (NSDateFormatterStyle) dstyle timeStyle: (NSDateFormatterStyle) tstyle ;
+(NSString *) dateFormatFromTemplate: (NSString *) tmplate options: (NSUInteger) opts locale: (NSLocale *) locale ;
+(NSDateFormatterBehavior) defaultFormatterBehavior;
+(void) setDefaultFormatterBehavior: (NSDateFormatterBehavior) defaultFormatterBehavior ;
@end
#pragma clang diagnostic pop