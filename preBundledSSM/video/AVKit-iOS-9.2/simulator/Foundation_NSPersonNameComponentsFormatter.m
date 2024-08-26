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
	class_addProtocol([NSPersonNameComponentsFormatter class], @protocol(NSPersonNameComponentsFormatterInstanceExports));
	class_addProtocol([NSPersonNameComponentsFormatter class], @protocol(NSPersonNameComponentsFormatterClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSPersonNameComponentsFormatterStyleDefault"] = @0;
	context[@"NSPersonNameComponentsFormatterStyleShort"] = @1;
	context[@"NSPersonNameComponentsFormatterStyleMedium"] = @2;
	context[@"NSPersonNameComponentsFormatterStyleLong"] = @3;
	context[@"NSPersonNameComponentsFormatterStyleAbbreviated"] = @4;

	context[@"NSPersonNameComponentsFormatterPhonetic"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSPersonNameComponentDelimiter;
	if (p != NULL) context[@"NSPersonNameComponentDelimiter"] = NSPersonNameComponentDelimiter;
	p = (void*) &NSPersonNameComponentGivenName;
	if (p != NULL) context[@"NSPersonNameComponentGivenName"] = NSPersonNameComponentGivenName;
	p = (void*) &NSPersonNameComponentSuffix;
	if (p != NULL) context[@"NSPersonNameComponentSuffix"] = NSPersonNameComponentSuffix;
	p = (void*) &NSPersonNameComponentFamilyName;
	if (p != NULL) context[@"NSPersonNameComponentFamilyName"] = NSPersonNameComponentFamilyName;
	p = (void*) &NSPersonNameComponentMiddleName;
	if (p != NULL) context[@"NSPersonNameComponentMiddleName"] = NSPersonNameComponentMiddleName;
	p = (void*) &NSPersonNameComponentKey;
	if (p != NULL) context[@"NSPersonNameComponentKey"] = NSPersonNameComponentKey;
	p = (void*) &NSPersonNameComponentPrefix;
	if (p != NULL) context[@"NSPersonNameComponentPrefix"] = NSPersonNameComponentPrefix;
	p = (void*) &NSPersonNameComponentNickname;
	if (p != NULL) context[@"NSPersonNameComponentNickname"] = NSPersonNameComponentNickname;
}
void load_Foundation_NSPersonNameComponentsFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
