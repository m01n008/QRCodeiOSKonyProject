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
	context[@"CTFontCollectionCreateCopyWithFontDescriptors"] = ^id(id arg0, id arg1, id arg2) {
		return CTFontCollectionCreateCopyWithFontDescriptors(arg0, arg1, arg2);
	};
	context[@"CTFontCollectionGetTypeID"] = ^CFTypeID() {
		return CTFontCollectionGetTypeID();
	};
	context[@"CTFontCollectionCreateMatchingFontDescriptorsWithOptions"] = ^id(id arg0, id arg1) {
		return CTFontCollectionCreateMatchingFontDescriptorsWithOptions(arg0, arg1);
	};
	context[@"CTFontCollectionCreateWithFontDescriptors"] = ^id(id arg0, id arg1) {
		return CTFontCollectionCreateWithFontDescriptors(arg0, arg1);
	};
	context[@"CTFontCollectionCreateFromAvailableFonts"] = ^id(id arg0) {
		return CTFontCollectionCreateFromAvailableFonts(arg0);
	};
	context[@"CTFontCollectionCreateMatchingFontDescriptors"] = ^id(id arg0) {
		return CTFontCollectionCreateMatchingFontDescriptors(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFontCollectionCopyDefaultOptions"] = @0U;
	context[@"kCTFontCollectionCopyUnique"] = @1U;
	context[@"kCTFontCollectionCopyStandardSort"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTFontCollectionRemoveDuplicatesOption;
	if (p != NULL) context[@"kCTFontCollectionRemoveDuplicatesOption"] = [JSValue valueWithObject: (__bridge id) kCTFontCollectionRemoveDuplicatesOption inContext: context];
}
void load_CoreText_CTFontCollection_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
