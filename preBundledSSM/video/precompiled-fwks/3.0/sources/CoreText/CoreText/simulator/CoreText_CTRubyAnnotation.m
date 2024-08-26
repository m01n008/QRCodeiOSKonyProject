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
	context[@"CTRubyAnnotationGetAlignment"] = ^CTRubyAlignment(id arg0) {
		return CTRubyAnnotationGetAlignment(arg0);
	};
	context[@"CTRubyAnnotationCreateWithAttributes"] = ^id(CTRubyAlignment arg0, CTRubyOverhang arg1, CTRubyPosition arg2, id arg3, id arg4) {
		return CTRubyAnnotationCreateWithAttributes(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"CTRubyAnnotationCreateCopy"] = ^id(id arg0) {
		return CTRubyAnnotationCreateCopy(arg0);
	};
	context[@"CTRubyAnnotationGetSizeFactor"] = ^CGFloat(id arg0) {
		return CTRubyAnnotationGetSizeFactor(arg0);
	};
	context[@"CTRubyAnnotationGetTypeID"] = ^CFTypeID() {
		return CTRubyAnnotationGetTypeID();
	};
	context[@"CTRubyAnnotationGetTextForPosition"] = ^id(id arg0, CTRubyPosition arg1) {
		return CTRubyAnnotationGetTextForPosition(arg0, arg1);
	};
	context[@"CTRubyAnnotationGetOverhang"] = ^CTRubyOverhang(id arg0) {
		return CTRubyAnnotationGetOverhang(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTRubyAlignmentInvalid"] = @-1;
	context[@"kCTRubyAlignmentAuto"] = @0;
	context[@"kCTRubyAlignmentStart"] = @1;
	context[@"kCTRubyAlignmentCenter"] = @2;
	context[@"kCTRubyAlignmentEnd"] = @3;
	context[@"kCTRubyAlignmentDistributeLetter"] = @4;
	context[@"kCTRubyAlignmentDistributeSpace"] = @5;
	context[@"kCTRubyAlignmentLineEdge"] = @6;

	context[@"kCTRubyOverhangInvalid"] = @-1;
	context[@"kCTRubyOverhangAuto"] = @0;
	context[@"kCTRubyOverhangStart"] = @1;
	context[@"kCTRubyOverhangEnd"] = @2;
	context[@"kCTRubyOverhangNone"] = @3;

	context[@"kCTRubyPositionBefore"] = @0;
	context[@"kCTRubyPositionAfter"] = @1;
	context[@"kCTRubyPositionInterCharacter"] = @2;
	context[@"kCTRubyPositionInline"] = @3;
	context[@"kCTRubyPositionCount"] = @4;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTRubyAnnotationScaleToFitAttributeName;
	if (p != NULL) context[@"kCTRubyAnnotationScaleToFitAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTRubyAnnotationScaleToFitAttributeName inContext: context];
	p = (void*) &kCTRubyAnnotationSizeFactorAttributeName;
	if (p != NULL) context[@"kCTRubyAnnotationSizeFactorAttributeName"] = [JSValue valueWithObject: (__bridge id) kCTRubyAnnotationSizeFactorAttributeName inContext: context];
}
void load_CoreText_CTRubyAnnotation_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
