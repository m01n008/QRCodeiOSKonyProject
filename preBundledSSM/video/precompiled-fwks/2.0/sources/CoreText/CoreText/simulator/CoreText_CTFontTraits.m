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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFontClassMaskShift"] = @28;

	context[@"kCTFontTraitItalic"] = @1U;
	context[@"kCTFontTraitBold"] = @2U;
	context[@"kCTFontTraitExpanded"] = @32U;
	context[@"kCTFontTraitCondensed"] = @64U;
	context[@"kCTFontTraitMonoSpace"] = @1024U;
	context[@"kCTFontTraitVertical"] = @2048U;
	context[@"kCTFontTraitUIOptimized"] = @4096U;
	context[@"kCTFontTraitColorGlyphs"] = @8192U;
	context[@"kCTFontTraitComposite"] = @16384U;
	context[@"kCTFontTraitClassMask"] = @-268435456U;
	context[@"kCTFontItalicTrait"] = @1U;
	context[@"kCTFontBoldTrait"] = @2U;
	context[@"kCTFontExpandedTrait"] = @32U;
	context[@"kCTFontCondensedTrait"] = @64U;
	context[@"kCTFontMonoSpaceTrait"] = @1024U;
	context[@"kCTFontVerticalTrait"] = @2048U;
	context[@"kCTFontUIOptimizedTrait"] = @4096U;
	context[@"kCTFontColorGlyphsTrait"] = @8192U;
	context[@"kCTFontCompositeTrait"] = @16384U;
	context[@"kCTFontClassMaskTrait"] = @-268435456U;

	context[@"kCTFontClassUnknown"] = @0U;
	context[@"kCTFontClassOldStyleSerifs"] = @268435456U;
	context[@"kCTFontClassTransitionalSerifs"] = @536870912U;
	context[@"kCTFontClassModernSerifs"] = @805306368U;
	context[@"kCTFontClassClarendonSerifs"] = @1073741824U;
	context[@"kCTFontClassSlabSerifs"] = @1342177280U;
	context[@"kCTFontClassFreeformSerifs"] = @1879048192U;
	context[@"kCTFontClassSansSerif"] = @-2147483648U;
	context[@"kCTFontClassOrnamentals"] = @-1879048192U;
	context[@"kCTFontClassScripts"] = @-1610612736U;
	context[@"kCTFontClassSymbolic"] = @-1073741824U;
	context[@"kCTFontUnknownClass"] = @0U;
	context[@"kCTFontOldStyleSerifsClass"] = @268435456U;
	context[@"kCTFontTransitionalSerifsClass"] = @536870912U;
	context[@"kCTFontModernSerifsClass"] = @805306368U;
	context[@"kCTFontClarendonSerifsClass"] = @1073741824U;
	context[@"kCTFontSlabSerifsClass"] = @1342177280U;
	context[@"kCTFontFreeformSerifsClass"] = @1879048192U;
	context[@"kCTFontSansSerifClass"] = @-2147483648U;
	context[@"kCTFontOrnamentalsClass"] = @-1879048192U;
	context[@"kCTFontScriptsClass"] = @-1610612736U;
	context[@"kCTFontSymbolicClass"] = @-1073741824U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTFontSymbolicTrait;
	if (p != NULL) context[@"kCTFontSymbolicTrait"] = [JSValue valueWithObject: (__bridge id) kCTFontSymbolicTrait inContext: context];
	p = (void*) &kCTFontWeightTrait;
	if (p != NULL) context[@"kCTFontWeightTrait"] = [JSValue valueWithObject: (__bridge id) kCTFontWeightTrait inContext: context];
	p = (void*) &kCTFontSlantTrait;
	if (p != NULL) context[@"kCTFontSlantTrait"] = [JSValue valueWithObject: (__bridge id) kCTFontSlantTrait inContext: context];
	p = (void*) &kCTFontWidthTrait;
	if (p != NULL) context[@"kCTFontWidthTrait"] = [JSValue valueWithObject: (__bridge id) kCTFontWidthTrait inContext: context];
}
void load_CoreText_CTFontTraits_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
