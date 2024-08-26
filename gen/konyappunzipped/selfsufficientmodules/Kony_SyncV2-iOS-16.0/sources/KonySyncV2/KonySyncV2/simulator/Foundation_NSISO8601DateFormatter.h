#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSISO8601DateFormatter_symbols(JSContext*);
@protocol NSISO8601DateFormatterInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (copy) NSTimeZone * timeZone;
@property () NSISO8601DateFormatOptions formatOptions;
-(id) jsinit;
-(NSString *) stringFromDate: (NSDate *) date ;
-(NSDate *) dateFromString: (NSString *) string ;
@end
@protocol NSISO8601DateFormatterClassExports<JSExport, NSSecureCodingClassExports_>
+(NSString *) stringFromDate: (NSDate *) date timeZone: (NSTimeZone *) timeZone formatOptions: (NSISO8601DateFormatOptions) formatOptions ;
@end
#pragma clang diagnostic pop