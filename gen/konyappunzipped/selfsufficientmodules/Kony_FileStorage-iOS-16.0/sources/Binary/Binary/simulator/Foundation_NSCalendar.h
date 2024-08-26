#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCalendar_symbols(JSContext*);
@protocol NSCalendarInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSCalendarIdentifier calendarIdentifier;
@property (copy) NSLocale * locale;
@property (copy) NSTimeZone * timeZone;
@property () NSUInteger firstWeekday;
@property () NSUInteger minimumDaysInFirstWeek;
@property (readonly,copy) NSArray * eraSymbols;
@property (readonly,copy) NSArray * longEraSymbols;
@property (readonly,copy) NSArray * monthSymbols;
@property (readonly,copy) NSArray * shortMonthSymbols;
@property (readonly,copy) NSArray * veryShortMonthSymbols;
@property (readonly,copy) NSArray * standaloneMonthSymbols;
@property (readonly,copy) NSArray * shortStandaloneMonthSymbols;
@property (readonly,copy) NSArray * veryShortStandaloneMonthSymbols;
@property (readonly,copy) NSArray * weekdaySymbols;
@property (readonly,copy) NSArray * shortWeekdaySymbols;
@property (readonly,copy) NSArray * veryShortWeekdaySymbols;
@property (readonly,copy) NSArray * standaloneWeekdaySymbols;
@property (readonly,copy) NSArray * shortStandaloneWeekdaySymbols;
@property (readonly,copy) NSArray * veryShortStandaloneWeekdaySymbols;
@property (readonly,copy) NSArray * quarterSymbols;
@property (readonly,copy) NSArray * shortQuarterSymbols;
@property (readonly,copy) NSArray * standaloneQuarterSymbols;
@property (readonly,copy) NSArray * shortStandaloneQuarterSymbols;
@property (readonly,copy) NSString * AMSymbol;
@property (readonly,copy) NSString * PMSymbol;
JSExportAs(initWithCalendarIdentifier,
-(id) jsinitWithCalendarIdentifier: (NSCalendarIdentifier) ident );
-(NSRange) minimumRangeOfUnit: (NSCalendarUnit) unit ;
-(NSRange) maximumRangeOfUnit: (NSCalendarUnit) unit ;
-(NSRange) rangeOfUnit: (NSCalendarUnit) smaller inUnit: (NSCalendarUnit) larger forDate: (NSDate *) date ;
-(NSUInteger) ordinalityOfUnit: (NSCalendarUnit) smaller inUnit: (NSCalendarUnit) larger forDate: (NSDate *) date ;
-(NSDate *) dateFromComponents: (NSDateComponents *) comps ;
-(NSDateComponents *) components: (NSCalendarUnit) unitFlags fromDate: (NSDate *) date ;
-(NSDate *) dateByAddingComponents: (NSDateComponents *) comps toDate: (NSDate *) date options: (NSCalendarOptions) opts ;
-(NSDateComponents *) components: (NSCalendarUnit) unitFlags fromDate: (NSDate *) startingDate toDate: (NSDate *) resultDate options: (NSCalendarOptions) opts ;
-(NSInteger) component: (NSCalendarUnit) unit fromDate: (NSDate *) date ;
-(NSDate *) dateWithEra: (NSInteger) eraValue year: (NSInteger) yearValue month: (NSInteger) monthValue day: (NSInteger) dayValue hour: (NSInteger) hourValue minute: (NSInteger) minuteValue second: (NSInteger) secondValue nanosecond: (NSInteger) nanosecondValue ;
-(NSDate *) dateWithEra: (NSInteger) eraValue yearForWeekOfYear: (NSInteger) yearValue weekOfYear: (NSInteger) weekValue weekday: (NSInteger) weekdayValue hour: (NSInteger) hourValue minute: (NSInteger) minuteValue second: (NSInteger) secondValue nanosecond: (NSInteger) nanosecondValue ;
-(NSDate *) startOfDayForDate: (NSDate *) date ;
-(NSDateComponents *) componentsInTimeZone: (NSTimeZone *) timezone fromDate: (NSDate *) date ;
-(NSComparisonResult) compareDate: (NSDate *) date1 toDate: (NSDate *) date2 toUnitGranularity: (NSCalendarUnit) unit ;
-(BOOL) isDate: (NSDate *) date1 equalToDate: (NSDate *) date2 toUnitGranularity: (NSCalendarUnit) unit ;
-(BOOL) isDate: (NSDate *) date1 inSameDayAsDate: (NSDate *) date2 ;
-(BOOL) isDateInToday: (NSDate *) date ;
-(BOOL) isDateInYesterday: (NSDate *) date ;
-(BOOL) isDateInTomorrow: (NSDate *) date ;
-(BOOL) isDateInWeekend: (NSDate *) date ;
-(NSDateComponents *) components: (NSCalendarUnit) unitFlags fromDateComponents: (NSDateComponents *) startingDateComp toDateComponents: (NSDateComponents *) resultDateComp options: (NSCalendarOptions) options ;
-(NSDate *) dateByAddingUnit: (NSCalendarUnit) unit value: (NSInteger) value toDate: (NSDate *) date options: (NSCalendarOptions) options ;
-(NSDate *) nextDateAfterDate: (NSDate *) date matchingComponents: (NSDateComponents *) comps options: (NSCalendarOptions) options ;
-(NSDate *) nextDateAfterDate: (NSDate *) date matchingUnit: (NSCalendarUnit) unit value: (NSInteger) value options: (NSCalendarOptions) options ;
-(NSDate *) nextDateAfterDate: (NSDate *) date matchingHour: (NSInteger) hourValue minute: (NSInteger) minuteValue second: (NSInteger) secondValue options: (NSCalendarOptions) options ;
-(NSDate *) dateBySettingUnit: (NSCalendarUnit) unit value: (NSInteger) v ofDate: (NSDate *) date options: (NSCalendarOptions) opts ;
-(NSDate *) dateBySettingHour: (NSInteger) h minute: (NSInteger) m second: (NSInteger) s ofDate: (NSDate *) date options: (NSCalendarOptions) opts ;
-(BOOL) date: (NSDate *) date matchesComponents: (NSDateComponents *) components ;
@end
@protocol NSCalendarClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(NSCalendar *) calendarWithIdentifier: (NSCalendarIdentifier) calendarIdentifierConstant ;
+(NSCalendar *) currentCalendar;
+(NSCalendar *) autoupdatingCurrentCalendar;
@end
@protocol NSDateComponentsInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (copy) NSCalendar * calendar;
@property (copy) NSTimeZone * timeZone;
@property () NSInteger era;
@property () NSInteger year;
@property () NSInteger month;
@property () NSInteger day;
@property () NSInteger hour;
@property () NSInteger minute;
@property () NSInteger second;
@property () NSInteger nanosecond;
@property () NSInteger weekday;
@property () NSInteger weekdayOrdinal;
@property () NSInteger quarter;
@property () NSInteger weekOfMonth;
@property () NSInteger weekOfYear;
@property () NSInteger yearForWeekOfYear;
@property (getter=isLeapMonth) BOOL leapMonth;
@property (readonly,copy) NSDate * date;
@property (getter=isValidDate,readonly) BOOL validDate;
-(NSInteger) week;
-(void) setWeek: (NSInteger) v ;
-(void) setValue: (NSInteger) value forComponent: (NSCalendarUnit) unit ;
-(NSInteger) valueForComponent: (NSCalendarUnit) unit ;
-(BOOL) isValidDateInCalendar: (NSCalendar *) calendar ;
@end
@protocol NSDateComponentsClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop