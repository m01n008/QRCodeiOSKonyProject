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
	context[@"CTTypesetterSuggestLineBreakWithOffset"] = ^CFIndex(id arg0, CFIndex arg1, double arg2, double arg3) {
		return CTTypesetterSuggestLineBreakWithOffset(arg0, arg1, arg2, arg3);
	};
	context[@"CTTypesetterCreateLineWithOffset"] = ^id(id arg0, CFRange arg1, double arg2) {
		return CTTypesetterCreateLineWithOffset(arg0, arg1, arg2);
	};
	context[@"CTTypesetterCreateWithAttributedStringAndOptions"] = ^id(id arg0, id arg1) {
		return CTTypesetterCreateWithAttributedStringAndOptions(arg0, arg1);
	};
	context[@"CTTypesetterSuggestClusterBreak"] = ^CFIndex(id arg0, CFIndex arg1, double arg2) {
		return CTTypesetterSuggestClusterBreak(arg0, arg1, arg2);
	};
	context[@"CTTypesetterCreateLine"] = ^id(id arg0, CFRange arg1) {
		return CTTypesetterCreateLine(arg0, arg1);
	};
	context[@"CTTypesetterGetTypeID"] = ^CFTypeID() {
		return CTTypesetterGetTypeID();
	};
	context[@"CTTypesetterSuggestLineBreak"] = ^CFIndex(id arg0, CFIndex arg1, double arg2) {
		return CTTypesetterSuggestLineBreak(arg0, arg1, arg2);
	};
	context[@"CTTypesetterSuggestClusterBreakWithOffset"] = ^CFIndex(id arg0, CFIndex arg1, double arg2, double arg3) {
		return CTTypesetterSuggestClusterBreakWithOffset(arg0, arg1, arg2, arg3);
	};
	context[@"CTTypesetterCreateWithAttributedString"] = ^id(id arg0) {
		return CTTypesetterCreateWithAttributedString(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTTypesetterOptionAllowUnboundedLayout;
	if (p != NULL) context[@"kCTTypesetterOptionAllowUnboundedLayout"] = [JSValue valueWithObject: (__bridge id) kCTTypesetterOptionAllowUnboundedLayout inContext: context];
	p = (void*) &kCTTypesetterOptionDisableBidiProcessing;
	if (p != NULL) context[@"kCTTypesetterOptionDisableBidiProcessing"] = [JSValue valueWithObject: (__bridge id) kCTTypesetterOptionDisableBidiProcessing inContext: context];
	p = (void*) &kCTTypesetterOptionForcedEmbeddingLevel;
	if (p != NULL) context[@"kCTTypesetterOptionForcedEmbeddingLevel"] = [JSValue valueWithObject: (__bridge id) kCTTypesetterOptionForcedEmbeddingLevel inContext: context];
}
void load_CoreText_CTTypesetter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
