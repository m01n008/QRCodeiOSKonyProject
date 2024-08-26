#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLinguisticTagger_symbols(JSContext*);
@protocol NSLinguisticTaggerInstanceExports<JSExport>
@property (readonly,copy) NSArray * tagSchemes;
@property (retain) NSString * string;
@property (readonly,copy) NSString * dominantLanguage;
JSExportAs(initWithTagSchemesOptions,
-(id) jsinitWithTagSchemes: (NSArray *) tagSchemes options: (NSUInteger) opts );
-(void) setOrthography: (NSOrthography *) orthography range: (NSRange) range ;
-(void) stringEditedInRange: (NSRange) newRange changeInLength: (NSInteger) delta ;
-(NSRange) tokenRangeAtIndex: (NSUInteger) charIndex unit: (NSLinguisticTaggerUnit) unit ;
-(NSRange) sentenceRangeForRange: (NSRange) range ;
JSExportAs(enumerateTagsInRangeUnitSchemeOptionsUsingBlock,
-(void) jsenumerateTagsInRange: (NSRange) range unit: (NSLinguisticTaggerUnit) unit scheme: (NSLinguisticTagScheme) scheme options: (NSLinguisticTaggerOptions) options usingBlock: (JSValue *) block );
JSExportAs(enumerateTagsInRangeSchemeOptionsUsingBlock,
-(void) jsenumerateTagsInRange: (NSRange) range scheme: (NSLinguisticTagScheme) tagScheme options: (NSLinguisticTaggerOptions) opts usingBlock: (JSValue *) block );
@end
@protocol NSLinguisticTaggerClassExports<JSExport>
+(NSArray *) availableTagSchemesForUnit: (NSLinguisticTaggerUnit) unit language: (NSString *) language ;
+(NSArray *) availableTagSchemesForLanguage: (NSString *) language ;
+(NSString *) dominantLanguageForString: (NSString *) string ;
JSExportAs(enumerateTagsForStringRangeUnitSchemeOptionsOrthographyUsingBlock,
+(void) jsenumerateTagsForString: (NSString *) string range: (NSRange) range unit: (NSLinguisticTaggerUnit) unit scheme: (NSLinguisticTagScheme) scheme options: (NSLinguisticTaggerOptions) options orthography: (NSOrthography *) orthography usingBlock: (JSValue *) block );
@end
@protocol NSStringNSLinguisticAnalysisCategoryInstanceExports<JSExport>
JSExportAs(enumerateLinguisticTagsInRangeSchemeOptionsOrthographyUsingBlock,
-(void) jsenumerateLinguisticTagsInRange: (NSRange) range scheme: (NSLinguisticTagScheme) scheme options: (NSLinguisticTaggerOptions) options orthography: (NSOrthography *) orthography usingBlock: (JSValue *) block );
@end
@protocol NSStringNSLinguisticAnalysisCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop