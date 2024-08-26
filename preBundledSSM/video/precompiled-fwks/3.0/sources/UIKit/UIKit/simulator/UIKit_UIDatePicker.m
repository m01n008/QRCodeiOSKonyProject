#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIDatePicker (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIDatePicker class], @protocol(UIDatePickerInstanceExports));
	class_addProtocol([UIDatePicker class], @protocol(UIDatePickerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIDatePickerModeTime"] = @0L;
	context[@"UIDatePickerModeDate"] = @1L;
	context[@"UIDatePickerModeDateAndTime"] = @2L;
	context[@"UIDatePickerModeCountDownTimer"] = @3L;

	context[@"UIDatePickerStyleAutomatic"] = @0L;
	context[@"UIDatePickerStyleWheels"] = @1L;
	context[@"UIDatePickerStyleCompact"] = @2L;
	context[@"UIDatePickerStyleInline"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIDatePicker_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
