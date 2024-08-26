#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVTextStyleRule_symbols(JSContext*);
@protocol AVTextStyleRuleInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSDictionary * textMarkupAttributes;
@property (readonly,nonatomic) NSString * textSelector;
JSExportAs(initWithTextMarkupAttributesTextSelector,
-(id) jsinitWithTextMarkupAttributes: (NSDictionary *) textMarkupAttributes textSelector: (NSString *) textSelector );
JSExportAs(initWithTextMarkupAttributes,
-(id) jsinitWithTextMarkupAttributes: (NSDictionary *) textMarkupAttributes );
@end
@protocol AVTextStyleRuleClassExports<JSExport, NSCopyingClassExports_>
+(id) propertyListForTextStyleRules: (NSArray *) textStyleRules ;
+(AVTextStyleRule *) textStyleRuleWithTextMarkupAttributes: (NSDictionary *) textMarkupAttributes ;
+(AVTextStyleRule *) textStyleRuleWithTextMarkupAttributes: (NSDictionary *) textMarkupAttributes textSelector: (NSString *) textSelector ;
+(NSArray *) textStyleRulesFromPropertyList: (id) plist ;
@end
#pragma clang diagnostic pop