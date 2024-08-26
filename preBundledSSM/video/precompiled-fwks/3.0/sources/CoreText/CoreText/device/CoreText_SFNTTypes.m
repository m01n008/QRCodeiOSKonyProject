#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreText_SFNTTypes)
+(JSValue*) valueWithsfntFontDescriptor: (sfntFontDescriptor) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"name": @(s.name),
		@"value": @(s.value),
	} inContext: context];
}
-(sfntFontDescriptor) tosfntFontDescriptor {
	return (sfntFontDescriptor) {
		(FourCharCode) [self[@"name"] toDouble],
		(Fixed) [self[@"value"] toDouble],
	};
}
+(JSValue*) valueWithsfntNameRecord: (sfntNameRecord) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"platformID": @(s.platformID),
		@"scriptID": @(s.scriptID),
		@"languageID": @(s.languageID),
		@"nameID": @(s.nameID),
		@"length": @(s.length),
		@"offset": @(s.offset),
	} inContext: context];
}
-(sfntNameRecord) tosfntNameRecord {
	return (sfntNameRecord) {
		(UInt16) [self[@"platformID"] toUInt32],
		(UInt16) [self[@"scriptID"] toUInt32],
		(UInt16) [self[@"languageID"] toUInt32],
		(UInt16) [self[@"nameID"] toUInt32],
		(UInt16) [self[@"length"] toUInt32],
		(UInt16) [self[@"offset"] toUInt32],
	};
}
+(JSValue*) valueWithsfntFontRunFeature: (sfntFontRunFeature) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"featureType": @(s.featureType),
		@"setting": @(s.setting),
	} inContext: context];
}
-(sfntFontRunFeature) tosfntFontRunFeature {
	return (sfntFontRunFeature) {
		(UInt16) [self[@"featureType"] toUInt32],
		(UInt16) [self[@"setting"] toUInt32],
	};
}
+(JSValue*) valueWithsfntCMapExtendedSubHeader: (sfntCMapExtendedSubHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"format": @(s.format),
		@"reserved": @(s.reserved),
		@"length": @(s.length),
		@"language": @(s.language),
	} inContext: context];
}
-(sfntCMapExtendedSubHeader) tosfntCMapExtendedSubHeader {
	return (sfntCMapExtendedSubHeader) {
		(UInt16) [self[@"format"] toUInt32],
		(UInt16) [self[@"reserved"] toUInt32],
		(UInt32) [self[@"length"] toDouble],
		(UInt32) [self[@"language"] toDouble],
	};
}
+(JSValue*) valueWithsfntCMapEncoding: (sfntCMapEncoding) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"platformID": @(s.platformID),
		@"scriptID": @(s.scriptID),
		@"offset": @(s.offset),
	} inContext: context];
}
-(sfntCMapEncoding) tosfntCMapEncoding {
	return (sfntCMapEncoding) {
		(UInt16) [self[@"platformID"] toUInt32],
		(UInt16) [self[@"scriptID"] toUInt32],
		(UInt32) [self[@"offset"] toDouble],
	};
}
+(JSValue*) valueWithsfntCMapSubHeader: (sfntCMapSubHeader) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"format": @(s.format),
		@"length": @(s.length),
		@"languageID": @(s.languageID),
	} inContext: context];
}
-(sfntCMapSubHeader) tosfntCMapSubHeader {
	return (sfntCMapSubHeader) {
		(UInt16) [self[@"format"] toUInt32],
		(UInt16) [self[@"length"] toUInt32],
		(UInt16) [self[@"languageID"] toUInt32],
	};
}
+(JSValue*) valueWithsfntFontFeatureSetting: (sfntFontFeatureSetting) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"setting": @(s.setting),
		@"nameID": @(s.nameID),
	} inContext: context];
}
-(sfntFontFeatureSetting) tosfntFontFeatureSetting {
	return (sfntFontFeatureSetting) {
		(UInt16) [self[@"setting"] toUInt32],
		(SInt16) [self[@"nameID"] toInt32],
	};
}
+(JSValue*) valueWithsfntDirectoryEntry: (sfntDirectoryEntry) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"tableTag": @(s.tableTag),
		@"checkSum": @(s.checkSum),
		@"offset": @(s.offset),
		@"length": @(s.length),
	} inContext: context];
}
-(sfntDirectoryEntry) tosfntDirectoryEntry {
	return (sfntDirectoryEntry) {
		(FourCharCode) [self[@"tableTag"] toDouble],
		(UInt32) [self[@"checkSum"] toDouble],
		(UInt32) [self[@"offset"] toDouble],
		(UInt32) [self[@"length"] toDouble],
	};
}
+(JSValue*) valueWithsfntVariationAxis: (sfntVariationAxis) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"axisTag": @(s.axisTag),
		@"minValue": @(s.minValue),
		@"defaultValue": @(s.defaultValue),
		@"maxValue": @(s.maxValue),
		@"flags": @(s.flags),
		@"nameID": @(s.nameID),
	} inContext: context];
}
-(sfntVariationAxis) tosfntVariationAxis {
	return (sfntVariationAxis) {
		(FourCharCode) [self[@"axisTag"] toDouble],
		(Fixed) [self[@"minValue"] toDouble],
		(Fixed) [self[@"defaultValue"] toDouble],
		(Fixed) [self[@"maxValue"] toDouble],
		(SInt16) [self[@"flags"] toInt32],
		(SInt16) [self[@"nameID"] toInt32],
	};
}
+(JSValue*) valueWithsfntFeatureName: (sfntFeatureName) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"featureType": @(s.featureType),
		@"settingCount": @(s.settingCount),
		@"offsetToSettings": @(s.offsetToSettings),
		@"featureFlags": @(s.featureFlags),
		@"nameID": @(s.nameID),
	} inContext: context];
}
-(sfntFeatureName) tosfntFeatureName {
	return (sfntFeatureName) {
		(UInt16) [self[@"featureType"] toUInt32],
		(UInt16) [self[@"settingCount"] toUInt32],
		(SInt32) [self[@"offsetToSettings"] toDouble],
		(UInt16) [self[@"featureFlags"] toUInt32],
		(SInt16) [self[@"nameID"] toInt32],
	};
}
+(JSValue*) valueWithFontVariation: (FontVariation) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"name": @(s.name),
		@"value": @(s.value),
	} inContext: context];
}
-(FontVariation) toFontVariation {
	return (FontVariation) {
		(FourCharCode) [self[@"name"] toDouble],
		(Fixed) [self[@"value"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"sizeof_sfntDirectory"] = @12;

	context[@"cmapFontTableTag"] = @1668112752;

	context[@"kFontUnicodePlatform"] = @0;
	context[@"kFontMacintoshPlatform"] = @1;
	context[@"kFontReservedPlatform"] = @2;
	context[@"kFontMicrosoftPlatform"] = @3;
	context[@"kFontCustomPlatform"] = @4;

	context[@"kFontUnicodeDefaultSemantics"] = @0;
	context[@"kFontUnicodeV1_1Semantics"] = @1;
	context[@"kFontISO10646_1993Semantics"] = @2;
	context[@"kFontUnicodeV2_0BMPOnlySemantics"] = @3;
	context[@"kFontUnicodeV2_0FullCoverageSemantics"] = @4;
	context[@"kFontUnicodeV4_0VariationSequenceSemantics"] = @5;
	context[@"kFontUnicode_FullRepertoire"] = @6;

	context[@"kFontRomanScript"] = @0;
	context[@"kFontJapaneseScript"] = @1;
	context[@"kFontTraditionalChineseScript"] = @2;
	context[@"kFontChineseScript"] = @2;
	context[@"kFontKoreanScript"] = @3;
	context[@"kFontArabicScript"] = @4;
	context[@"kFontHebrewScript"] = @5;
	context[@"kFontGreekScript"] = @6;
	context[@"kFontCyrillicScript"] = @7;
	context[@"kFontRussian"] = @7;
	context[@"kFontRSymbolScript"] = @8;
	context[@"kFontDevanagariScript"] = @9;
	context[@"kFontGurmukhiScript"] = @10;
	context[@"kFontGujaratiScript"] = @11;
	context[@"kFontOriyaScript"] = @12;
	context[@"kFontBengaliScript"] = @13;
	context[@"kFontTamilScript"] = @14;
	context[@"kFontTeluguScript"] = @15;
	context[@"kFontKannadaScript"] = @16;
	context[@"kFontMalayalamScript"] = @17;
	context[@"kFontSinhaleseScript"] = @18;
	context[@"kFontBurmeseScript"] = @19;
	context[@"kFontKhmerScript"] = @20;
	context[@"kFontThaiScript"] = @21;
	context[@"kFontLaotianScript"] = @22;
	context[@"kFontGeorgianScript"] = @23;
	context[@"kFontArmenianScript"] = @24;
	context[@"kFontSimpleChineseScript"] = @25;
	context[@"kFontTibetanScript"] = @26;
	context[@"kFontMongolianScript"] = @27;
	context[@"kFontGeezScript"] = @28;
	context[@"kFontEthiopicScript"] = @28;
	context[@"kFontAmharicScript"] = @28;
	context[@"kFontSlavicScript"] = @29;
	context[@"kFontEastEuropeanRomanScript"] = @29;
	context[@"kFontVietnameseScript"] = @30;
	context[@"kFontExtendedArabicScript"] = @31;
	context[@"kFontSindhiScript"] = @31;
	context[@"kFontUninterpretedScript"] = @32;

	context[@"kFontMicrosoftSymbolScript"] = @0;
	context[@"kFontMicrosoftStandardScript"] = @1;
	context[@"kFontMicrosoftUCS4Script"] = @10;

	context[@"kFontCustom8BitScript"] = @0;
	context[@"kFontCustom816BitScript"] = @1;
	context[@"kFontCustom16BitScript"] = @2;

	context[@"kFontEnglishLanguage"] = @0;
	context[@"kFontFrenchLanguage"] = @1;
	context[@"kFontGermanLanguage"] = @2;
	context[@"kFontItalianLanguage"] = @3;
	context[@"kFontDutchLanguage"] = @4;
	context[@"kFontSwedishLanguage"] = @5;
	context[@"kFontSpanishLanguage"] = @6;
	context[@"kFontDanishLanguage"] = @7;
	context[@"kFontPortugueseLanguage"] = @8;
	context[@"kFontNorwegianLanguage"] = @9;
	context[@"kFontHebrewLanguage"] = @10;
	context[@"kFontJapaneseLanguage"] = @11;
	context[@"kFontArabicLanguage"] = @12;
	context[@"kFontFinnishLanguage"] = @13;
	context[@"kFontGreekLanguage"] = @14;
	context[@"kFontIcelandicLanguage"] = @15;
	context[@"kFontMalteseLanguage"] = @16;
	context[@"kFontTurkishLanguage"] = @17;
	context[@"kFontCroatianLanguage"] = @18;
	context[@"kFontTradChineseLanguage"] = @19;
	context[@"kFontUrduLanguage"] = @20;
	context[@"kFontHindiLanguage"] = @21;
	context[@"kFontThaiLanguage"] = @22;
	context[@"kFontKoreanLanguage"] = @23;
	context[@"kFontLithuanianLanguage"] = @24;
	context[@"kFontPolishLanguage"] = @25;
	context[@"kFontHungarianLanguage"] = @26;
	context[@"kFontEstonianLanguage"] = @27;
	context[@"kFontLettishLanguage"] = @28;
	context[@"kFontLatvianLanguage"] = @28;
	context[@"kFontSaamiskLanguage"] = @29;
	context[@"kFontLappishLanguage"] = @29;
	context[@"kFontFaeroeseLanguage"] = @30;
	context[@"kFontFarsiLanguage"] = @31;
	context[@"kFontPersianLanguage"] = @31;
	context[@"kFontRussianLanguage"] = @32;
	context[@"kFontSimpChineseLanguage"] = @33;
	context[@"kFontFlemishLanguage"] = @34;
	context[@"kFontIrishLanguage"] = @35;
	context[@"kFontAlbanianLanguage"] = @36;
	context[@"kFontRomanianLanguage"] = @37;
	context[@"kFontCzechLanguage"] = @38;
	context[@"kFontSlovakLanguage"] = @39;
	context[@"kFontSlovenianLanguage"] = @40;
	context[@"kFontYiddishLanguage"] = @41;
	context[@"kFontSerbianLanguage"] = @42;
	context[@"kFontMacedonianLanguage"] = @43;
	context[@"kFontBulgarianLanguage"] = @44;
	context[@"kFontUkrainianLanguage"] = @45;
	context[@"kFontByelorussianLanguage"] = @46;
	context[@"kFontUzbekLanguage"] = @47;
	context[@"kFontKazakhLanguage"] = @48;
	context[@"kFontAzerbaijaniLanguage"] = @49;
	context[@"kFontAzerbaijanArLanguage"] = @50;
	context[@"kFontArmenianLanguage"] = @51;
	context[@"kFontGeorgianLanguage"] = @52;
	context[@"kFontMoldavianLanguage"] = @53;
	context[@"kFontKirghizLanguage"] = @54;
	context[@"kFontTajikiLanguage"] = @55;
	context[@"kFontTurkmenLanguage"] = @56;
	context[@"kFontMongolianLanguage"] = @57;
	context[@"kFontMongolianCyrLanguage"] = @58;
	context[@"kFontPashtoLanguage"] = @59;
	context[@"kFontKurdishLanguage"] = @60;
	context[@"kFontKashmiriLanguage"] = @61;
	context[@"kFontSindhiLanguage"] = @62;
	context[@"kFontTibetanLanguage"] = @63;
	context[@"kFontNepaliLanguage"] = @64;
	context[@"kFontSanskritLanguage"] = @65;
	context[@"kFontMarathiLanguage"] = @66;
	context[@"kFontBengaliLanguage"] = @67;
	context[@"kFontAssameseLanguage"] = @68;
	context[@"kFontGujaratiLanguage"] = @69;
	context[@"kFontPunjabiLanguage"] = @70;
	context[@"kFontOriyaLanguage"] = @71;
	context[@"kFontMalayalamLanguage"] = @72;
	context[@"kFontKannadaLanguage"] = @73;
	context[@"kFontTamilLanguage"] = @74;
	context[@"kFontTeluguLanguage"] = @75;
	context[@"kFontSinhaleseLanguage"] = @76;
	context[@"kFontBurmeseLanguage"] = @77;
	context[@"kFontKhmerLanguage"] = @78;
	context[@"kFontLaoLanguage"] = @79;
	context[@"kFontVietnameseLanguage"] = @80;
	context[@"kFontIndonesianLanguage"] = @81;
	context[@"kFontTagalogLanguage"] = @82;
	context[@"kFontMalayRomanLanguage"] = @83;
	context[@"kFontMalayArabicLanguage"] = @84;
	context[@"kFontAmharicLanguage"] = @85;
	context[@"kFontTigrinyaLanguage"] = @86;
	context[@"kFontGallaLanguage"] = @87;
	context[@"kFontOromoLanguage"] = @87;
	context[@"kFontSomaliLanguage"] = @88;
	context[@"kFontSwahiliLanguage"] = @89;
	context[@"kFontRuandaLanguage"] = @90;
	context[@"kFontRundiLanguage"] = @91;
	context[@"kFontChewaLanguage"] = @92;
	context[@"kFontMalagasyLanguage"] = @93;
	context[@"kFontEsperantoLanguage"] = @94;
	context[@"kFontWelshLanguage"] = @128;
	context[@"kFontBasqueLanguage"] = @129;
	context[@"kFontCatalanLanguage"] = @130;
	context[@"kFontLatinLanguage"] = @131;
	context[@"kFontQuechuaLanguage"] = @132;
	context[@"kFontGuaraniLanguage"] = @133;
	context[@"kFontAymaraLanguage"] = @134;
	context[@"kFontTatarLanguage"] = @135;
	context[@"kFontUighurLanguage"] = @136;
	context[@"kFontDzongkhaLanguage"] = @137;
	context[@"kFontJavaneseRomLanguage"] = @138;
	context[@"kFontSundaneseRomLanguage"] = @139;

	context[@"kFontNoPlatformCode"] = @4294967295U;
	context[@"kFontNoScriptCode"] = @4294967295U;
	context[@"kFontNoLanguageCode"] = @4294967295U;

	context[@"sizeof_sfntCMapSubHeader"] = @6;

	context[@"sizeof_sfntCMapExtendedSubHeader"] = @12;

	context[@"sizeof_sfntCMapEncoding"] = @8;

	context[@"sizeof_sfntCMapHeader"] = @4;

	context[@"nameFontTableTag"] = @1851878757;

	context[@"kFontCopyrightName"] = @0;
	context[@"kFontFamilyName"] = @1;
	context[@"kFontStyleName"] = @2;
	context[@"kFontUniqueName"] = @3;
	context[@"kFontFullName"] = @4;
	context[@"kFontVersionName"] = @5;
	context[@"kFontPostscriptName"] = @6;
	context[@"kFontTrademarkName"] = @7;
	context[@"kFontManufacturerName"] = @8;
	context[@"kFontDesignerName"] = @9;
	context[@"kFontDescriptionName"] = @10;
	context[@"kFontVendorURLName"] = @11;
	context[@"kFontDesignerURLName"] = @12;
	context[@"kFontLicenseDescriptionName"] = @13;
	context[@"kFontLicenseInfoURLName"] = @14;
	context[@"kFontPreferredFamilyName"] = @16;
	context[@"kFontPreferredSubfamilyName"] = @17;
	context[@"kFontMacCompatibleFullName"] = @18;
	context[@"kFontSampleTextName"] = @19;
	context[@"kFontPostScriptCIDName"] = @20;
	context[@"kFontLastReservedName"] = @255;

	context[@"kFontNoNameCode"] = @4294967295U;

	context[@"sizeof_sfntNameRecord"] = @12;

	context[@"sizeof_sfntNameHeader"] = @6;

	context[@"variationFontTableTag"] = @1719034226;

	context[@"sizeof_sfntVariationAxis"] = @20;

	context[@"sizeof_sfntInstance"] = @4;

	context[@"sizeof_sfntVariationHeader"] = @16;

	context[@"descriptorFontTableTag"] = @1717859171;

	context[@"sizeof_sfntDescriptorHeader"] = @8;

	context[@"featureFontTableTag"] = @1717920116;

	context[@"os2FontTableTag"] = @1330851634;

	context[@"nonGlyphID"] = @65535;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreText_SFNTTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
