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
	context[@"UISplitViewControllerDisplayModeAutomatic"] = @0;
	context[@"UISplitViewControllerDisplayModeSecondaryOnly"] = @1;
	context[@"UISplitViewControllerDisplayModeOneBesideSecondary"] = @2;
	context[@"UISplitViewControllerDisplayModeOneOverSecondary"] = @3;
	context[@"UISplitViewControllerDisplayModeTwoBesideSecondary"] = @4;
	context[@"UISplitViewControllerDisplayModeTwoOverSecondary"] = @5;
	context[@"UISplitViewControllerDisplayModeTwoDisplaceSecondary"] = @6;
	context[@"UISplitViewControllerDisplayModePrimaryHidden"] = @1;
	context[@"UISplitViewControllerDisplayModeAllVisible"] = @2;
	context[@"UISplitViewControllerDisplayModePrimaryOverlay"] = @3;

	context[@"UISplitViewControllerPrimaryEdgeLeading"] = @0;
	context[@"UISplitViewControllerPrimaryEdgeTrailing"] = @1;

	context[@"UISplitViewControllerBackgroundStyleNone"] = @0;
	context[@"UISplitViewControllerBackgroundStyleSidebar"] = @1;

	context[@"UISplitViewControllerStyleUnspecified"] = @0;
	context[@"UISplitViewControllerStyleDoubleColumn"] = @1;
	context[@"UISplitViewControllerStyleTripleColumn"] = @2;

	context[@"UISplitViewControllerColumnPrimary"] = @0;
	context[@"UISplitViewControllerColumnSupplementary"] = @1;
	context[@"UISplitViewControllerColumnSecondary"] = @2;
	context[@"UISplitViewControllerColumnCompact"] = @3;

	context[@"UISplitViewControllerSplitBehaviorAutomatic"] = @0;
	context[@"UISplitViewControllerSplitBehaviorTile"] = @1;
	context[@"UISplitViewControllerSplitBehaviorOverlay"] = @2;
	context[@"UISplitViewControllerSplitBehaviorDisplace"] = @3;

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
