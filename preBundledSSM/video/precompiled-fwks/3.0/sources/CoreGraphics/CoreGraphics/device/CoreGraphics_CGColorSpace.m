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
	context[@"CGColorSpaceRetain"] = ^id(id arg0) {
		return CGColorSpaceRetain(arg0);
	};
	context[@"CGColorSpaceGetBaseColorSpace"] = ^id(id arg0) {
		return CGColorSpaceGetBaseColorSpace(arg0);
	};
	context[@"CGColorSpaceCreateDeviceCMYK"] = ^id() {
		return CGColorSpaceCreateDeviceCMYK();
	};
	context[@"CGColorSpaceCreatePattern"] = ^id(id arg0) {
		return CGColorSpaceCreatePattern(arg0);
	};
	context[@"CGColorSpaceGetColorTableCount"] = ^size_t(id arg0) {
		return CGColorSpaceGetColorTableCount(arg0);
	};
	context[@"CGColorSpaceCreateDeviceGray"] = ^id() {
		return CGColorSpaceCreateDeviceGray();
	};
	context[@"CGColorSpaceRelease"] = ^void(id arg0) {
		CGColorSpaceRelease(arg0);
	};
	context[@"CGColorSpaceIsHDR"] = ^_Bool(id arg0) {
		return CGColorSpaceIsHDR(arg0);
	};
	context[@"CGColorSpaceGetNumberOfComponents"] = ^size_t(id arg0) {
		return CGColorSpaceGetNumberOfComponents(arg0);
	};
	context[@"CGColorSpaceUsesITUR_2100TF"] = ^_Bool(id arg0) {
		return CGColorSpaceUsesITUR_2100TF(arg0);
	};
	context[@"CGColorSpaceGetModel"] = ^CGColorSpaceModel(id arg0) {
		return CGColorSpaceGetModel(arg0);
	};
	context[@"CGColorSpaceGetTypeID"] = ^CFTypeID() {
		return CGColorSpaceGetTypeID();
	};
	context[@"CGColorSpaceCreateDeviceRGB"] = ^id() {
		return CGColorSpaceCreateDeviceRGB();
	};
	context[@"CGColorSpaceCreateWithICCProfile"] = ^id(id arg0) {
		return CGColorSpaceCreateWithICCProfile(arg0);
	};
	context[@"CGColorSpaceCreateExtended"] = ^id(id arg0) {
		return CGColorSpaceCreateExtended(arg0);
	};
	context[@"CGColorSpaceCopyPropertyList"] = ^id(id arg0) {
		return CGColorSpaceCopyPropertyList(arg0);
	};
	context[@"CGColorSpaceCreateWithICCData"] = ^id(id arg0) {
		return CGColorSpaceCreateWithICCData(arg0);
	};
	context[@"CGColorSpaceCreateExtendedLinearized"] = ^id(id arg0) {
		return CGColorSpaceCreateExtendedLinearized(arg0);
	};
	context[@"CGColorSpaceCopyName"] = ^id(id arg0) {
		return CGColorSpaceCopyName(arg0);
	};
	context[@"CGColorSpaceGetName"] = ^id(id arg0) {
		return CGColorSpaceGetName(arg0);
	};
	context[@"CGColorSpaceCreateWithName"] = ^id(id arg0) {
		return CGColorSpaceCreateWithName(arg0);
	};
	context[@"CGColorSpaceCopyICCProfile"] = ^id(id arg0) {
		return CGColorSpaceCopyICCProfile(arg0);
	};
	context[@"CGColorSpaceCopyICCData"] = ^id(id arg0) {
		return CGColorSpaceCopyICCData(arg0);
	};
	context[@"CGColorSpaceSupportsOutput"] = ^_Bool(id arg0) {
		return CGColorSpaceSupportsOutput(arg0);
	};
	context[@"CGColorSpaceCreateLinearized"] = ^id(id arg0) {
		return CGColorSpaceCreateLinearized(arg0);
	};
	context[@"CGColorSpaceUsesExtendedRange"] = ^_Bool(id arg0) {
		return CGColorSpaceUsesExtendedRange(arg0);
	};
	context[@"CGColorSpaceIsWideGamutRGB"] = ^_Bool(id arg0) {
		return CGColorSpaceIsWideGamutRGB(arg0);
	};
	context[@"CGColorSpaceCreateWithPropertyList"] = ^id(id arg0) {
		return CGColorSpaceCreateWithPropertyList(arg0);
	};
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
	context[@"kCGColorSpaceModelXYZ"] = @7;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGColorSpaceITUR_709;
	if (p != NULL) context[@"kCGColorSpaceITUR_709"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceITUR_709 inContext: context];
	p = (void*) &kCGColorSpaceGenericRGBLinear;
	if (p != NULL) context[@"kCGColorSpaceGenericRGBLinear"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericRGBLinear inContext: context];
	p = (void*) &kCGColorSpaceITUR_2020_PQ;
	if (p != NULL) context[@"kCGColorSpaceITUR_2020_PQ"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceITUR_2020_PQ inContext: context];
	p = (void*) &kCGColorSpaceExtendedSRGB;
	if (p != NULL) context[@"kCGColorSpaceExtendedSRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedSRGB inContext: context];
	p = (void*) &kCGColorSpaceExtendedLinearDisplayP3;
	if (p != NULL) context[@"kCGColorSpaceExtendedLinearDisplayP3"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedLinearDisplayP3 inContext: context];
	p = (void*) &kCGColorSpaceAdobeRGB1998;
	if (p != NULL) context[@"kCGColorSpaceAdobeRGB1998"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceAdobeRGB1998 inContext: context];
	p = (void*) &kCGColorSpaceGenericRGB;
	if (p != NULL) context[@"kCGColorSpaceGenericRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericRGB inContext: context];
	p = (void*) &kCGColorSpaceITUR_2020;
	if (p != NULL) context[@"kCGColorSpaceITUR_2020"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceITUR_2020 inContext: context];
	p = (void*) &kCGColorSpaceROMMRGB;
	if (p != NULL) context[@"kCGColorSpaceROMMRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceROMMRGB inContext: context];
	p = (void*) &kCGColorSpaceDCIP3;
	if (p != NULL) context[@"kCGColorSpaceDCIP3"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceDCIP3 inContext: context];
	p = (void*) &kCGColorSpaceExtendedITUR_2020;
	if (p != NULL) context[@"kCGColorSpaceExtendedITUR_2020"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedITUR_2020 inContext: context];
	p = (void*) &kCGColorSpaceDisplayP3_PQ;
	if (p != NULL) context[@"kCGColorSpaceDisplayP3_PQ"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceDisplayP3_PQ inContext: context];
	p = (void*) &kCGColorSpaceACESCGLinear;
	if (p != NULL) context[@"kCGColorSpaceACESCGLinear"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceACESCGLinear inContext: context];
	p = (void*) &kCGColorSpaceITUR_2100_HLG;
	if (p != NULL) context[@"kCGColorSpaceITUR_2100_HLG"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceITUR_2100_HLG inContext: context];
	p = (void*) &kCGColorSpaceGenericXYZ;
	if (p != NULL) context[@"kCGColorSpaceGenericXYZ"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericXYZ inContext: context];
	p = (void*) &kCGColorSpaceGenericCMYK;
	if (p != NULL) context[@"kCGColorSpaceGenericCMYK"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericCMYK inContext: context];
	p = (void*) &kCGColorSpaceExtendedDisplayP3;
	if (p != NULL) context[@"kCGColorSpaceExtendedDisplayP3"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedDisplayP3 inContext: context];
	p = (void*) &kCGColorSpaceGenericGray;
	if (p != NULL) context[@"kCGColorSpaceGenericGray"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericGray inContext: context];
	p = (void*) &kCGColorSpaceGenericGrayGamma2_2;
	if (p != NULL) context[@"kCGColorSpaceGenericGrayGamma2_2"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericGrayGamma2_2 inContext: context];
	p = (void*) &kCGColorSpaceGenericLab;
	if (p != NULL) context[@"kCGColorSpaceGenericLab"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceGenericLab inContext: context];
	p = (void*) &kCGColorSpaceExtendedLinearGray;
	if (p != NULL) context[@"kCGColorSpaceExtendedLinearGray"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedLinearGray inContext: context];
	p = (void*) &kCGColorSpaceDisplayP3_HLG;
	if (p != NULL) context[@"kCGColorSpaceDisplayP3_HLG"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceDisplayP3_HLG inContext: context];
	p = (void*) &kCGColorSpaceDisplayP3;
	if (p != NULL) context[@"kCGColorSpaceDisplayP3"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceDisplayP3 inContext: context];
	p = (void*) &kCGColorSpaceExtendedLinearSRGB;
	if (p != NULL) context[@"kCGColorSpaceExtendedLinearSRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedLinearSRGB inContext: context];
	p = (void*) &kCGColorSpaceSRGB;
	if (p != NULL) context[@"kCGColorSpaceSRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceSRGB inContext: context];
	p = (void*) &kCGColorSpaceLinearGray;
	if (p != NULL) context[@"kCGColorSpaceLinearGray"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceLinearGray inContext: context];
	p = (void*) &kCGColorSpaceExtendedLinearITUR_2020;
	if (p != NULL) context[@"kCGColorSpaceExtendedLinearITUR_2020"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedLinearITUR_2020 inContext: context];
	p = (void*) &kCGColorSpaceExtendedGray;
	if (p != NULL) context[@"kCGColorSpaceExtendedGray"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceExtendedGray inContext: context];
	p = (void*) &kCGColorSpaceITUR_2100_PQ;
	if (p != NULL) context[@"kCGColorSpaceITUR_2100_PQ"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceITUR_2100_PQ inContext: context];
	p = (void*) &kCGColorSpaceLinearSRGB;
	if (p != NULL) context[@"kCGColorSpaceLinearSRGB"] = [JSValue valueWithObject: (__bridge id) kCGColorSpaceLinearSRGB inContext: context];
}
void load_CoreGraphics_CGColorSpace_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
