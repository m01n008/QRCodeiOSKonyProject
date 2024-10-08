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
	context[@"CGGradientGetTypeID"] = ^CFTypeID() {
		return CGGradientGetTypeID();
	};
	context[@"CGGradientRetain"] = ^id(id arg0) {
		return CGGradientRetain(arg0);
	};
	context[@"CGGradientRelease"] = ^void(id arg0) {
		CGGradientRelease(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCGGradientDrawsBeforeStartLocation"] = @1U;
	context[@"kCGGradientDrawsAfterEndLocation"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreGraphics_CGGradient_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
