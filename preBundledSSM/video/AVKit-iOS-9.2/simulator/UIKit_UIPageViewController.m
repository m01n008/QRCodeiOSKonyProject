#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIPageViewController (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTransitionStyle: (UIPageViewControllerTransitionStyle) style navigationOrientation: (UIPageViewControllerNavigationOrientation) navigationOrientation options: (NSDictionary *) options 
{
	id resultVal__;
	resultVal__ = [[self initWithTransitionStyle: style navigationOrientation: navigationOrientation options: options ] autorelease];
	return resultVal__;
}
-(void) jssetViewControllers: (NSArray *) viewControllers direction: (UIPageViewControllerNavigationDirection) direction animated: (BOOL) animated completion: (JSValue *) completion 
{
	void (^ completion_)(BOOL) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self setViewControllers: viewControllers direction: direction animated: animated completion: completion_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([UIPageViewController class], @protocol(UIPageViewControllerInstanceExports));
	class_addProtocol([UIPageViewController class], @protocol(UIPageViewControllerClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIPageViewControllerNavigationOrientationHorizontal"] = @0;
	context[@"UIPageViewControllerNavigationOrientationVertical"] = @1;

	context[@"UIPageViewControllerSpineLocationNone"] = @0;
	context[@"UIPageViewControllerSpineLocationMin"] = @1;
	context[@"UIPageViewControllerSpineLocationMid"] = @2;
	context[@"UIPageViewControllerSpineLocationMax"] = @3;

	context[@"UIPageViewControllerNavigationDirectionForward"] = @0;
	context[@"UIPageViewControllerNavigationDirectionReverse"] = @1;

	context[@"UIPageViewControllerTransitionStylePageCurl"] = @0;
	context[@"UIPageViewControllerTransitionStyleScroll"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIPageViewControllerOptionInterPageSpacingKey;
	if (p != NULL) context[@"UIPageViewControllerOptionInterPageSpacingKey"] = UIPageViewControllerOptionInterPageSpacingKey;
	p = (void*) &UIPageViewControllerOptionSpineLocationKey;
	if (p != NULL) context[@"UIPageViewControllerOptionSpineLocationKey"] = UIPageViewControllerOptionSpineLocationKey;
}
void UIKit_UIPageViewControllerProtocols()
{
	(void)@protocol(UIPageViewControllerDataSource);
	(void)@protocol(UIPageViewControllerDelegate);
}
void load_UIKit_UIPageViewController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
