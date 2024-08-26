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
	context[@"CTTextTabGetTypeID"] = ^CFTypeID() {
		return CTTextTabGetTypeID();
	};
	context[@"CTTextTabGetLocation"] = ^double(id arg0) {
		return CTTextTabGetLocation(arg0);
	};
	context[@"CTTextTabCreate"] = ^id(CTTextAlignment arg0, double arg1, id arg2) {
		return CTTextTabCreate(arg0, arg1, arg2);
	};
	context[@"CTTextTabGetAlignment"] = ^CTTextAlignment(id arg0) {
		return CTTextTabGetAlignment(arg0);
	};
	context[@"CTTextTabGetOptions"] = ^id(id arg0) {
		return CTTextTabGetOptions(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTTabColumnTerminatorsAttributeName;
	if (p != NULL) context[@"kCTTabColumnTerminatorsAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTTabColumnTerminatorsAttributeName inContext: context];
}
void load_CoreText_CTTextTab_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
