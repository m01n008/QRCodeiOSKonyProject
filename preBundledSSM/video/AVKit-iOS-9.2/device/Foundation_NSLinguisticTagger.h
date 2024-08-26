#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLinguisticTagger_symbols(JSContext*);
@protocol NSLinguisticTaggerInstanceExports<JSExport>
@property (retain) NSString * string;
@property (readonly,copy) NSArray * tagSchemes;
JSExportAs(initWithTagSchemesOptions,
-(id) jsinitWithTagSchemes: (NSArray *) tagSchemes options: (NSUInteger) opts );
-(void) setOrthography: (NSOrthography *) orthography range: (NSRange) range ;
JSExportAs(enumerateTagsInRangeSchemeOptionsUsingBlock,
-(void) jsenumerateTagsInRange: (NSRange) range scheme: (NSString *) tagScheme options: (NSLinguisticTaggerOptions) opts usingBlock: (JSValue *) block );
-(NSRange) sentenceRangeForRange: (NSRange) range ;
-(void) stringEditedInRange: (NSRange) newRange changeInLength: (NSInteger) delta ;
@end
@protocol NSLinguisticTaggerClassExports<JSExport>
+(NSArray *) availableTagSchemesForLanguage: (NSString *) language ;
@end
@protocol NSStringNSLinguisticAnalysisCategoryInstanceExports<JSExport>
JSExportAs(enumerateLinguisticTagsInRangeSchemeOptionsOrthographyUsingBlock,
-(void) jsenumerateLinguisticTagsInRange: (NSRange) range scheme: (NSString *) tagScheme options: (NSLinguisticTaggerOptions) opts orthography: (NSOrthography *) orthography usingBlock: (JSValue *) block );
@end
@protocol NSStringNSLinguisticAnalysisCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop