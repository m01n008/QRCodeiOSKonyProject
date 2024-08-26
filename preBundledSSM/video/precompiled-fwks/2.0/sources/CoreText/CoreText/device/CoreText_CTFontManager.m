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
	context[@"CTFontManagerCreateFontDescriptorFromData"] = ^id(id arg0) {
		return CTFontManagerCreateFontDescriptorFromData(arg0);
	};
	context[@"CTFontManagerCopyAvailablePostScriptNames"] = ^id() {
		return CTFontManagerCopyAvailablePostScriptNames();
	};
	context[@"CTFontManagerCopyAvailableFontFamilyNames"] = ^id() {
		return CTFontManagerCopyAvailableFontFamilyNames();
	};
	context[@"CTFontManagerCreateFontDescriptorsFromURL"] = ^id(id arg0) {
		return CTFontManagerCreateFontDescriptorsFromURL(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFontManagerScopeNone"] = @0U;
	context[@"kCTFontManagerScopeProcess"] = @1U;
	context[@"kCTFontManagerScopeUser"] = @2U;
	context[@"kCTFontManagerScopeSession"] = @3U;

	context[@"kCTFontManagerAutoActivationDefault"] = @0U;
	context[@"kCTFontManagerAutoActivationDisabled"] = @1U;
	context[@"kCTFontManagerAutoActivationEnabled"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTFontManagerRegisteredFontsChangedNotification;
	if (p != NULL) context[@"kCTFontManagerRegisteredFontsChangedNotification"] = [JSValue valueWithObject: (__bridge id) kCTFontManagerRegisteredFontsChangedNotification inContext: context];
}
void load_CoreText_CTFontManager_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
