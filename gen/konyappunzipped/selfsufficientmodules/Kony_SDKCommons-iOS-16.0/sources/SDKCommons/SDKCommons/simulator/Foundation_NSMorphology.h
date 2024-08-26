#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMorphology_symbols(JSContext*);
@protocol NSMorphologyInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (nonatomic) NSGrammaticalGender grammaticalGender;
@property (nonatomic) NSGrammaticalPartOfSpeech partOfSpeech;
@property (nonatomic) NSGrammaticalNumber number;
@end
@protocol NSMorphologyClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSMorphologyNSCustomPronounsCategoryInstanceExports<JSExport>
-(NSMorphologyCustomPronoun *) customPronounForLanguage: (NSString *) language ;
JSExportAs(setCustomPronounForLanguageError,
-(BOOL) jssetCustomPronoun: (NSMorphologyCustomPronoun *) features forLanguage: (NSString *) language error: (JSValue *) error );
@end
@protocol NSMorphologyNSCustomPronounsCategoryClassExports<JSExport>
@end
@protocol NSMorphologyCustomPronounInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (copy,nonatomic) NSString * subjectForm;
@property (copy,nonatomic) NSString * objectForm;
@property (copy,nonatomic) NSString * possessiveForm;
@property (copy,nonatomic) NSString * possessiveAdjectiveForm;
@property (copy,nonatomic) NSString * reflexiveForm;
@end
@protocol NSMorphologyCustomPronounClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(BOOL) isSupportedForLanguage: (NSString *) language ;
+(NSArray *) requiredKeysForLanguage: (NSString *) language ;
@end
@protocol NSMorphologyNSMorphologyUserSettingsCategoryInstanceExports<JSExport>
@property (getter=isUnspecified,readonly) BOOL unspecified;
@end
@protocol NSMorphologyNSMorphologyUserSettingsCategoryClassExports<JSExport>
+(NSMorphology *) userMorphology;
@end
#pragma clang diagnostic pop