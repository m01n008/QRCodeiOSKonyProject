#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIFontPickerViewController (Exports)
-(id) jsinitWithConfiguration: (UIFontPickerViewControllerConfiguration *) configuration 
{
	id resultVal__;
	resultVal__ = [[self initWithConfiguration: configuration ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIFontPickerViewController class], @protocol(UIFontPickerViewControllerInstanceExports));
	class_addProtocol([UIFontPickerViewController class], @protocol(UIFontPickerViewControllerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_UIFontPickerViewControllerProtocols()
{
	(void)@protocol(UIFontPickerViewControllerDelegate);
}
void load_UIKit_UIFontPickerViewController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
