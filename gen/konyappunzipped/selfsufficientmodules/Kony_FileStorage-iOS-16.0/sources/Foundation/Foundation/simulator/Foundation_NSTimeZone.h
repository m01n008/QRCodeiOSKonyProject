#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSTimeZone_symbols(JSContext*);
@protocol NSTimeZoneInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * name;
@property (readonly,copy) NSData * data;
-(NSInteger) secondsFromGMTForDate: (NSDate *) aDate ;
-(NSString *) abbreviationForDate: (NSDate *) aDate ;
-(BOOL) isDaylightSavingTimeForDate: (NSDate *) aDate ;
-(NSTimeInterval) daylightSavingTimeOffsetForDate: (NSDate *) aDate ;
-(NSDate *) nextDaylightSavingTimeTransitionAfterDate: (NSDate *) aDate ;
@end
@protocol NSTimeZoneClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSTimeZoneNSExtendedTimeZoneCategoryInstanceExports<JSExport>
@property (readonly) NSInteger secondsFromGMT;
@property (readonly,copy) NSString * abbreviation;
@property (getter=isDaylightSavingTime,readonly) BOOL daylightSavingTime;
@property (readonly) NSTimeInterval daylightSavingTimeOffset;
@property (readonly,copy) NSDate * nextDaylightSavingTimeTransition;
@property (readonly,copy) NSString * description;
-(BOOL) isEqualToTimeZone: (NSTimeZone *) aTimeZone ;
-(NSString *) localizedName: (NSTimeZoneNameStyle) style locale: (NSLocale *) locale ;
@end
@protocol NSTimeZoneNSExtendedTimeZoneCategoryClassExports<JSExport>
+(void) resetSystemTimeZone;
+(NSDictionary *) abbreviationDictionary;
+(NSTimeZone *) systemTimeZone;
+(NSTimeZone *) defaultTimeZone;
+(void) setDefaultTimeZone: (NSTimeZone *) defaultTimeZone ;
+(NSTimeZone *) localTimeZone;
+(NSArray *) knownTimeZoneNames;
+(void) setAbbreviationDictionary: (NSDictionary *) abbreviationDictionary ;
+(NSString *) timeZoneDataVersion;
@end
@protocol NSTimeZoneNSTimeZoneCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithName,
-(id) jsinitWithName: (NSString *) tzName );
JSExportAs(initWithNameData,
-(id) jsinitWithName: (NSString *) tzName data: (NSData *) aData );
@end
@protocol NSTimeZoneNSTimeZoneCreationCategoryClassExports<JSExport>
+(id) timeZoneWithName: (NSString *) tzName ;
+(id) timeZoneWithName: (NSString *) tzName data: (NSData *) aData ;
+(id) timeZoneForSecondsFromGMT: (NSInteger) seconds ;
+(id) timeZoneWithAbbreviation: (NSString *) abbreviation ;
@end
#pragma clang diagnostic pop