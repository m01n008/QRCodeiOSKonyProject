#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSListFormatter_symbols(JSContext*);
@protocol NSListFormatterInstanceExports<JSExport>
@property (copy) NSLocale * locale;
@property (copy) NSFormatter * itemFormatter;
-(NSString *) stringFromItems: (NSArray *) items ;
-(NSString *) stringForObjectValue: (id) obj ;
@end
@protocol NSListFormatterClassExports<JSExport>
+(NSString *) localizedStringByJoiningStrings: (NSArray *) strings ;
@end
#pragma clang diagnostic pop