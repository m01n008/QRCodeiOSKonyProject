#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIScrollView (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIScrollView class], @protocol(UIScrollViewInstanceExports));
	class_addProtocol([UIScrollView class], @protocol(UIScrollViewClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIScrollViewIndicatorStyleDefault"] = @0L;
	context[@"UIScrollViewIndicatorStyleBlack"] = @1L;
	context[@"UIScrollViewIndicatorStyleWhite"] = @2L;

	context[@"UIScrollViewKeyboardDismissModeNone"] = @0L;
	context[@"UIScrollViewKeyboardDismissModeOnDrag"] = @1L;
	context[@"UIScrollViewKeyboardDismissModeInteractive"] = @2L;

	context[@"UIScrollViewIndexDisplayModeAutomatic"] = @0L;
	context[@"UIScrollViewIndexDisplayModeAlwaysHidden"] = @1L;

	context[@"UIScrollViewContentInsetAdjustmentAutomatic"] = @0L;
	context[@"UIScrollViewContentInsetAdjustmentScrollableAxes"] = @1L;
	context[@"UIScrollViewContentInsetAdjustmentNever"] = @2L;
	context[@"UIScrollViewContentInsetAdjustmentAlways"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIScrollViewDecelerationRateFast;
	if (p != NULL) context[@"UIScrollViewDecelerationRateFast"] = @(UIScrollViewDecelerationRateFast);
	p = (void*) &UIScrollViewDecelerationRateNormal;
	if (p != NULL) context[@"UIScrollViewDecelerationRateNormal"] = @(UIScrollViewDecelerationRateNormal);
}
void UIKit_UIScrollViewProtocols()
{
	(void)@protocol(UIScrollViewDelegate);
}
void load_UIKit_UIScrollView_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
