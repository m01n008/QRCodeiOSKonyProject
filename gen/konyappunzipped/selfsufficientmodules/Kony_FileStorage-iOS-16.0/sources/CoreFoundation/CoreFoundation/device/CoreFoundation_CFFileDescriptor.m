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
	context[@"CFFileDescriptorGetTypeID"] = ^CFTypeID() {
		return CFFileDescriptorGetTypeID();
	};
	context[@"CFFileDescriptorGetNativeDescriptor"] = ^CFFileDescriptorNativeDescriptor(id arg0) {
		return CFFileDescriptorGetNativeDescriptor(arg0);
	};
	context[@"CFFileDescriptorEnableCallBacks"] = ^void(id arg0, CFOptionFlags arg1) {
		CFFileDescriptorEnableCallBacks(arg0, arg1);
	};
	context[@"CFFileDescriptorDisableCallBacks"] = ^void(id arg0, CFOptionFlags arg1) {
		CFFileDescriptorDisableCallBacks(arg0, arg1);
	};
	context[@"CFFileDescriptorInvalidate"] = ^void(id arg0) {
		CFFileDescriptorInvalidate(arg0);
	};
	context[@"CFFileDescriptorIsValid"] = ^Boolean(id arg0) {
		return CFFileDescriptorIsValid(arg0);
	};
	context[@"CFFileDescriptorCreateRunLoopSource"] = ^id(id arg0, id arg1, CFIndex arg2) {
		return CFFileDescriptorCreateRunLoopSource(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFFileDescriptorReadCallBack"] = @1UL;
	context[@"kCFFileDescriptorWriteCallBack"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFFileDescriptor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
