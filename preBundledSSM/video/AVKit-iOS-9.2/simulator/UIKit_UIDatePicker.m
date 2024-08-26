#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIDatePicker (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIDatePicker class], @protocol(UIDatePickerInstanceExports));
	class_addProtocol([UIDatePicker class], @protocol(UIDatePickerClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIDatePickerModeTime"] = @0;
	context[@"UIDatePickerModeDate"] = @1;
	context[@"UIDatePickerModeDateAndTime"] = @2;
	context[@"UIDatePickerModeCountDownTimer"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIDatePicker_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
