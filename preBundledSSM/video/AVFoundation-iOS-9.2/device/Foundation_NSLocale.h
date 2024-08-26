#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLocale_symbols(JSContext*);
@protocol NSLocaleInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
JSExportAs(initWithLocaleIdentifier,
-(id) jsinitWithLocaleIdentifier: (NSString *) string );
-(NSString *) displayNameForKey: (id) key value: (id) value ;
-(id) objectForKey: (id) key ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSLocaleClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSLocaleNSLocaleGeneralInfoCategoryInstanceExports<JSExport>
@end
@protocol NSLocaleNSLocaleGeneralInfoCategoryClassExports<JSExport>
+(NSString *) canonicalLocaleIdentifierFromString: (NSString *) string ;
+(NSArray *) ISOLanguageCodes;
+(uint32_t) windowsLocaleCodeFromLocaleIdentifier: (NSString *) localeIdentifier ;
+(NSArray *) ISOCountryCodes;
+(NSString *) canonicalLanguageIdentifierFromString: (NSString *) string ;
+(NSString *) localeIdentifierFromWindowsLocaleCode: (uint32_t) lcid ;
+(NSArray *) ISOCurrencyCodes;
+(NSArray *) preferredLanguages;
+(NSLocaleLanguageDirection) lineDirectionForLanguage: (NSString *) isoLangCode ;
+(NSArray *) commonISOCurrencyCodes;
+(NSArray *) availableLocaleIdentifiers;
+(NSDictionary *) componentsFromLocaleIdentifier: (NSString *) string ;
+(NSString *) localeIdentifierFromComponents: (NSDictionary *) dict ;
+(NSLocaleLanguageDirection) characterDirectionForLanguage: (NSString *) isoLangCode ;
@end
@protocol NSLocaleNSLocaleCreationCategoryInstanceExports<JSExport>
@end
@protocol NSLocaleNSLocaleCreationCategoryClassExports<JSExport>
+(NSLocale *) currentLocale;
+(NSLocale *) autoupdatingCurrentLocale;
+(id) localeWithLocaleIdentifier: (NSString *) ident ;
+(NSLocale *) systemLocale;
@end
@protocol NSLocaleNSExtendedLocaleCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * localeIdentifier;
@end
@protocol NSLocaleNSExtendedLocaleCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop