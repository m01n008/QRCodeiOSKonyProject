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
	context[@"kCTUnderlineStyleNone"] = @0;
	context[@"kCTUnderlineStyleSingle"] = @1;
	context[@"kCTUnderlineStyleThick"] = @2;
	context[@"kCTUnderlineStyleDouble"] = @9;

	context[@"kCTUnderlinePatternSolid"] = @0;
	context[@"kCTUnderlinePatternDot"] = @256;
	context[@"kCTUnderlinePatternDash"] = @512;
	context[@"kCTUnderlinePatternDashDot"] = @768;
	context[@"kCTUnderlinePatternDashDotDot"] = @1024;

	context[@"kCTWritingDirectionEmbedding"] = @0;
	context[@"kCTWritingDirectionOverride"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTBaselineOffsetAttributeName;
	if (p != NULL) context[@"kCTBaselineOffsetAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTBaselineOffsetAttributeName inContext: context];
	p = (void*) &kCTStrokeWidthAttributeName;
	if (p != NULL) context[@"kCTStrokeWidthAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTStrokeWidthAttributeName inContext: context];
	p = (void*) &kCTStrokeColorAttributeName;
	if (p != NULL) context[@"kCTStrokeColorAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTStrokeColorAttributeName inContext: context];
	p = (void*) &kCTUnderlineStyleAttributeName;
	if (p != NULL) context[@"kCTUnderlineStyleAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTUnderlineStyleAttributeName inContext: context];
	p = (void*) &kCTLanguageAttributeName;
	if (p != NULL) context[@"kCTLanguageAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTLanguageAttributeName inContext: context];
	p = (void*) &kCTParagraphStyleAttributeName;
	if (p != NULL) context[@"kCTParagraphStyleAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTParagraphStyleAttributeName inContext: context];
	p = (void*) &kCTTrackingAttributeName;
	if (p != NULL) context[@"kCTTrackingAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTTrackingAttributeName inContext: context];
	p = (void*) &kCTCharacterShapeAttributeName;
	if (p != NULL) context[@"kCTCharacterShapeAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTCharacterShapeAttributeName inContext: context];
	p = (void*) &kCTGlyphInfoAttributeName;
	if (p != NULL) context[@"kCTGlyphInfoAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTGlyphInfoAttributeName inContext: context];
	p = (void*) &kCTBaselineInfoAttributeName;
	if (p != NULL) context[@"kCTBaselineInfoAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTBaselineInfoAttributeName inContext: context];
	p = (void*) &kCTKernAttributeName;
	if (p != NULL) context[@"kCTKernAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTKernAttributeName inContext: context];
	p = (void*) &kCTBaselineClassAttributeName;
	if (p != NULL) context[@"kCTBaselineClassAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTBaselineClassAttributeName inContext: context];
	p = (void*) &kCTForegroundColorFromContextAttributeName;
	if (p != NULL) context[@"kCTForegroundColorFromContextAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTForegroundColorFromContextAttributeName inContext: context];
	p = (void*) &kCTWritingDirectionAttributeName;
	if (p != NULL) context[@"kCTWritingDirectionAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTWritingDirectionAttributeName inContext: context];
	p = (void*) &kCTHorizontalInVerticalFormsAttributeName;
	if (p != NULL) context[@"kCTHorizontalInVerticalFormsAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTHorizontalInVerticalFormsAttributeName inContext: context];
	p = (void*) &kCTSuperscriptAttributeName;
	if (p != NULL) context[@"kCTSuperscriptAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTSuperscriptAttributeName inContext: context];
	p = (void*) &kCTVerticalFormsAttributeName;
	if (p != NULL) context[@"kCTVerticalFormsAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTVerticalFormsAttributeName inContext: context];
	p = (void*) &kCTUnderlineColorAttributeName;
	if (p != NULL) context[@"kCTUnderlineColorAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTUnderlineColorAttributeName inContext: context];
	p = (void*) &kCTFontAttributeName;
	if (p != NULL) context[@"kCTFontAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTFontAttributeName inContext: context];
	p = (void*) &kCTBaselineReferenceInfoAttributeName;
	if (p != NULL) context[@"kCTBaselineReferenceInfoAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTBaselineReferenceInfoAttributeName inContext: context];
	p = (void*) &kCTLigatureAttributeName;
	if (p != NULL) context[@"kCTLigatureAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTLigatureAttributeName inContext: context];
	p = (void*) &kCTRunDelegateAttributeName;
	if (p != NULL) context[@"kCTRunDelegateAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTRunDelegateAttributeName inContext: context];
	p = (void*) &kCTForegroundColorAttributeName;
	if (p != NULL) context[@"kCTForegroundColorAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTForegroundColorAttributeName inContext: context];
	p = (void*) &kCTBackgroundColorAttributeName;
	if (p != NULL) context[@"kCTBackgroundColorAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTBackgroundColorAttributeName inContext: context];
	p = (void*) &kCTRubyAnnotationAttributeName;
	if (p != NULL) context[@"kCTRubyAnnotationAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTRubyAnnotationAttributeName inContext: context];
}
void load_CoreText_CTStringAttributes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
