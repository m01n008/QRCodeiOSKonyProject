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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCTFontManagerErrorFileNotFound"] = @101L;
	context[@"kCTFontManagerErrorInsufficientPermissions"] = @102L;
	context[@"kCTFontManagerErrorUnrecognizedFormat"] = @103L;
	context[@"kCTFontManagerErrorInvalidFontData"] = @104L;
	context[@"kCTFontManagerErrorAlreadyRegistered"] = @105L;
	context[@"kCTFontManagerErrorNotRegistered"] = @201L;
	context[@"kCTFontManagerErrorInUse"] = @202L;
	context[@"kCTFontManagerErrorSystemRequired"] = @203L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreText_CTFontManagerErrors_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
