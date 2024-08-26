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
	context[@"CGColorConversionInfoCreate"] = ^id(id arg0, id arg1) {
		return CGColorConversionInfoCreate(arg0, arg1);
	};
	context[@"CGColorConversionInfoCreateWithOptions"] = ^id(id arg0, id arg1, id arg2) {
		return CGColorConversionInfoCreateWithOptions(arg0, arg1, arg2);
	};
	context[@"CGColorConversionInfoGetTypeID"] = ^CFTypeID() {
		return CGColorConversionInfoGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCGColorConversionTransformFromSpace"] = @0U;
	context[@"kCGColorConversionTransformToSpace"] = @1U;
	context[@"kCGColorConversionTransformApplySpace"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGColorConversionTRCSize;
	if (p != NULL) context[@"kCGColorConversionTRCSize"] = [JSValue valueWithObject: (__bridge id) kCGColorConversionTRCSize inContext: context];
	p = (void*) &kCGColorConversionBlackPointCompensation;
	if (p != NULL) context[@"kCGColorConversionBlackPointCompensation"] = [JSValue valueWithObject: (__bridge id) kCGColorConversionBlackPointCompensation inContext: context];
}
void load_CoreGraphics_CGColorConversionInfo_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
