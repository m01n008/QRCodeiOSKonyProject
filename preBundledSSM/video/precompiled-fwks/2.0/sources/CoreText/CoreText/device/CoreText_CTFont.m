#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CTFontGetGlyphCount"] = ^CFIndex(id arg0) {
		return CTFontGetGlyphCount(arg0);
	};
	context[@"CTFontGetDescent"] = ^CGFloat(id arg0) {
		return CTFontGetDescent(arg0);
	};
	context[@"CTFontGetSymbolicTraits"] = ^CTFontSymbolicTraits(id arg0) {
		return CTFontGetSymbolicTraits(arg0);
	};
	context[@"CTFontCopyFontDescriptor"] = ^id(id arg0) {
		return CTFontCopyFontDescriptor(arg0);
	};
	context[@"CTFontCopySupportedLanguages"] = ^id(id arg0) {
		return CTFontCopySupportedLanguages(arg0);
	};
	context[@"CTFontGetMatrix"] = ^CGAffineTransform(id arg0) {
		return CTFontGetMatrix(arg0);
	};
	context[@"CTFontCopyAvailableTables"] = ^id(id arg0, CTFontTableOptions arg1) {
		return CTFontCopyAvailableTables(arg0, arg1);
	};
	context[@"CTFontGetGlyphWithName"] = ^CGGlyph(id arg0, id arg1) {
		return CTFontGetGlyphWithName(arg0, arg1);
	};
	context[@"CTFontGetUnderlinePosition"] = ^CGFloat(id arg0) {
		return CTFontGetUnderlinePosition(arg0);
	};
	context[@"CTFontGetTypeID"] = ^CFTypeID() {
		return CTFontGetTypeID();
	};
	context[@"CTFontGetUnderlineThickness"] = ^CGFloat(id arg0) {
		return CTFontGetUnderlineThickness(arg0);
	};
	context[@"CTFontCopyName"] = ^id(id arg0, id arg1) {
		return CTFontCopyName(arg0, arg1);
	};
	context[@"CTFontGetCapHeight"] = ^CGFloat(id arg0) {
		return CTFontGetCapHeight(arg0);
	};
	context[@"CTFontGetSlantAngle"] = ^CGFloat(id arg0) {
		return CTFontGetSlantAngle(arg0);
	};
	context[@"CTFontGetBoundingBox"] = ^CGRect(id arg0) {
		return CTFontGetBoundingBox(arg0);
	};
	context[@"CTFontCopyPostScriptName"] = ^id(id arg0) {
		return CTFontCopyPostScriptName(arg0);
	};
	context[@"CTFontCopyDefaultCascadeListForLanguages"] = ^id(id arg0, id arg1) {
		return CTFontCopyDefaultCascadeListForLanguages(arg0, arg1);
	};
	context[@"CTFontCopyAttribute"] = ^id(id arg0, id arg1) {
		return CTFontCopyAttribute(arg0, arg1);
	};
	context[@"CTFontCopyTable"] = ^id(id arg0, CTFontTableTag arg1, CTFontTableOptions arg2) {
		return CTFontCopyTable(arg0, arg1, arg2);
	};
	context[@"CTFontGetSize"] = ^CGFloat(id arg0) {
		return CTFontGetSize(arg0);
	};
	context[@"CTFontGetStringEncoding"] = ^CFStringEncoding(id arg0) {
		return CTFontGetStringEncoding(arg0);
	};
	context[@"CTFontGetXHeight"] = ^CGFloat(id arg0) {
		return CTFontGetXHeight(arg0);
	};
	context[@"CTFontCreateUIFontForLanguage"] = ^id(CTFontUIFontType arg0, CGFloat arg1, id arg2) {
		return CTFontCreateUIFontForLanguage(arg0, arg1, arg2);
	};
	context[@"CTFontCopyCharacterSet"] = ^id(id arg0) {
		return CTFontCopyCharacterSet(arg0);
	};
	context[@"CTFontGetAscent"] = ^CGFloat(id arg0) {
		return CTFontGetAscent(arg0);
	};
	context[@"CTFontCopyFamilyName"] = ^id(id arg0) {
		return CTFontCopyFamilyName(arg0);
	};
	context[@"CTFontGetLeading"] = ^CGFloat(id arg0) {
		return CTFontGetLeading(arg0);
	};
	context[@"CTFontCopyVariationAxes"] = ^id(id arg0) {
		return CTFontCopyVariationAxes(arg0);
	};
	context[@"CTFontGetUnitsPerEm"] = ^unsigned int(id arg0) {
		return CTFontGetUnitsPerEm(arg0);
	};
	context[@"CTFontCopyDisplayName"] = ^id(id arg0) {
		return CTFontCopyDisplayName(arg0);
	};
	context[@"CTFontCopyTraits"] = ^id(id arg0) {
		return CTFontCopyTraits(arg0);
	};
	context[@"CTFontCopyFeatureSettings"] = ^id(id arg0) {
		return CTFontCopyFeatureSettings(arg0);
	};
	context[@"CTFontCopyVariation"] = ^id(id arg0) {
		return CTFontCopyVariation(arg0);
	};
	context[@"CTFontCreateForString"] = ^id(id arg0, id arg1, CFRange arg2) {
		return CTFontCreateForString(arg0, arg1, arg2);
	};
	context[@"CTFontCopyFeatures"] = ^id(id arg0) {
		return CTFontCopyFeatures(arg0);
	};
	context[@"CTFontCopyFullName"] = ^id(id arg0) {
		return CTFontCopyFullName(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFontOptionsDefault"] = @0UL;
	context[@"kCTFontOptionsPreventAutoActivation"] = @1UL;
	context[@"kCTFontOptionsPreferSystemFont"] = @4UL;

	context[@"kCTFontUIFontNone"] = @-1U;
	context[@"kCTFontUIFontUser"] = @0U;
	context[@"kCTFontUIFontUserFixedPitch"] = @1U;
	context[@"kCTFontUIFontSystem"] = @2U;
	context[@"kCTFontUIFontEmphasizedSystem"] = @3U;
	context[@"kCTFontUIFontSmallSystem"] = @4U;
	context[@"kCTFontUIFontSmallEmphasizedSystem"] = @5U;
	context[@"kCTFontUIFontMiniSystem"] = @6U;
	context[@"kCTFontUIFontMiniEmphasizedSystem"] = @7U;
	context[@"kCTFontUIFontViews"] = @8U;
	context[@"kCTFontUIFontApplication"] = @9U;
	context[@"kCTFontUIFontLabel"] = @10U;
	context[@"kCTFontUIFontMenuTitle"] = @11U;
	context[@"kCTFontUIFontMenuItem"] = @12U;
	context[@"kCTFontUIFontMenuItemMark"] = @13U;
	context[@"kCTFontUIFontMenuItemCmdKey"] = @14U;
	context[@"kCTFontUIFontWindowTitle"] = @15U;
	context[@"kCTFontUIFontPushButton"] = @16U;
	context[@"kCTFontUIFontUtilityWindowTitle"] = @17U;
	context[@"kCTFontUIFontAlertHeader"] = @18U;
	context[@"kCTFontUIFontSystemDetail"] = @19U;
	context[@"kCTFontUIFontEmphasizedSystemDetail"] = @20U;
	context[@"kCTFontUIFontToolbar"] = @21U;
	context[@"kCTFontUIFontSmallToolbar"] = @22U;
	context[@"kCTFontUIFontMessage"] = @23U;
	context[@"kCTFontUIFontPalette"] = @24U;
	context[@"kCTFontUIFontToolTip"] = @25U;
	context[@"kCTFontUIFontControlContent"] = @26U;
	context[@"kCTFontNoFontType"] = @-1U;
	context[@"kCTFontUserFontType"] = @0U;
	context[@"kCTFontUserFixedPitchFontType"] = @1U;
	context[@"kCTFontSystemFontType"] = @2U;
	context[@"kCTFontEmphasizedSystemFontType"] = @3U;
	context[@"kCTFontSmallSystemFontType"] = @4U;
	context[@"kCTFontSmallEmphasizedSystemFontType"] = @5U;
	context[@"kCTFontMiniSystemFontType"] = @6U;
	context[@"kCTFontMiniEmphasizedSystemFontType"] = @7U;
	context[@"kCTFontViewsFontType"] = @8U;
	context[@"kCTFontApplicationFontType"] = @9U;
	context[@"kCTFontLabelFontType"] = @10U;
	context[@"kCTFontMenuTitleFontType"] = @11U;
	context[@"kCTFontMenuItemFontType"] = @12U;
	context[@"kCTFontMenuItemMarkFontType"] = @13U;
	context[@"kCTFontMenuItemCmdKeyFontType"] = @14U;
	context[@"kCTFontWindowTitleFontType"] = @15U;
	context[@"kCTFontPushButtonFontType"] = @16U;
	context[@"kCTFontUtilityWindowTitleFontType"] = @17U;
	context[@"kCTFontAlertHeaderFontType"] = @18U;
	context[@"kCTFontSystemDetailFontType"] = @19U;
	context[@"kCTFontEmphasizedSystemDetailFontType"] = @20U;
	context[@"kCTFontToolbarFontType"] = @21U;
	context[@"kCTFontSmallToolbarFontType"] = @22U;
	context[@"kCTFontMessageFontType"] = @23U;
	context[@"kCTFontPaletteFontType"] = @24U;
	context[@"kCTFontToolTipFontType"] = @25U;
	context[@"kCTFontControlContentFontType"] = @26U;

	context[@"kCTFontTableBASE"] = @1111577413;
	context[@"kCTFontTableCBDT"] = @1128416340;
	context[@"kCTFontTableCBLC"] = @1128418371;
	context[@"kCTFontTableCFF"] = @1128678944;
	context[@"kCTFontTableCFF2"] = @1128678962;
	context[@"kCTFontTableCOLR"] = @1129270354;
	context[@"kCTFontTableCPAL"] = @1129333068;
	context[@"kCTFontTableDSIG"] = @1146308935;
	context[@"kCTFontTableEBDT"] = @1161970772;
	context[@"kCTFontTableEBLC"] = @1161972803;
	context[@"kCTFontTableEBSC"] = @1161974595;
	context[@"kCTFontTableGDEF"] = @1195656518;
	context[@"kCTFontTableGPOS"] = @1196445523;
	context[@"kCTFontTableGSUB"] = @1196643650;
	context[@"kCTFontTableHVAR"] = @1213612370;
	context[@"kCTFontTableJSTF"] = @1246975046;
	context[@"kCTFontTableLTSH"] = @1280594760;
	context[@"kCTFontTableMATH"] = @1296127048;
	context[@"kCTFontTableMERG"] = @1296388679;
	context[@"kCTFontTableMVAR"] = @1297498450;
	context[@"kCTFontTableOS2"] = @1330851634;
	context[@"kCTFontTablePCLT"] = @1346587732;
	context[@"kCTFontTableSTAT"] = @1398030676;
	context[@"kCTFontTableSVG"] = @1398163232;
	context[@"kCTFontTableVDMX"] = @1447316824;
	context[@"kCTFontTableVORG"] = @1448038983;
	context[@"kCTFontTableVVAR"] = @1448493394;
	context[@"kCTFontTableZapf"] = @1516335206;
	context[@"kCTFontTableAcnt"] = @1633906292;
	context[@"kCTFontTableAnkr"] = @1634626418;
	context[@"kCTFontTableAvar"] = @1635148146;
	context[@"kCTFontTableBdat"] = @1650745716;
	context[@"kCTFontTableBhed"] = @1651008868;
	context[@"kCTFontTableBloc"] = @1651273571;
	context[@"kCTFontTableBsln"] = @1651731566;
	context[@"kCTFontTableCidg"] = @1667851367;
	context[@"kCTFontTableCmap"] = @1668112752;
	context[@"kCTFontTableCvar"] = @1668702578;
	context[@"kCTFontTableCvt"] = @1668707360;
	context[@"kCTFontTableFdsc"] = @1717859171;
	context[@"kCTFontTableFeat"] = @1717920116;
	context[@"kCTFontTableFmtx"] = @1718449272;
	context[@"kCTFontTableFond"] = @1718578788;
	context[@"kCTFontTableFpgm"] = @1718642541;
	context[@"kCTFontTableFvar"] = @1719034226;
	context[@"kCTFontTableGasp"] = @1734439792;
	context[@"kCTFontTableGlyf"] = @1735162214;
	context[@"kCTFontTableGvar"] = @1735811442;
	context[@"kCTFontTableHdmx"] = @1751412088;
	context[@"kCTFontTableHead"] = @1751474532;
	context[@"kCTFontTableHhea"] = @1751672161;
	context[@"kCTFontTableHmtx"] = @1752003704;
	context[@"kCTFontTableHsty"] = @1752396921;
	context[@"kCTFontTableJust"] = @1786082164;
	context[@"kCTFontTableKern"] = @1801810542;
	context[@"kCTFontTableKerx"] = @1801810552;
	context[@"kCTFontTableLcar"] = @1818452338;
	context[@"kCTFontTableLoca"] = @1819239265;
	context[@"kCTFontTableLtag"] = @1819566439;
	context[@"kCTFontTableMaxp"] = @1835104368;
	context[@"kCTFontTableMeta"] = @1835365473;
	context[@"kCTFontTableMort"] = @1836020340;
	context[@"kCTFontTableMorx"] = @1836020344;
	context[@"kCTFontTableName"] = @1851878757;
	context[@"kCTFontTableOpbd"] = @1869636196;
	context[@"kCTFontTablePost"] = @1886352244;
	context[@"kCTFontTablePrep"] = @1886545264;
	context[@"kCTFontTableProp"] = @1886547824;
	context[@"kCTFontTableSbit"] = @1935829364;
	context[@"kCTFontTableSbix"] = @1935829368;
	context[@"kCTFontTableTrak"] = @1953653099;
	context[@"kCTFontTableVhea"] = @1986553185;
	context[@"kCTFontTableVmtx"] = @1986884728;
	context[@"kCTFontTableXref"] = @2020762982;

	context[@"kCTFontTableOptionNoOptions"] = @0U;
	context[@"kCTFontTableOptionExcludeSynthetic"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTFontStyleNameKey;
	if (p != NULL) context[@"kCTFontStyleNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontStyleNameKey inContext: context];
	p = (void*) &kCTBaselineClassMath;
	if (p != NULL) context[@"kCTBaselineClassMath"] = [JSValue valueWithObject: (__bridge id) kCTBaselineClassMath inContext: context];
	p = (void*) &kCTFontOpenTypeFeatureTag;
	if (p != NULL) context[@"kCTFontOpenTypeFeatureTag"] = [JSValue valueWithObject: (__bridge id) kCTFontOpenTypeFeatureTag inContext: context];
	p = (void*) &kCTFontVariationAxisMaximumValueKey;
	if (p != NULL) context[@"kCTFontVariationAxisMaximumValueKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAxisMaximumValueKey inContext: context];
	p = (void*) &kCTFontFeatureSelectorNameKey;
	if (p != NULL) context[@"kCTFontFeatureSelectorNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureSelectorNameKey inContext: context];
	p = (void*) &kCTBaselineClassIdeographicLow;
	if (p != NULL) context[@"kCTBaselineClassIdeographicLow"] = [JSValue valueWithObject: (__bridge id) kCTBaselineClassIdeographicLow inContext: context];
	p = (void*) &kCTBaselineClassIdeographicHigh;
	if (p != NULL) context[@"kCTBaselineClassIdeographicHigh"] = [JSValue valueWithObject: (__bridge id) kCTBaselineClassIdeographicHigh inContext: context];
	p = (void*) &kCTFontFeatureSelectorIdentifierKey;
	if (p != NULL) context[@"kCTFontFeatureSelectorIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureSelectorIdentifierKey inContext: context];
	p = (void*) &kCTFontDesignerNameKey;
	if (p != NULL) context[@"kCTFontDesignerNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontDesignerNameKey inContext: context];
	p = (void*) &kCTBaselineClassIdeographicCentered;
	if (p != NULL) context[@"kCTBaselineClassIdeographicCentered"] = [JSValue valueWithObject: (__bridge id) kCTBaselineClassIdeographicCentered inContext: context];
	p = (void*) &kCTFontFeatureTypeExclusiveKey;
	if (p != NULL) context[@"kCTFontFeatureTypeExclusiveKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureTypeExclusiveKey inContext: context];
	p = (void*) &kCTFontTrademarkNameKey;
	if (p != NULL) context[@"kCTFontTrademarkNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontTrademarkNameKey inContext: context];
	p = (void*) &kCTFontVendorURLNameKey;
	if (p != NULL) context[@"kCTFontVendorURLNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVendorURLNameKey inContext: context];
	p = (void*) &kCTFontVariationAxisHiddenKey;
	if (p != NULL) context[@"kCTFontVariationAxisHiddenKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAxisHiddenKey inContext: context];
	p = (void*) &kCTFontFeatureSelectorSettingKey;
	if (p != NULL) context[@"kCTFontFeatureSelectorSettingKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureSelectorSettingKey inContext: context];
	p = (void*) &kCTFontPostScriptCIDNameKey;
	if (p != NULL) context[@"kCTFontPostScriptCIDNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontPostScriptCIDNameKey inContext: context];
	p = (void*) &kCTFontFeatureTypeIdentifierKey;
	if (p != NULL) context[@"kCTFontFeatureTypeIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureTypeIdentifierKey inContext: context];
	p = (void*) &kCTFontUniqueNameKey;
	if (p != NULL) context[@"kCTFontUniqueNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontUniqueNameKey inContext: context];
	p = (void*) &kCTFontVariationAxisMinimumValueKey;
	if (p != NULL) context[@"kCTFontVariationAxisMinimumValueKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAxisMinimumValueKey inContext: context];
	p = (void*) &kCTFontFeatureSelectorDefaultKey;
	if (p != NULL) context[@"kCTFontFeatureSelectorDefaultKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureSelectorDefaultKey inContext: context];
	p = (void*) &kCTFontVariationAxisDefaultValueKey;
	if (p != NULL) context[@"kCTFontVariationAxisDefaultValueKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAxisDefaultValueKey inContext: context];
	p = (void*) &kCTFontVersionNameKey;
	if (p != NULL) context[@"kCTFontVersionNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVersionNameKey inContext: context];
	p = (void*) &kCTFontDesignerURLNameKey;
	if (p != NULL) context[@"kCTFontDesignerURLNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontDesignerURLNameKey inContext: context];
	p = (void*) &kCTFontVariationAxisIdentifierKey;
	if (p != NULL) context[@"kCTFontVariationAxisIdentifierKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAxisIdentifierKey inContext: context];
	p = (void*) &kCTFontFeatureTypeSelectorsKey;
	if (p != NULL) context[@"kCTFontFeatureTypeSelectorsKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureTypeSelectorsKey inContext: context];
	p = (void*) &kCTFontFullNameKey;
	if (p != NULL) context[@"kCTFontFullNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFullNameKey inContext: context];
	p = (void*) &kCTBaselineOriginalFont;
	if (p != NULL) context[@"kCTBaselineOriginalFont"] = [JSValue valueWithObject: (__bridge id) kCTBaselineOriginalFont inContext: context];
	p = (void*) &kCTFontDescriptionNameKey;
	if (p != NULL) context[@"kCTFontDescriptionNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptionNameKey inContext: context];
	p = (void*) &kCTBaselineClassHanging;
	if (p != NULL) context[@"kCTBaselineClassHanging"] = [JSValue valueWithObject: (__bridge id) kCTBaselineClassHanging inContext: context];
	p = (void*) &kCTFontSubFamilyNameKey;
	if (p != NULL) context[@"kCTFontSubFamilyNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontSubFamilyNameKey inContext: context];
	p = (void*) &kCTFontSampleTextNameKey;
	if (p != NULL) context[@"kCTFontSampleTextNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontSampleTextNameKey inContext: context];
	p = (void*) &kCTBaselineReferenceFont;
	if (p != NULL) context[@"kCTBaselineReferenceFont"] = [JSValue valueWithObject: (__bridge id) kCTBaselineReferenceFont inContext: context];
	p = (void*) &kCTFontFeatureTypeNameKey;
	if (p != NULL) context[@"kCTFontFeatureTypeNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureTypeNameKey inContext: context];
	p = (void*) &kCTFontFamilyNameKey;
	if (p != NULL) context[@"kCTFontFamilyNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontFamilyNameKey inContext: context];
	p = (void*) &kCTFontLicenseNameKey;
	if (p != NULL) context[@"kCTFontLicenseNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontLicenseNameKey inContext: context];
	p = (void*) &kCTFontLicenseURLNameKey;
	if (p != NULL) context[@"kCTFontLicenseURLNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontLicenseURLNameKey inContext: context];
	p = (void*) &kCTBaselineClassRoman;
	if (p != NULL) context[@"kCTBaselineClassRoman"] = [JSValue valueWithObject: (__bridge id) kCTBaselineClassRoman inContext: context];
	p = (void*) &kCTFontCopyrightNameKey;
	if (p != NULL) context[@"kCTFontCopyrightNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontCopyrightNameKey inContext: context];
	p = (void*) &kCTFontVariationAxisNameKey;
	if (p != NULL) context[@"kCTFontVariationAxisNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAxisNameKey inContext: context];
	p = (void*) &kCTFontOpenTypeFeatureValue;
	if (p != NULL) context[@"kCTFontOpenTypeFeatureValue"] = [JSValue valueWithObject: (__bridge id) kCTFontOpenTypeFeatureValue inContext: context];
	p = (void*) &kCTFontPostScriptNameKey;
	if (p != NULL) context[@"kCTFontPostScriptNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontPostScriptNameKey inContext: context];
	p = (void*) &kCTFontManufacturerNameKey;
	if (p != NULL) context[@"kCTFontManufacturerNameKey"] = [JSValue valueWithObject: (__bridge id) kCTFontManufacturerNameKey inContext: context];
}
void load_CoreText_CTFont_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
