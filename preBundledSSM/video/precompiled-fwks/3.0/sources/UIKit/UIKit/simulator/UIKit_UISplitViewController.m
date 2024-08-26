#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UISplitViewController (Exports)
-(id) jsinitWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil 
{
	id resultVal__;
	resultVal__ = [[self initWithNibName: nibNameOrNil bundle: nibBundleOrNil ] autorelease];
	return resultVal__;
}
-(id) jsinitWithStyle: (UISplitViewControllerStyle) style 
{
	id resultVal__;
	resultVal__ = [[self initWithStyle: style ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UISplitViewController class], @protocol(UISplitViewControllerInstanceExports));
	class_addProtocol([UISplitViewController class], @protocol(UISplitViewControllerClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUISplitViewControllerCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUISplitViewControllerCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UISplitViewControllerDisplayModeAutomatic"] = @0L;
	context[@"UISplitViewControllerDisplayModeSecondaryOnly"] = @1L;
	context[@"UISplitViewControllerDisplayModeOneBesideSecondary"] = @2L;
	context[@"UISplitViewControllerDisplayModeOneOverSecondary"] = @3L;
	context[@"UISplitViewControllerDisplayModeTwoBesideSecondary"] = @4L;
	context[@"UISplitViewControllerDisplayModeTwoOverSecondary"] = @5L;
	context[@"UISplitViewControllerDisplayModeTwoDisplaceSecondary"] = @6L;
	context[@"UISplitViewControllerDisplayModePrimaryHidden"] = @1L;
	context[@"UISplitViewControllerDisplayModeAllVisible"] = @2L;
	context[@"UISplitViewControllerDisplayModePrimaryOverlay"] = @3L;

	context[@"UISplitViewControllerPrimaryEdgeLeading"] = @0L;
	context[@"UISplitViewControllerPrimaryEdgeTrailing"] = @1L;

	context[@"UISplitViewControllerBackgroundStyleNone"] = @0L;
	context[@"UISplitViewControllerBackgroundStyleSidebar"] = @1L;

	context[@"UISplitViewControllerStyleUnspecified"] = @0L;
	context[@"UISplitViewControllerStyleDoubleColumn"] = @1L;
	context[@"UISplitViewControllerStyleTripleColumn"] = @2L;

	context[@"UISplitViewControllerColumnPrimary"] = @0L;
	context[@"UISplitViewControllerColumnSupplementary"] = @1L;
	context[@"UISplitViewControllerColumnSecondary"] = @2L;
	context[@"UISplitViewControllerColumnCompact"] = @3L;

	context[@"UISplitViewControllerSplitBehaviorAutomatic"] = @0L;
	context[@"UISplitViewControllerSplitBehaviorTile"] = @1L;
	context[@"UISplitViewControllerSplitBehaviorOverlay"] = @2L;
	context[@"UISplitViewControllerSplitBehaviorDisplace"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UISplitViewControllerAutomaticDimension;
	if (p != NULL) context[@"UISplitViewControllerAutomaticDimension"] = @(UISplitViewControllerAutomaticDimension);
}
void UIKit_UISplitViewControllerProtocols()
{
	(void)@protocol(UISplitViewControllerDelegate);
}
void load_UIKit_UISplitViewController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
