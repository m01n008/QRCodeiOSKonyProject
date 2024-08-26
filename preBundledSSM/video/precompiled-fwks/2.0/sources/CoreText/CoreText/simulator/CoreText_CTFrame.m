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
	context[@"CTFrameGetStringRange"] = ^CFRange(id arg0) {
		return CTFrameGetStringRange(arg0);
	};
	context[@"CTFrameGetVisibleStringRange"] = ^CFRange(id arg0) {
		return CTFrameGetVisibleStringRange(arg0);
	};
	context[@"CTFrameGetPath"] = ^id(id arg0) {
		return CTFrameGetPath(arg0);
	};
	context[@"CTFrameGetFrameAttributes"] = ^id(id arg0) {
		return CTFrameGetFrameAttributes(arg0);
	};
	context[@"CTFrameDraw"] = ^void(id arg0, id arg1) {
		CTFrameDraw(arg0, arg1);
	};
	context[@"CTFrameGetTypeID"] = ^CFTypeID() {
		return CTFrameGetTypeID();
	};
	context[@"CTFrameGetLines"] = ^id(id arg0) {
		return CTFrameGetLines(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFrameProgressionTopToBottom"] = @0U;
	context[@"kCTFrameProgressionRightToLeft"] = @1U;
	context[@"kCTFrameProgressionLeftToRight"] = @2U;

	context[@"kCTFramePathFillEvenOdd"] = @0U;
	context[@"kCTFramePathFillWindingNumber"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTFramePathWidthAttributeName;
	if (p != NULL) context[@"kCTFramePathWidthAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTFramePathWidthAttributeName inContext: context];
	p = (void*) &kCTFramePathFillRuleAttributeName;
	if (p != NULL) context[@"kCTFramePathFillRuleAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTFramePathFillRuleAttributeName inContext: context];
	p = (void*) &kCTFramePathClippingPathAttributeName;
	if (p != NULL) context[@"kCTFramePathClippingPathAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTFramePathClippingPathAttributeName inContext: context];
	p = (void*) &kCTFrameProgressionAttributeName;
	if (p != NULL) context[@"kCTFrameProgressionAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTFrameProgressionAttributeName inContext: context];
	p = (void*) &kCTFrameClippingPathsAttributeName;
	if (p != NULL) context[@"kCTFrameClippingPathsAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTFrameClippingPathsAttributeName inContext: context];
}
void load_CoreText_CTFrame_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
