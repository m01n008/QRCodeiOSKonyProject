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
	context[@"CGDataConsumerRetain"] = ^id(id arg0) {
		return CGDataConsumerRetain(arg0);
	};
	context[@"CGDataConsumerCreateWithURL"] = ^id(id arg0) {
		return CGDataConsumerCreateWithURL(arg0);
	};
	context[@"CGDataConsumerRelease"] = ^void(id arg0) {
		CGDataConsumerRelease(arg0);
	};
	context[@"CGDataConsumerCreateWithCFData"] = ^id(id arg0) {
		return CGDataConsumerCreateWithCFData(arg0);
	};
	context[@"CGDataConsumerGetTypeID"] = ^CFTypeID() {
		return CGDataConsumerGetTypeID();
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreGraphics_CGDataConsumer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
