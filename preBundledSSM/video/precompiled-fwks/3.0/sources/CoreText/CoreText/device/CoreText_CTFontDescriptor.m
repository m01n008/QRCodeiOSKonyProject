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
	context[@"CTFontDescriptorCreateCopyWithAttributes"] = ^id(id arg0, id arg1) {
		return CTFontDescriptorCreateCopyWithAttributes(arg0, arg1);
	};
	context[@"CTFontDescriptorCreateWithAttributes"] = ^id(id arg0) {
		return CTFontDescriptorCreateWithAttributes(arg0);
	};
	context[@"CTFontDescriptorCopyAttribute"] = ^id(id arg0, id arg1) {
		return CTFontDescriptorCopyAttribute(arg0, arg1);
	};
	context[@"CTFontDescriptorCreateMatchingFontDescriptor"] = ^id(id arg0, id arg1) {
		return CTFontDescriptorCreateMatchingFontDescriptor(arg0, arg1);
	};
	context[@"CTFontDescriptorCopyAttributes"] = ^id(id arg0) {
		return CTFontDescriptorCopyAttributes(arg0);
	};
	context[@"CTFontDescriptorCreateCopyWithFamily"] = ^id(id arg0, id arg1) {
		return CTFontDescriptorCreateCopyWithFamily(arg0, arg1);
	};
	context[@"CTFontDescriptorGetTypeID"] = ^CFTypeID() {
		return CTFontDescriptorGetTypeID();
	};
	context[@"CTFontDescriptorCreateWithNameAndSize"] = ^id(id arg0, CGFloat arg1) {
		return CTFontDescriptorCreateWithNameAndSize(arg0, arg1);
	};
	context[@"CTFontDescriptorCreateCopyWithVariation"] = ^id(id arg0, id arg1, CGFloat arg2) {
		return CTFontDescriptorCreateCopyWithVariation(arg0, arg1, arg2);
	};
	context[@"CTFontDescriptorCreateCopyWithFeature"] = ^id(id arg0, id arg1, id arg2) {
		return CTFontDescriptorCreateCopyWithFeature(arg0, arg1, arg2);
	};
	context[@"CTFontDescriptorCreateMatchingFontDescriptors"] = ^id(id arg0, id arg1) {
		return CTFontDescriptorCreateMatchingFontDescriptors(arg0, arg1);
	};
	context[@"CTFontDescriptorCreateCopyWithSymbolicTraits"] = ^id(id arg0, CTFontSymbolicTraits arg1, CTFontSymbolicTraits arg2) {
		return CTFontDescriptorCreateCopyWithSymbolicTraits(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFontOrientationDefault"] = @0U;
	context[@"kCTFontOrientationHorizontal"] = @1U;
	context[@"kCTFontOrientationVertical"] = @2U;
	context[@"kCTFontDefaultOrientation"] = @0U;
	context[@"kCTFontHorizontalOrientation"] = @1U;
	context[@"kCTFontVerticalOrientation"] = @2U;

	context[@"kCTFontFormatUnrecognized"] = @0U;
	context[@"kCTFontFormatOpenTypePostScript"] = @1U;
	context[@"kCTFontFormatOpenTypeTrueType"] = @2U;
	context[@"kCTFontFormatTrueType"] = @3U;
	context[@"kCTFontFormatPostScript"] = @4U;
	context[@"kCTFontFormatBitmap"] = @5U;

	context[@"kCTFontPrioritySystem"] = @10000;
	context[@"kCTFontPriorityNetwork"] = @20000;
	context[@"kCTFontPriorityComputer"] = @30000;
	context[@"kCTFontPriorityUser"] = @40000;
	context[@"kCTFontPriorityDynamic"] = @50000;
	context[@"kCTFontPriorityProcess"] = @60000;

	context[@"kCTFontDescriptorMatchingDidBegin"] = @0U;
	context[@"kCTFontDescriptorMatchingDidFinish"] = @1U;
	context[@"kCTFontDescriptorMatchingWillBeginQuerying"] = @2U;
	context[@"kCTFontDescriptorMatchingStalled"] = @3U;
	context[@"kCTFontDescriptorMatchingWillBeginDownloading"] = @4U;
	context[@"kCTFontDescriptorMatchingDownloading"] = @5U;
	context[@"kCTFontDescriptorMatchingDidFinishDownloading"] = @6U;
	context[@"kCTFontDescriptorMatchingDidMatch"] = @7U;
	context[@"kCTFontDescriptorMatchingDidFailWithError"] = @8U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTFontBaselineAdjustAttribute;
	if (p != NULL) context[@"kCTFontBaselineAdjustAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontBaselineAdjustAttribute inContext: context];
	p = (void*) &kCTFontURLAttribute;
	if (p != NULL) context[@"kCTFontURLAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontURLAttribute inContext: context];
	p = (void*) &kCTFontDescriptorMatchingResult;
	if (p != NULL) context[@"kCTFontDescriptorMatchingResult"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingResult inContext: context];
	p = (void*) &kCTFontDescriptorMatchingPercentage;
	if (p != NULL) context[@"kCTFontDescriptorMatchingPercentage"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingPercentage inContext: context];
	p = (void*) &kCTFontOpticalSizeAttribute;
	if (p != NULL) context[@"kCTFontOpticalSizeAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontOpticalSizeAttribute inContext: context];
	p = (void*) &kCTFontNameAttribute;
	if (p != NULL) context[@"kCTFontNameAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontNameAttribute inContext: context];
	p = (void*) &kCTFontDescriptorMatchingDescriptors;
	if (p != NULL) context[@"kCTFontDescriptorMatchingDescriptors"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingDescriptors inContext: context];
	p = (void*) &kCTFontCascadeListAttribute;
	if (p != NULL) context[@"kCTFontCascadeListAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontCascadeListAttribute inContext: context];
	p = (void*) &kCTFontCharacterSetAttribute;
	if (p != NULL) context[@"kCTFontCharacterSetAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontCharacterSetAttribute inContext: context];
	p = (void*) &kCTFontDisplayNameAttribute;
	if (p != NULL) context[@"kCTFontDisplayNameAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontDisplayNameAttribute inContext: context];
	p = (void*) &kCTFontFixedAdvanceAttribute;
	if (p != NULL) context[@"kCTFontFixedAdvanceAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontFixedAdvanceAttribute inContext: context];
	p = (void*) &kCTFontDownloadableAttribute;
	if (p != NULL) context[@"kCTFontDownloadableAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontDownloadableAttribute inContext: context];
	p = (void*) &kCTFontTraitsAttribute;
	if (p != NULL) context[@"kCTFontTraitsAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontTraitsAttribute inContext: context];
	p = (void*) &kCTFontSizeAttribute;
	if (p != NULL) context[@"kCTFontSizeAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontSizeAttribute inContext: context];
	p = (void*) &kCTFontFamilyNameAttribute;
	if (p != NULL) context[@"kCTFontFamilyNameAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontFamilyNameAttribute inContext: context];
	p = (void*) &kCTFontFeatureSettingsAttribute;
	if (p != NULL) context[@"kCTFontFeatureSettingsAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontFeatureSettingsAttribute inContext: context];
	p = (void*) &kCTFontFeaturesAttribute;
	if (p != NULL) context[@"kCTFontFeaturesAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontFeaturesAttribute inContext: context];
	p = (void*) &kCTFontFormatAttribute;
	if (p != NULL) context[@"kCTFontFormatAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontFormatAttribute inContext: context];
	p = (void*) &kCTFontDescriptorMatchingError;
	if (p != NULL) context[@"kCTFontDescriptorMatchingError"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingError inContext: context];
	p = (void*) &kCTFontDescriptorMatchingTotalAssetSize;
	if (p != NULL) context[@"kCTFontDescriptorMatchingTotalAssetSize"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingTotalAssetSize inContext: context];
	p = (void*) &kCTFontDescriptorMatchingSourceDescriptor;
	if (p != NULL) context[@"kCTFontDescriptorMatchingSourceDescriptor"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingSourceDescriptor inContext: context];
	p = (void*) &kCTFontDescriptorMatchingTotalDownloadedSize;
	if (p != NULL) context[@"kCTFontDescriptorMatchingTotalDownloadedSize"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingTotalDownloadedSize inContext: context];
	p = (void*) &kCTFontVariationAxesAttribute;
	if (p != NULL) context[@"kCTFontVariationAxesAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAxesAttribute inContext: context];
	p = (void*) &kCTFontDownloadedAttribute;
	if (p != NULL) context[@"kCTFontDownloadedAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontDownloadedAttribute inContext: context];
	p = (void*) &kCTFontLanguagesAttribute;
	if (p != NULL) context[@"kCTFontLanguagesAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontLanguagesAttribute inContext: context];
	p = (void*) &kCTFontRegistrationScopeAttribute;
	if (p != NULL) context[@"kCTFontRegistrationScopeAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontRegistrationScopeAttribute inContext: context];
	p = (void*) &kCTFontDescriptorMatchingCurrentAssetSize;
	if (p != NULL) context[@"kCTFontDescriptorMatchingCurrentAssetSize"] = [JSValue valueWithObject: (__bridge id) kCTFontDescriptorMatchingCurrentAssetSize inContext: context];
	p = (void*) &kCTFontEnabledAttribute;
	if (p != NULL) context[@"kCTFontEnabledAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontEnabledAttribute inContext: context];
	p = (void*) &kCTFontMacintoshEncodingsAttribute;
	if (p != NULL) context[@"kCTFontMacintoshEncodingsAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontMacintoshEncodingsAttribute inContext: context];
	p = (void*) &kCTFontPriorityAttribute;
	if (p != NULL) context[@"kCTFontPriorityAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontPriorityAttribute inContext: context];
	p = (void*) &kCTFontMatrixAttribute;
	if (p != NULL) context[@"kCTFontMatrixAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontMatrixAttribute inContext: context];
	p = (void*) &kCTFontVariationAttribute;
	if (p != NULL) context[@"kCTFontVariationAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontVariationAttribute inContext: context];
	p = (void*) &kCTFontStyleNameAttribute;
	if (p != NULL) context[@"kCTFontStyleNameAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontStyleNameAttribute inContext: context];
	p = (void*) &kCTFontOrientationAttribute;
	if (p != NULL) context[@"kCTFontOrientationAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontOrientationAttribute inContext: context];
}
void load_CoreText_CTFontDescriptor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
