#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSLocale (Exports)
-(id) jsinitWithLocaleIdentifier: (NSString *) string 
{
	id resultVal__;
	resultVal__ = [[self initWithLocaleIdentifier: string ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSLocale class], @protocol(NSLocaleInstanceExports));
	class_addProtocol([NSLocale class], @protocol(NSLocaleClassExports));
	class_addProtocol([NSLocale class], @protocol(NSLocaleNSLocaleGeneralInfoCategoryInstanceExports));
	class_addProtocol([NSLocale class], @protocol(NSLocaleNSLocaleGeneralInfoCategoryClassExports));
	class_addProtocol([NSLocale class], @protocol(NSLocaleNSLocaleCreationCategoryInstanceExports));
	class_addProtocol([NSLocale class], @protocol(NSLocaleNSLocaleCreationCategoryClassExports));
	class_addProtocol([NSLocale class], @protocol(NSLocaleNSExtendedLocaleCategoryInstanceExports));
	class_addProtocol([NSLocale class], @protocol(NSLocaleNSExtendedLocaleCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSLocaleLanguageDirectionUnknown"] = @0U;
	context[@"NSLocaleLanguageDirectionLeftToRight"] = @1U;
	context[@"NSLocaleLanguageDirectionRightToLeft"] = @2U;
	context[@"NSLocaleLanguageDirectionTopToBottom"] = @3U;
	context[@"NSLocaleLanguageDirectionBottomToTop"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSLocaleCalendar;
	if (p != NULL) context[@"NSLocaleCalendar"] = NSLocaleCalendar;
	p = (void*) &NSLocaleCollatorIdentifier;
	if (p != NULL) context[@"NSLocaleCollatorIdentifier"] = NSLocaleCollatorIdentifier;
	p = (void*) &NSLocaleQuotationEndDelimiterKey;
	if (p != NULL) context[@"NSLocaleQuotationEndDelimiterKey"] = NSLocaleQuotationEndDelimiterKey;
	p = (void*) &NSLocaleAlternateQuotationBeginDelimiterKey;
	if (p != NULL) context[@"NSLocaleAlternateQuotationBeginDelimiterKey"] = NSLocaleAlternateQuotationBeginDelimiterKey;
	p = (void*) &NSLocaleUsesMetricSystem;
	if (p != NULL) context[@"NSLocaleUsesMetricSystem"] = NSLocaleUsesMetricSystem;
	p = (void*) &NSLocaleDecimalSeparator;
	if (p != NULL) context[@"NSLocaleDecimalSeparator"] = NSLocaleDecimalSeparator;
	p = (void*) &NSIslamicCalendar;
	if (p != NULL) context[@"NSIslamicCalendar"] = NSIslamicCalendar;
	p = (void*) &NSLocaleCurrencySymbol;
	if (p != NULL) context[@"NSLocaleCurrencySymbol"] = NSLocaleCurrencySymbol;
	p = (void*) &NSLocaleScriptCode;
	if (p != NULL) context[@"NSLocaleScriptCode"] = NSLocaleScriptCode;
	p = (void*) &NSIndianCalendar;
	if (p != NULL) context[@"NSIndianCalendar"] = NSIndianCalendar;
	p = (void*) &NSLocaleGroupingSeparator;
	if (p != NULL) context[@"NSLocaleGroupingSeparator"] = NSLocaleGroupingSeparator;
	p = (void*) &NSIslamicCivilCalendar;
	if (p != NULL) context[@"NSIslamicCivilCalendar"] = NSIslamicCivilCalendar;
	p = (void*) &NSISO8601Calendar;
	if (p != NULL) context[@"NSISO8601Calendar"] = NSISO8601Calendar;
	p = (void*) &NSLocaleCollationIdentifier;
	if (p != NULL) context[@"NSLocaleCollationIdentifier"] = NSLocaleCollationIdentifier;
	p = (void*) &NSJapaneseCalendar;
	if (p != NULL) context[@"NSJapaneseCalendar"] = NSJapaneseCalendar;
	p = (void*) &NSRepublicOfChinaCalendar;
	if (p != NULL) context[@"NSRepublicOfChinaCalendar"] = NSRepublicOfChinaCalendar;
	p = (void*) &NSLocaleCurrencyCode;
	if (p != NULL) context[@"NSLocaleCurrencyCode"] = NSLocaleCurrencyCode;
	p = (void*) &NSLocaleExemplarCharacterSet;
	if (p != NULL) context[@"NSLocaleExemplarCharacterSet"] = NSLocaleExemplarCharacterSet;
	p = (void*) &NSLocaleVariantCode;
	if (p != NULL) context[@"NSLocaleVariantCode"] = NSLocaleVariantCode;
	p = (void*) &NSLocaleMeasurementSystem;
	if (p != NULL) context[@"NSLocaleMeasurementSystem"] = NSLocaleMeasurementSystem;
	p = (void*) &NSLocaleIdentifier;
	if (p != NULL) context[@"NSLocaleIdentifier"] = NSLocaleIdentifier;
	p = (void*) &NSHebrewCalendar;
	if (p != NULL) context[@"NSHebrewCalendar"] = NSHebrewCalendar;
	p = (void*) &NSLocaleAlternateQuotationEndDelimiterKey;
	if (p != NULL) context[@"NSLocaleAlternateQuotationEndDelimiterKey"] = NSLocaleAlternateQuotationEndDelimiterKey;
	p = (void*) &NSGregorianCalendar;
	if (p != NULL) context[@"NSGregorianCalendar"] = NSGregorianCalendar;
	p = (void*) &NSLocaleCountryCode;
	if (p != NULL) context[@"NSLocaleCountryCode"] = NSLocaleCountryCode;
	p = (void*) &NSChineseCalendar;
	if (p != NULL) context[@"NSChineseCalendar"] = NSChineseCalendar;
	p = (void*) &NSBuddhistCalendar;
	if (p != NULL) context[@"NSBuddhistCalendar"] = NSBuddhistCalendar;
	p = (void*) &NSLocaleQuotationBeginDelimiterKey;
	if (p != NULL) context[@"NSLocaleQuotationBeginDelimiterKey"] = NSLocaleQuotationBeginDelimiterKey;
	p = (void*) &NSCurrentLocaleDidChangeNotification;
	if (p != NULL) context[@"NSCurrentLocaleDidChangeNotification"] = NSCurrentLocaleDidChangeNotification;
	p = (void*) &NSLocaleLanguageCode;
	if (p != NULL) context[@"NSLocaleLanguageCode"] = NSLocaleLanguageCode;
	p = (void*) &NSPersianCalendar;
	if (p != NULL) context[@"NSPersianCalendar"] = NSPersianCalendar;
}
void load_Foundation_NSLocale_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
