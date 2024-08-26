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
	context[@"kCGPathFill"] = @0;
	context[@"kCGPathEOFill"] = @1;
	context[@"kCGPathStroke"] = @2;
	context[@"kCGPathFillStroke"] = @3;
	context[@"kCGPathEOFillStroke"] = @4;

	context[@"kCGTextFill"] = @0;
	context[@"kCGTextStroke"] = @1;
	context[@"kCGTextFillStroke"] = @2;
	context[@"kCGTextInvisible"] = @3;
	context[@"kCGTextFillClip"] = @4;
	context[@"kCGTextStrokeClip"] = @5;
	context[@"kCGTextFillStrokeClip"] = @6;
	context[@"kCGTextClip"] = @7;

	context[@"kCGEncodingFontSpecific"] = @0;
	context[@"kCGEncodingMacRoman"] = @1;

	context[@"kCGInterpolationDefault"] = @0;
	context[@"kCGInterpolationNone"] = @1;
	context[@"kCGInterpolationLow"] = @2;
	context[@"kCGInterpolationMedium"] = @4;
	context[@"kCGInterpolationHigh"] = @3;

	context[@"kCGBlendModeNormal"] = @0;
	context[@"kCGBlendModeMultiply"] = @1;
	context[@"kCGBlendModeScreen"] = @2;
	context[@"kCGBlendModeOverlay"] = @3;
	context[@"kCGBlendModeDarken"] = @4;
	context[@"kCGBlendModeLighten"] = @5;
	context[@"kCGBlendModeColorDodge"] = @6;
	context[@"kCGBlendModeColorBurn"] = @7;
	context[@"kCGBlendModeSoftLight"] = @8;
	context[@"kCGBlendModeHardLight"] = @9;
	context[@"kCGBlendModeDifference"] = @10;
	context[@"kCGBlendModeExclusion"] = @11;
	context[@"kCGBlendModeHue"] = @12;
	context[@"kCGBlendModeSaturation"] = @13;
	context[@"kCGBlendModeColor"] = @14;
	context[@"kCGBlendModeLuminosity"] = @15;
	context[@"kCGBlendModeClear"] = @16;
	context[@"kCGBlendModeCopy"] = @17;
	context[@"kCGBlendModeSourceIn"] = @18;
	context[@"kCGBlendModeSourceOut"] = @19;
	context[@"kCGBlendModeSourceAtop"] = @20;
	context[@"kCGBlendModeDestinationOver"] = @21;
	context[@"kCGBlendModeDestinationIn"] = @22;
	context[@"kCGBlendModeDestinationOut"] = @23;
	context[@"kCGBlendModeDestinationAtop"] = @24;
	context[@"kCGBlendModeXOR"] = @25;
	context[@"kCGBlendModePlusDarker"] = @26;
	context[@"kCGBlendModePlusLighter"] = @27;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreGraphics_CGContext_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
