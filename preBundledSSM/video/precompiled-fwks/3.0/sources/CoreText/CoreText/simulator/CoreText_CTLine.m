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
	context[@"CTLineGetImageBounds"] = ^CGRect(id arg0, id arg1) {
		return CTLineGetImageBounds(arg0, arg1);
	};
	context[@"CTLineGetGlyphCount"] = ^CFIndex(id arg0) {
		return CTLineGetGlyphCount(arg0);
	};
	context[@"CTLineGetPenOffsetForFlush"] = ^double(id arg0, CGFloat arg1, double arg2) {
		return CTLineGetPenOffsetForFlush(arg0, arg1, arg2);
	};
	context[@"CTLineCreateJustifiedLine"] = ^id(id arg0, CGFloat arg1, double arg2) {
		return CTLineCreateJustifiedLine(arg0, arg1, arg2);
	};
	context[@"CTLineGetTrailingWhitespaceWidth"] = ^double(id arg0) {
		return CTLineGetTrailingWhitespaceWidth(arg0);
	};
	context[@"CTLineCreateTruncatedLine"] = ^id(id arg0, double arg1, CTLineTruncationType arg2, id arg3) {
		return CTLineCreateTruncatedLine(arg0, arg1, arg2, arg3);
	};
	context[@"CTLineDraw"] = ^void(id arg0, id arg1) {
		CTLineDraw(arg0, arg1);
	};
	context[@"CTLineGetStringIndexForPosition"] = ^CFIndex(id arg0, CGPoint arg1) {
		return CTLineGetStringIndexForPosition(arg0, arg1);
	};
	context[@"CTLineCreateWithAttributedString"] = ^id(id arg0) {
		return CTLineCreateWithAttributedString(arg0);
	};
	context[@"CTLineGetGlyphRuns"] = ^id(id arg0) {
		return CTLineGetGlyphRuns(arg0);
	};
	context[@"CTLineGetStringRange"] = ^CFRange(id arg0) {
		return CTLineGetStringRange(arg0);
	};
	context[@"CTLineGetTypeID"] = ^CFTypeID() {
		return CTLineGetTypeID();
	};
	context[@"CTLineGetBoundsWithOptions"] = ^CGRect(id arg0, CTLineBoundsOptions arg1) {
		return CTLineGetBoundsWithOptions(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTLineBoundsExcludeTypographicLeading"] = @1UL;
	context[@"kCTLineBoundsExcludeTypographicShifts"] = @2UL;
	context[@"kCTLineBoundsUseHangingPunctuation"] = @4UL;
	context[@"kCTLineBoundsUseGlyphPathBounds"] = @8UL;
	context[@"kCTLineBoundsUseOpticalBounds"] = @16UL;
	context[@"kCTLineBoundsIncludeLanguageExtents"] = @32UL;

	context[@"kCTLineTruncationStart"] = @0U;
	context[@"kCTLineTruncationEnd"] = @1U;
	context[@"kCTLineTruncationMiddle"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreText_CTLine_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
