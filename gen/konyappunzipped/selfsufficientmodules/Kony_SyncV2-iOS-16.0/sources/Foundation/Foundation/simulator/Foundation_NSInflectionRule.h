#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSInflectionRule_symbols(JSContext*);
@protocol NSInflectionRuleInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@end
@protocol NSInflectionRuleClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(NSInflectionRule *) automaticRule;
@end
@protocol NSInflectionRuleExplicitInstanceExports<JSExport>
@property (readonly,copy) NSMorphology * morphology;
JSExportAs(initWithMorphology,
-(id) jsinitWithMorphology: (NSMorphology *) morphology );
@end
@protocol NSInflectionRuleExplicitClassExports<JSExport>
@end
@protocol NSInflectionRuleNSInflectionAvailabilityCategoryInstanceExports<JSExport>
@end
@protocol NSInflectionRuleNSInflectionAvailabilityCategoryClassExports<JSExport>
+(BOOL) canInflectLanguage: (NSString *) language ;
+(BOOL) canInflectPreferredLocalization;
@end
#pragma clang diagnostic pop