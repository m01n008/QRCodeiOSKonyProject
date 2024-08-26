#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSLocale_symbols(JSContext*);
@protocol NSLocaleInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
-(id) objectForKey: (NSLocaleKey) key ;
-(NSString *) displayNameForKey: (NSLocaleKey) key value: (id) value ;
JSExportAs(initWithLocaleIdentifier,
-(id) jsinitWithLocaleIdentifier: (NSString *) string );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSLocaleClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSLocaleNSExtendedLocaleCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * localeIdentifier;
@property (readonly,copy) NSString * languageCode;
@property (readonly,copy) NSString * countryCode;
@property (readonly,copy) NSString * scriptCode;
@property (readonly,copy) NSString * variantCode;
@property (readonly,copy) NSCharacterSet * exemplarCharacterSet;
@property (readonly,copy) NSString * calendarIdentifier;
@property (readonly,copy) NSString * collationIdentifier;
@property (readonly) BOOL usesMetricSystem;
@property (readonly,copy) NSString * decimalSeparator;
@property (readonly,copy) NSString * groupingSeparator;
@property (readonly,copy) NSString * currencySymbol;
@property (readonly,copy) NSString * currencyCode;
@property (readonly,copy) NSString * collatorIdentifier;
@property (readonly,copy) NSString * quotationBeginDelimiter;
@property (readonly,copy) NSString * quotationEndDelimiter;
@property (readonly,copy) NSString * alternateQuotationBeginDelimiter;
@property (readonly,copy) NSString * alternateQuotationEndDelimiter;
-(NSString *) localizedStringForLocaleIdentifier: (NSString *) localeIdentifier ;
-(NSString *) localizedStringForLanguageCode: (NSString *) languageCode ;
-(NSString *) localizedStringForCountryCode: (NSString *) countryCode ;
-(NSString *) localizedStringForScriptCode: (NSString *) scriptCode ;
-(NSString *) localizedStringForVariantCode: (NSString *) variantCode ;
-(NSString *) localizedStringForCalendarIdentifier: (NSString *) calendarIdentifier ;
-(NSString *) localizedStringForCollationIdentifier: (NSString *) collationIdentifier ;
-(NSString *) localizedStringForCurrencyCode: (NSString *) currencyCode ;
-(NSString *) localizedStringForCollatorIdentifier: (NSString *) collatorIdentifier ;
@end
@protocol NSLocaleNSExtendedLocaleCategoryClassExports<JSExport>
@end
@protocol NSLocaleNSLocaleCreationCategoryInstanceExports<JSExport>
@end
@protocol NSLocaleNSLocaleCreationCategoryClassExports<JSExport>
+(id) localeWithLocaleIdentifier: (NSString *) ident ;
+(NSLocale *) autoupdatingCurrentLocale;
+(NSLocale *) currentLocale;
+(NSLocale *) systemLocale;
@end
@protocol NSLocaleNSLocaleGeneralInfoCategoryInstanceExports<JSExport>
@end
@protocol NSLocaleNSLocaleGeneralInfoCategoryClassExports<JSExport>
+(NSDictionary *) componentsFromLocaleIdentifier: (NSString *) string ;
+(NSString *) localeIdentifierFromComponents: (NSDictionary *) dict ;
+(NSString *) canonicalLocaleIdentifierFromString: (NSString *) string ;
+(NSString *) canonicalLanguageIdentifierFromString: (NSString *) string ;
+(NSString *) localeIdentifierFromWindowsLocaleCode: (uint32_t) lcid ;
+(uint32_t) windowsLocaleCodeFromLocaleIdentifier: (NSString *) localeIdentifier ;
+(NSLocaleLanguageDirection) characterDirectionForLanguage: (NSString *) isoLangCode ;
+(NSLocaleLanguageDirection) lineDirectionForLanguage: (NSString *) isoLangCode ;
+(NSArray *) availableLocaleIdentifiers;
+(NSArray *) ISOLanguageCodes;
+(NSArray *) ISOCountryCodes;
+(NSArray *) ISOCurrencyCodes;
+(NSArray *) commonISOCurrencyCodes;
+(NSArray *) preferredLanguages;
@end
#pragma clang diagnostic pop