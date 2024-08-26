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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMTextMarkupAlignmentType_Middle;
	if (p != NULL) context[@"kCMTextMarkupAlignmentType_Middle"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAlignmentType_Middle inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_SmallCapital;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_SmallCapital"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_SmallCapital inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_Monospace;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_Monospace"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_Monospace inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_MonospaceSerif;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_MonospaceSerif"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_MonospaceSerif inContext: context];
	p = (void*) &kCMTextMarkupCharacterEdgeStyle_Depressed;
	if (p != NULL) context[@"kCMTextMarkupCharacterEdgeStyle_Depressed"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupCharacterEdgeStyle_Depressed inContext: context];
	p = (void*) &kCMTextMarkupAlignmentType_End;
	if (p != NULL) context[@"kCMTextMarkupAlignmentType_End"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAlignmentType_End inContext: context];
	p = (void*) &kCMTextMarkupAttribute_ForegroundColorARGB;
	if (p != NULL) context[@"kCMTextMarkupAttribute_ForegroundColorARGB"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_ForegroundColorARGB inContext: context];
	p = (void*) &kCMTextMarkupCharacterEdgeStyle_Uniform;
	if (p != NULL) context[@"kCMTextMarkupCharacterEdgeStyle_Uniform"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupCharacterEdgeStyle_Uniform inContext: context];
	p = (void*) &kCMTextMarkupAttribute_BackgroundColorARGB;
	if (p != NULL) context[@"kCMTextMarkupAttribute_BackgroundColorARGB"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_BackgroundColorARGB inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_Default;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_Default"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_Default inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_SansSerif;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_SansSerif"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_SansSerif inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_ProportionalSerif;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_ProportionalSerif"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_ProportionalSerif inContext: context];
	p = (void*) &kCMTextMarkupCharacterEdgeStyle_None;
	if (p != NULL) context[@"kCMTextMarkupCharacterEdgeStyle_None"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupCharacterEdgeStyle_None inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_Fantasy;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_Fantasy"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_Fantasy inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_Cursive;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_Cursive"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_Cursive inContext: context];
	p = (void*) &kCMTextMarkupAlignmentType_Left;
	if (p != NULL) context[@"kCMTextMarkupAlignmentType_Left"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAlignmentType_Left inContext: context];
	p = (void*) &kCMTextMarkupAttribute_CharacterEdgeStyle;
	if (p != NULL) context[@"kCMTextMarkupAttribute_CharacterEdgeStyle"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_CharacterEdgeStyle inContext: context];
	p = (void*) &kCMTextMarkupAttribute_Alignment;
	if (p != NULL) context[@"kCMTextMarkupAttribute_Alignment"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_Alignment inContext: context];
	p = (void*) &kCMTextMarkupAttribute_VerticalLayout;
	if (p != NULL) context[@"kCMTextMarkupAttribute_VerticalLayout"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_VerticalLayout inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_ProportionalSansSerif;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_ProportionalSansSerif"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_ProportionalSansSerif inContext: context];
	p = (void*) &kCMTextMarkupAttribute_OrthogonalLinePositionPercentageRelativeToWritingDirection;
	if (p != NULL) context[@"kCMTextMarkupAttribute_OrthogonalLinePositionPercentageRelativeToWritingDirection"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_OrthogonalLinePositionPercentageRelativeToWritingDirection inContext: context];
	p = (void*) &kCMTextMarkupAttribute_FontFamilyName;
	if (p != NULL) context[@"kCMTextMarkupAttribute_FontFamilyName"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_FontFamilyName inContext: context];
	p = (void*) &kCMTextVerticalLayout_RightToLeft;
	if (p != NULL) context[@"kCMTextVerticalLayout_RightToLeft"] = [JSValue valueWithObject: (__bridge id) kCMTextVerticalLayout_RightToLeft inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_MonospaceSansSerif;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_MonospaceSansSerif"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_MonospaceSansSerif inContext: context];
	p = (void*) &kCMTextMarkupAttribute_GenericFontFamilyName;
	if (p != NULL) context[@"kCMTextMarkupAttribute_GenericFontFamilyName"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_GenericFontFamilyName inContext: context];
	p = (void*) &kCMTextMarkupAttribute_BoldStyle;
	if (p != NULL) context[@"kCMTextMarkupAttribute_BoldStyle"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_BoldStyle inContext: context];
	p = (void*) &kCMTextVerticalLayout_LeftToRight;
	if (p != NULL) context[@"kCMTextVerticalLayout_LeftToRight"] = [JSValue valueWithObject: (__bridge id) kCMTextVerticalLayout_LeftToRight inContext: context];
	p = (void*) &kCMTextMarkupAttribute_ItalicStyle;
	if (p != NULL) context[@"kCMTextMarkupAttribute_ItalicStyle"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_ItalicStyle inContext: context];
	p = (void*) &kCMTextMarkupAttribute_CharacterBackgroundColorARGB;
	if (p != NULL) context[@"kCMTextMarkupAttribute_CharacterBackgroundColorARGB"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_CharacterBackgroundColorARGB inContext: context];
	p = (void*) &kCMTextMarkupAttribute_WritingDirectionSizePercentage;
	if (p != NULL) context[@"kCMTextMarkupAttribute_WritingDirectionSizePercentage"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_WritingDirectionSizePercentage inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_Casual;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_Casual"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_Casual inContext: context];
	p = (void*) &kCMTextMarkupAttribute_RelativeFontSize;
	if (p != NULL) context[@"kCMTextMarkupAttribute_RelativeFontSize"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_RelativeFontSize inContext: context];
	p = (void*) &kCMTextMarkupAlignmentType_Start;
	if (p != NULL) context[@"kCMTextMarkupAlignmentType_Start"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAlignmentType_Start inContext: context];
	p = (void*) &kCMTextMarkupAlignmentType_Right;
	if (p != NULL) context[@"kCMTextMarkupAlignmentType_Right"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAlignmentType_Right inContext: context];
	p = (void*) &kCMTextMarkupAttribute_UnderlineStyle;
	if (p != NULL) context[@"kCMTextMarkupAttribute_UnderlineStyle"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_UnderlineStyle inContext: context];
	p = (void*) &kCMTextMarkupGenericFontName_Serif;
	if (p != NULL) context[@"kCMTextMarkupGenericFontName_Serif"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupGenericFontName_Serif inContext: context];
	p = (void*) &kCMTextMarkupAttribute_BaseFontSizePercentageRelativeToVideoHeight;
	if (p != NULL) context[@"kCMTextMarkupAttribute_BaseFontSizePercentageRelativeToVideoHeight"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_BaseFontSizePercentageRelativeToVideoHeight inContext: context];
	p = (void*) &kCMTextMarkupAttribute_TextPositionPercentageRelativeToWritingDirection;
	if (p != NULL) context[@"kCMTextMarkupAttribute_TextPositionPercentageRelativeToWritingDirection"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupAttribute_TextPositionPercentageRelativeToWritingDirection inContext: context];
	p = (void*) &kCMTextMarkupCharacterEdgeStyle_Raised;
	if (p != NULL) context[@"kCMTextMarkupCharacterEdgeStyle_Raised"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupCharacterEdgeStyle_Raised inContext: context];
	p = (void*) &kCMTextMarkupCharacterEdgeStyle_DropShadow;
	if (p != NULL) context[@"kCMTextMarkupCharacterEdgeStyle_DropShadow"] = [JSValue valueWithObject: (__bridge id) kCMTextMarkupCharacterEdgeStyle_DropShadow inContext: context];
}
void load_CoreMedia_CMTextMarkup_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
