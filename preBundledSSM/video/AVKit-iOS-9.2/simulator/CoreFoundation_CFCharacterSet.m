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
	context[@"kCFCharacterSetControl"] = @1L;
	context[@"kCFCharacterSetWhitespace"] = @2L;
	context[@"kCFCharacterSetWhitespaceAndNewline"] = @3L;
	context[@"kCFCharacterSetDecimalDigit"] = @4L;
	context[@"kCFCharacterSetLetter"] = @5L;
	context[@"kCFCharacterSetLowercaseLetter"] = @6L;
	context[@"kCFCharacterSetUppercaseLetter"] = @7L;
	context[@"kCFCharacterSetNonBase"] = @8L;
	context[@"kCFCharacterSetDecomposable"] = @9L;
	context[@"kCFCharacterSetAlphaNumeric"] = @10L;
	context[@"kCFCharacterSetPunctuation"] = @11L;
	context[@"kCFCharacterSetCapitalizedLetter"] = @13L;
	context[@"kCFCharacterSetSymbol"] = @14L;
	context[@"kCFCharacterSetNewline"] = @15L;
	context[@"kCFCharacterSetIllegal"] = @12L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFCharacterSet_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
