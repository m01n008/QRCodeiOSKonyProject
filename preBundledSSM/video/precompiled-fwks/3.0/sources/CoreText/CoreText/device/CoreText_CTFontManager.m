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
	context[@"CTFontManagerCopyAvailableFontFamilyNames"] = ^id() {
		return CTFontManagerCopyAvailableFontFamilyNames();
	};
	context[@"CTFontManagerCreateFontDescriptorsFromURL"] = ^id(id arg0) {
		return CTFontManagerCreateFontDescriptorsFromURL(arg0);
	};
	context[@"CTFontManagerCopyAvailablePostScriptNames"] = ^id() {
		return CTFontManagerCopyAvailablePostScriptNames();
	};
	context[@"CTFontManagerCreateFontDescriptorsFromData"] = ^id(id arg0) {
		return CTFontManagerCreateFontDescriptorsFromData(arg0);
	};
	context[@"CTFontManagerCreateFontDescriptorFromData"] = ^id(id arg0) {
		return CTFontManagerCreateFontDescriptorFromData(arg0);
	};
	context[@"CTFontManagerCopyRegisteredFontDescriptors"] = ^id(CTFontManagerScope arg0, _Bool arg1) {
		return CTFontManagerCopyRegisteredFontDescriptors(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFontManagerScopeNone"] = @0U;
	context[@"kCTFontManagerScopeProcess"] = @1U;
	context[@"kCTFontManagerScopePersistent"] = @2U;
	context[@"kCTFontManagerScopeUser"] = @2U;

	context[@"kCTFontManagerAutoActivationDefault"] = @0U;
	context[@"kCTFontManagerAutoActivationDisabled"] = @1U;
	context[@"kCTFontManagerAutoActivationEnabled"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCTFontManagerRegisteredFontsChangedNotification;
	if (p != NULL) context[@"kCTFontManagerRegisteredFontsChangedNotification"] = [JSValue valueWithObject: (__bridge id) kCTFontManagerRegisteredFontsChangedNotification inContext: context];
	p = (void*) &kCTFontRegistrationUserInfoAttribute;
	if (p != NULL) context[@"kCTFontRegistrationUserInfoAttribute"] = [JSValue valueWithObject: (__bridge id) kCTFontRegistrationUserInfoAttribute inContext: context];
}
void load_CoreText_CTFontManager_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
