#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSPersonNameComponentsFormatter_symbols(JSContext*);
@protocol NSPersonNameComponentsFormatterInstanceExports<JSExport>
@property () NSPersonNameComponentsFormatterStyle style;
@property (getter=isPhonetic) BOOL phonetic;
@property (copy) NSLocale * locale;
-(NSString *) stringFromPersonNameComponents: (NSPersonNameComponents *) components ;
-(NSAttributedString *) annotatedStringFromPersonNameComponents: (NSPersonNameComponents *) components ;
-(NSPersonNameComponents *) personNameComponentsFromString: (NSString *) string ;
@end
@protocol NSPersonNameComponentsFormatterClassExports<JSExport>
+(NSString *) localizedStringFromPersonNameComponents: (NSPersonNameComponents *) components style: (NSPersonNameComponentsFormatterStyle) nameFormatStyle options: (NSPersonNameComponentsFormatterOptions) nameOptions ;
@end
#pragma clang diagnostic pop