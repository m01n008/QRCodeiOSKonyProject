#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSByteCountFormatter_symbols(JSContext*);
@protocol NSByteCountFormatterInstanceExports<JSExport>
@property () NSByteCountFormatterUnits allowedUnits;
@property () NSByteCountFormatterCountStyle countStyle;
@property () BOOL allowsNonnumericFormatting;
@property () BOOL includesUnit;
@property () BOOL includesCount;
@property () BOOL includesActualByteCount;
@property (getter=isAdaptive) BOOL adaptive;
@property () BOOL zeroPadsFractionDigits;
@property () NSFormattingContext formattingContext;
-(NSString *) stringFromByteCount: (long long) byteCount ;
-(NSString *) stringFromMeasurement: (NSMeasurement *) measurement ;
-(NSString *) stringForObjectValue: (id) obj ;
@end
@protocol NSByteCountFormatterClassExports<JSExport>
+(NSString *) stringFromByteCount: (long long) byteCount countStyle: (NSByteCountFormatterCountStyle) countStyle ;
+(NSString *) stringFromMeasurement: (NSMeasurement *) measurement countStyle: (NSByteCountFormatterCountStyle) countStyle ;
@end
#pragma clang diagnostic pop