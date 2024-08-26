#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDate_symbols(JSContext*);
@protocol NSDateInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSTimeInterval timeIntervalSinceReferenceDate;
-(id) jsinit;
JSExportAs(initWithTimeIntervalSinceReferenceDate,
-(id) jsinitWithTimeIntervalSinceReferenceDate: (NSTimeInterval) ti );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSDateClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSDateNSExtendedDateCategoryInstanceExports<JSExport>
@property (readonly) NSTimeInterval timeIntervalSinceNow;
@property (readonly) NSTimeInterval timeIntervalSince1970;
@property (readonly,copy) NSString * description;
-(NSTimeInterval) timeIntervalSinceDate: (NSDate *) anotherDate ;
-(id) addTimeInterval: (NSTimeInterval) seconds ;
-(id) dateByAddingTimeInterval: (NSTimeInterval) ti ;
-(NSDate *) earlierDate: (NSDate *) anotherDate ;
-(NSDate *) laterDate: (NSDate *) anotherDate ;
-(NSComparisonResult) compare: (NSDate *) other ;
-(BOOL) isEqualToDate: (NSDate *) otherDate ;
-(NSString *) descriptionWithLocale: (id) locale ;
@end
@protocol NSDateNSExtendedDateCategoryClassExports<JSExport>
+(NSTimeInterval) timeIntervalSinceReferenceDate;
@end
@protocol NSDateNSDateCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithTimeIntervalSinceNow,
-(id) jsinitWithTimeIntervalSinceNow: (NSTimeInterval) secs );
JSExportAs(initWithTimeIntervalSince1970,
-(id) jsinitWithTimeIntervalSince1970: (NSTimeInterval) secs );
JSExportAs(initWithTimeIntervalSinceDate,
-(id) jsinitWithTimeInterval: (NSTimeInterval) secsToBeAdded sinceDate: (NSDate *) date );
@end
@protocol NSDateNSDateCreationCategoryClassExports<JSExport>
+(id) date;
+(id) dateWithTimeIntervalSinceNow: (NSTimeInterval) secs ;
+(id) dateWithTimeIntervalSinceReferenceDate: (NSTimeInterval) ti ;
+(id) dateWithTimeIntervalSince1970: (NSTimeInterval) secs ;
+(id) dateWithTimeInterval: (NSTimeInterval) secsToBeAdded sinceDate: (NSDate *) date ;
+(NSDate *) distantFuture;
+(NSDate *) distantPast;
+(NSDate *) now;
@end
#pragma clang diagnostic pop