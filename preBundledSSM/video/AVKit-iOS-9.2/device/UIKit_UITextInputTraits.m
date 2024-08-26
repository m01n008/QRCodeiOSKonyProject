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
	context[@"UITextAutocapitalizationTypeNone"] = @0;
	context[@"UITextAutocapitalizationTypeWords"] = @1;
	context[@"UITextAutocapitalizationTypeSentences"] = @2;
	context[@"UITextAutocapitalizationTypeAllCharacters"] = @3;

	context[@"UITextAutocorrectionTypeDefault"] = @0;
	context[@"UITextAutocorrectionTypeNo"] = @1;
	context[@"UITextAutocorrectionTypeYes"] = @2;

	context[@"UITextSpellCheckingTypeDefault"] = @0;
	context[@"UITextSpellCheckingTypeNo"] = @1;
	context[@"UITextSpellCheckingTypeYes"] = @2;

	context[@"UIKeyboardTypeDefault"] = @0;
	context[@"UIKeyboardTypeASCIICapable"] = @1;
	context[@"UIKeyboardTypeNumbersAndPunctuation"] = @2;
	context[@"UIKeyboardTypeURL"] = @3;
	context[@"UIKeyboardTypeNumberPad"] = @4;
	context[@"UIKeyboardTypePhonePad"] = @5;
	context[@"UIKeyboardTypeNamePhonePad"] = @6;
	context[@"UIKeyboardTypeEmailAddress"] = @7;
	context[@"UIKeyboardTypeDecimalPad"] = @8;
	context[@"UIKeyboardTypeTwitter"] = @9;
	context[@"UIKeyboardTypeWebSearch"] = @10;
	context[@"UIKeyboardTypeAlphabet"] = @1;

	context[@"UIKeyboardAppearanceDefault"] = @0;
	context[@"UIKeyboardAppearanceDark"] = @1;
	context[@"UIKeyboardAppearanceLight"] = @2;
	context[@"UIKeyboardAppearanceAlert"] = @1;

	context[@"UIReturnKeyDefault"] = @0;
	context[@"UIReturnKeyGo"] = @1;
	context[@"UIReturnKeyGoogle"] = @2;
	context[@"UIReturnKeyJoin"] = @3;
	context[@"UIReturnKeyNext"] = @4;
	context[@"UIReturnKeyRoute"] = @5;
	context[@"UIReturnKeySearch"] = @6;
	context[@"UIReturnKeySend"] = @7;
	context[@"UIReturnKeyYahoo"] = @8;
	context[@"UIReturnKeyDone"] = @9;
	context[@"UIReturnKeyEmergencyCall"] = @10;
	context[@"UIReturnKeyContinue"] = @11;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_UITextInputTraitsProtocols()
{
	(void)@protocol(UITextInputTraits);
}
void load_UIKit_UITextInputTraits_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
