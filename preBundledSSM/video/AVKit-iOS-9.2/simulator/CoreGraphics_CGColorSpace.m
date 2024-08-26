#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCGRenderingIntentDefault"] = @0;
	context[@"kCGRenderingIntentAbsoluteColorimetric"] = @1;
	context[@"kCGRenderingIntentRelativeColorimetric"] = @2;
	context[@"kCGRenderingIntentPerceptual"] = @3;
	context[@"kCGRenderingIntentSaturation"] = @4;

	context[@"kCGColorSpaceModelUnknown"] = @-1;
	context[@"kCGColorSpaceModelMonochrome"] = @0;
	context[@"kCGColorSpaceModelRGB"] = @1;
	context[@"kCGColorSpaceModelCMYK"] = @2;
	context[@"kCGColorSpaceModelLab"] = @3;
	context[@"kCGColorSpaceModelDeviceN"] = @4;
	context[@"kCGColorSpaceModelIndexed"] = @5;
	context[@"kCGColorSpaceModelPattern"] = @6;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGColorSpaceGenericGray;
	if (p != NULL) context[@"kCGColorSpaceGenericGray"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericGray inContext: context];
	p = (void*) &kCGColorSpaceSRGB;
	if (p != NULL) context[@"kCGColorSpaceSRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceSRGB inContext: context];
	p = (void*) &kCGColorSpaceGenericRGB;
	if (p != NULL) context[@"kCGColorSpaceGenericRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericRGB inContext: context];
	p = (void*) &kCGColorSpaceGenericXYZ;
	if (p != NULL) context[@"kCGColorSpaceGenericXYZ"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericXYZ inContext: context];
	p = (void*) &kCGColorSpaceGenericGrayGamma2_2;
	if (p != NULL) context[@"kCGColorSpaceGenericGrayGamma2_2"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericGrayGamma2_2 inContext: context];
	p = (void*) &kCGColorSpaceITUR_2020;
	if (p != NULL) context[@"kCGColorSpaceITUR_2020"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceITUR_2020 inContext: context];
	p = (void*) &kCGColorSpaceITUR_709;
	if (p != NULL) context[@"kCGColorSpaceITUR_709"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceITUR_709 inContext: context];
	p = (void*) &kCGColorSpaceAdobeRGB1998;
	if (p != NULL) context[@"kCGColorSpaceAdobeRGB1998"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceAdobeRGB1998 inContext: context];
	p = (void*) &kCGColorSpaceACESCGLinear;
	if (p != NULL) context[@"kCGColorSpaceACESCGLinear"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceACESCGLinear inContext: context];
	p = (void*) &kCGColorSpaceGenericRGBLinear;
	if (p != NULL) context[@"kCGColorSpaceGenericRGBLinear"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericRGBLinear inContext: context];
	p = (void*) &kCGColorSpaceGenericCMYK;
	if (p != NULL) context[@"kCGColorSpaceGenericCMYK"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericCMYK inContext: context];
	p = (void*) &kCGColorSpaceROMMRGB;
	if (p != NULL) context[@"kCGColorSpaceROMMRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceROMMRGB inContext: context];
}
void load_CoreGraphics_CGColorSpace_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
