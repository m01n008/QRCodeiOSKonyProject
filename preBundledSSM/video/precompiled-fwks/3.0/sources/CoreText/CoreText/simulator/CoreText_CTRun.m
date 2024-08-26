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
	context[@"CTRunGetImageBounds"] = ^CGRect(id arg0, id arg1, CFRange arg2) {
		return CTRunGetImageBounds(arg0, arg1, arg2);
	};
	context[@"CTRunGetTypeID"] = ^CFTypeID() {
		return CTRunGetTypeID();
	};
	context[@"CTRunGetAttributes"] = ^id(id arg0) {
		return CTRunGetAttributes(arg0);
	};
	context[@"CTRunGetStatus"] = ^CTRunStatus(id arg0) {
		return CTRunGetStatus(arg0);
	};
	context[@"CTRunGetGlyphCount"] = ^CFIndex(id arg0) {
		return CTRunGetGlyphCount(arg0);
	};
	context[@"CTRunGetTextMatrix"] = ^CGAffineTransform(id arg0) {
		return CTRunGetTextMatrix(arg0);
	};
	context[@"CTRunGetStringRange"] = ^CFRange(id arg0) {
		return CTRunGetStringRange(arg0);
	};
	context[@"CTRunDraw"] = ^void(id arg0, id arg1, CFRange arg2) {
		CTRunDraw(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTRunStatusNoStatus"] = @0U;
	context[@"kCTRunStatusRightToLeft"] = @1U;
	context[@"kCTRunStatusNonMonotonic"] = @2U;
	context[@"kCTRunStatusHasNonIdentityMatrix"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreText_CTRun_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
