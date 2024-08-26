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
	class_addProtocol([NSRelativeDateTimeFormatter class], @protocol(NSRelativeDateTimeFormatterInstanceExports));
	class_addProtocol([NSRelativeDateTimeFormatter class], @protocol(NSRelativeDateTimeFormatterClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSRelativeDateTimeFormatterStyleNumeric"] = @0L;
	context[@"NSRelativeDateTimeFormatterStyleNamed"] = @1L;


	context[@"NSRelativeDateTimeFormatterUnitsStyleFull"] = @0L;
	context[@"NSRelativeDateTimeFormatterUnitsStyleSpellOut"] = @1L;
	context[@"NSRelativeDateTimeFormatterUnitsStyleShort"] = @2L;
	context[@"NSRelativeDateTimeFormatterUnitsStyleAbbreviated"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSRelativeDateTimeFormatter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
