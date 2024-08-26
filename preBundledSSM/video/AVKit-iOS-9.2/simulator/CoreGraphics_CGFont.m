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
	context[@"kCGFontPostScriptFormatType1"] = @1;
	context[@"kCGFontPostScriptFormatType3"] = @3;
	context[@"kCGFontPostScriptFormatType42"] = @42;

	context[@"CGGlyphMin"] = @0;
	context[@"CGGlyphMax"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGFontVariationAxisDefaultValue;
	if (p != NULL) context[@"kCGFontVariationAxisDefaultValue"] = [JSValue valueWithObject: (__bridge id) kCGFontVariationAxisDefaultValue inContext: context];
	p = (void*) &kCGFontIndexInvalid;
	if (p != NULL) context[@"kCGFontIndexInvalid"] = @(kCGFontIndexInvalid);
	p = (void*) &kCGFontVariationAxisMaxValue;
	if (p != NULL) context[@"kCGFontVariationAxisMaxValue"] = [JSValue valueWithObject: (__bridge id) kCGFontVariationAxisMaxValue inContext: context];
	p = (void*) &kCGFontIndexMax;
	if (p != NULL) context[@"kCGFontIndexMax"] = @(kCGFontIndexMax);
	p = (void*) &kCGFontVariationAxisMinValue;
	if (p != NULL) context[@"kCGFontVariationAxisMinValue"] = [JSValue valueWithObject: (__bridge id) kCGFontVariationAxisMinValue inContext: context];
	p = (void*) &kCGGlyphMax;
	if (p != NULL) context[@"kCGGlyphMax"] = @(kCGGlyphMax);
	p = (void*) &kCGFontVariationAxisName;
	if (p != NULL) context[@"kCGFontVariationAxisName"] = [JSValue valueWithObject: (__bridge id) kCGFontVariationAxisName inContext: context];
}
void load_CoreGraphics_CGFont_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
