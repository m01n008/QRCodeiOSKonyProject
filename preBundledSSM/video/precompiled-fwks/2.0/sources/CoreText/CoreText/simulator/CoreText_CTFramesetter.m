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
	context[@"CTFramesetterGetTypeID"] = ^CFTypeID() {
		return CTFramesetterGetTypeID();
	};
	context[@"CTFramesetterCreateWithAttributedString"] = ^id(id arg0) {
		return CTFramesetterCreateWithAttributedString(arg0);
	};
	context[@"CTFramesetterCreateFrame"] = ^id(id arg0, CFRange arg1, id arg2, id arg3) {
		return CTFramesetterCreateFrame(arg0, arg1, arg2, arg3);
	};
	context[@"CTFramesetterGetTypesetter"] = ^id(id arg0) {
		return CTFramesetterGetTypesetter(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreText_CTFramesetter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
