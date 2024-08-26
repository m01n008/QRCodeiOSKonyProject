#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFStringEncodingMacRoman"] = @0UL;
	context[@"kCFStringEncodingWindowsLatin1"] = @1280UL;
	context[@"kCFStringEncodingISOLatin1"] = @513UL;
	context[@"kCFStringEncodingNextStepLatin"] = @2817UL;
	context[@"kCFStringEncodingASCII"] = @1536UL;
	context[@"kCFStringEncodingUnicode"] = @256UL;
	context[@"kCFStringEncodingUTF8"] = @134217984UL;
	context[@"kCFStringEncodingNonLossyASCII"] = @3071UL;
	context[@"kCFStringEncodingUTF16"] = @256UL;
	context[@"kCFStringEncodingUTF16BE"] = @268435712UL;
	context[@"kCFStringEncodingUTF16LE"] = @335544576UL;
	context[@"kCFStringEncodingUTF32"] = @201326848UL;
	context[@"kCFStringEncodingUTF32BE"] = @402653440UL;
	context[@"kCFStringEncodingUTF32LE"] = @469762304UL;

	context[@"kCFCompareCaseInsensitive"] = @1UL;
	context[@"kCFCompareBackwards"] = @4UL;
	context[@"kCFCompareAnchored"] = @8UL;
	context[@"kCFCompareNonliteral"] = @16UL;
	context[@"kCFCompareLocalized"] = @32UL;
	context[@"kCFCompareNumerically"] = @64UL;
	context[@"kCFCompareDiacriticInsensitive"] = @128UL;
	context[@"kCFCompareWidthInsensitive"] = @256UL;
	context[@"kCFCompareForcedOrdering"] = @512UL;

	context[@"kCFStringNormalizationFormD"] = @0L;
	context[@"kCFStringNormalizationFormKD"] = @1L;
	context[@"kCFStringNormalizationFormC"] = @2L;
	context[@"kCFStringNormalizationFormKC"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCFStringTransformToLatin;
	if (p != NULL) context[@"kCFStringTransformToLatin"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformToLatin inContext: context];
	p = (void*) &kCFStringTransformStripCombiningMarks;
	if (p != NULL) context[@"kCFStringTransformStripCombiningMarks"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformStripCombiningMarks inContext: context];
	p = (void*) &kCFStringTransformLatinHangul;
	if (p != NULL) context[@"kCFStringTransformLatinHangul"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinHangul inContext: context];
	p = (void*) &kCFStringTransformLatinKatakana;
	if (p != NULL) context[@"kCFStringTransformLatinKatakana"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinKatakana inContext: context];
	p = (void*) &kCFStringTransformStripDiacritics;
	if (p != NULL) context[@"kCFStringTransformStripDiacritics"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformStripDiacritics inContext: context];
	p = (void*) &kCFStringTransformLatinThai;
	if (p != NULL) context[@"kCFStringTransformLatinThai"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinThai inContext: context];
	p = (void*) &kCFStringTransformHiraganaKatakana;
	if (p != NULL) context[@"kCFStringTransformHiraganaKatakana"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformHiraganaKatakana inContext: context];
	p = (void*) &kCFStringTransformFullwidthHalfwidth;
	if (p != NULL) context[@"kCFStringTransformFullwidthHalfwidth"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformFullwidthHalfwidth inContext: context];
	p = (void*) &kCFStringTransformToXMLHex;
	if (p != NULL) context[@"kCFStringTransformToXMLHex"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformToXMLHex inContext: context];
	p = (void*) &kCFStringTransformLatinGreek;
	if (p != NULL) context[@"kCFStringTransformLatinGreek"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinGreek inContext: context];
	p = (void*) &kCFStringTransformToUnicodeName;
	if (p != NULL) context[@"kCFStringTransformToUnicodeName"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformToUnicodeName inContext: context];
	p = (void*) &kCFStringTransformLatinHiragana;
	if (p != NULL) context[@"kCFStringTransformLatinHiragana"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinHiragana inContext: context];
	p = (void*) &kCFStringTransformLatinCyrillic;
	if (p != NULL) context[@"kCFStringTransformLatinCyrillic"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinCyrillic inContext: context];
	p = (void*) &kCFStringTransformLatinArabic;
	if (p != NULL) context[@"kCFStringTransformLatinArabic"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinArabic inContext: context];
	p = (void*) &kCFStringTransformLatinHebrew;
	if (p != NULL) context[@"kCFStringTransformLatinHebrew"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformLatinHebrew inContext: context];
	p = (void*) &kCFStringTransformMandarinLatin;
	if (p != NULL) context[@"kCFStringTransformMandarinLatin"] = [JSValue valueWithObject: (__bridge id) kCFStringTransformMandarinLatin inContext: context];
}
void load_CoreFoundation_CFString_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
