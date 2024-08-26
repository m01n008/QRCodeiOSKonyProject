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
	context[@"CGColorCreateSRGB"] = ^id(CGFloat arg0, CGFloat arg1, CGFloat arg2, CGFloat arg3) {
		return CGColorCreateSRGB(arg0, arg1, arg2, arg3);
	};
	context[@"CGColorCreateGenericGray"] = ^id(CGFloat arg0, CGFloat arg1) {
		return CGColorCreateGenericGray(arg0, arg1);
	};
	context[@"CGColorRetain"] = ^id(id arg0) {
		return CGColorRetain(arg0);
	};
	context[@"CGColorCreateGenericCMYK"] = ^id(CGFloat arg0, CGFloat arg1, CGFloat arg2, CGFloat arg3, CGFloat arg4) {
		return CGColorCreateGenericCMYK(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CGColorCreateCopy"] = ^id(id arg0) {
		return CGColorCreateCopy(arg0);
	};
	context[@"CGColorGetNumberOfComponents"] = ^size_t(id arg0) {
		return CGColorGetNumberOfComponents(arg0);
	};
	context[@"CGColorGetConstantColor"] = ^id(id arg0) {
		return CGColorGetConstantColor(arg0);
	};
	context[@"CGColorCreateCopyByMatchingToColorSpace"] = ^id(id arg0, CGColorRenderingIntent arg1, id arg2, id arg3) {
		return CGColorCreateCopyByMatchingToColorSpace(arg0, arg1, arg2, arg3);
	};
	context[@"CGColorGetTypeID"] = ^CFTypeID() {
		return CGColorGetTypeID();
	};
	context[@"CGColorGetPattern"] = ^id(id arg0) {
		return CGColorGetPattern(arg0);
	};
	context[@"CGColorGetAlpha"] = ^CGFloat(id arg0) {
		return CGColorGetAlpha(arg0);
	};
	context[@"CGColorCreateGenericRGB"] = ^id(CGFloat arg0, CGFloat arg1, CGFloat arg2, CGFloat arg3) {
		return CGColorCreateGenericRGB(arg0, arg1, arg2, arg3);
	};
	context[@"CGColorRelease"] = ^void(id arg0) {
		CGColorRelease(arg0);
	};
	context[@"CGColorEqualToColor"] = ^_Bool(id arg0, id arg1) {
		return CGColorEqualToColor(arg0, arg1);
	};
	context[@"CGColorGetColorSpace"] = ^id(id arg0) {
		return CGColorGetColorSpace(arg0);
	};
	context[@"CGColorCreateGenericGrayGamma2_2"] = ^id(CGFloat arg0, CGFloat arg1) {
		return CGColorCreateGenericGrayGamma2_2(arg0, arg1);
	};
	context[@"CGColorCreateCopyWithAlpha"] = ^id(id arg0, CGFloat arg1) {
		return CGColorCreateCopyWithAlpha(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGColorWhite;
	if (p != NULL) context[@"kCGColorWhite"] = [JSValue valueWithObject: (__bridge id) kCGColorWhite inContext: context];
	p = (void*) &kCGColorClear;
	if (p != NULL) context[@"kCGColorClear"] = [JSValue valueWithObject: (__bridge id) kCGColorClear inContext: context];
	p = (void*) &kCGColorBlack;
	if (p != NULL) context[@"kCGColorBlack"] = [JSValue valueWithObject: (__bridge id) kCGColorBlack inContext: context];
}
void load_CoreGraphics_CGColor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
