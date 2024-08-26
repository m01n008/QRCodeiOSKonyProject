#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIPreviewAction (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
+(id) jsactionWithTitle: (NSString *) title style: (UIPreviewActionStyle) style handler: (JSValue *) handler 
{
	void (^ handler_)(UIPreviewAction * , UIViewController * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(UIPreviewAction * arg0, UIViewController * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self actionWithTitle: title style: style handler: handler_ ];
	return resultVal__;
}
-(JSValue *) getJsHandler
{
	return [JSValue valueWithObject: self.handler inContext: [JSContext currentContext]];
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation UIViewController (UIViewControllerNSExtensionAdditionsCategoryExports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation UIViewController (UIViewControllerUIContainerViewControllerProtectedMethodsCategoryExports)
-(void) jstransitionFromViewController: (UIViewController *) fromViewController toViewController: (UIViewController *) toViewController duration: (NSTimeInterval) duration options: (UIViewAnimationOptions) options animations: (JSValue *) animations completion: (JSValue *) completion 
{
	void (^ animations_)(void) = nil;
	if (!animations.isUndefined) {
		animations_ = ^void() {
			JSContext* __jsContext = animations.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, animations, self, parameters);
		};
	}
	void (^ completion_)(BOOL) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self transitionFromViewController: fromViewController toViewController: toViewController duration: duration options: options animations: animations_ completion: completion_ ];
}
@end
@implementation UIPreviewActionGroup (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation UIViewController (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsinitWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil 
{
	id resultVal__;
	resultVal__ = [[self initWithNibName: nibNameOrNil bundle: nibBundleOrNil ] autorelease];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(void) jsdismissViewControllerAnimated: (BOOL) flag completion: (JSValue *) completion 
{
	void (^ completion_)(void) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void() {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self dismissViewControllerAnimated: flag completion: completion_ ];
}
-(void) jspresentViewController: (UIViewController *) viewControllerToPresent animated: (BOOL) flag completion: (JSValue *) completion 
{
	void (^ completion_)(void) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void() {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self presentViewController: viewControllerToPresent animated: flag completion: completion_ ];
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(UIViewController *) jsviewControllerForUnwindSegueAction: (NSString *) action fromViewController: (UIViewController *) fromViewController withSender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	UIViewController * resultVal__;
	resultVal__ = [self viewControllerForUnwindSegueAction: action_ fromViewController: fromViewController withSender: sender ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jscanPerformUnwindSegueAction: (NSString *) action fromViewController: (UIViewController *) fromViewController withSender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	BOOL resultVal__;
	resultVal__ = [self canPerformUnwindSegueAction: action_ fromViewController: fromViewController withSender: sender ];
	return resultVal__;
}
-(BOOL) jscanPerformUnwindSegueAction: (NSString *) action fromViewController: (UIViewController *) fromViewController sender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	BOOL resultVal__;
	resultVal__ = [self canPerformUnwindSegueAction: action_ fromViewController: fromViewController sender: sender ];
	return resultVal__;
}
-(UIViewController *) jstargetViewControllerForAction: (NSString *) action sender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	UIViewController * resultVal__;
	resultVal__ = [self targetViewControllerForAction: action_ sender: sender ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation UIViewController (UIViewControllerUIStateRestorationCategoryExports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsRestorationClass
{
	return [JSValue valueWithObject: self.restorationClass inContext: [JSContext currentContext]];
}
-(void) setJsRestorationClass: (JSValue *) value
{
	self.restorationClass = objc_getClass([[value[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
}
-(JSValue *) getJsObjectRestorationClass
{
	return [JSValue valueWithObject: self.objectRestorationClass inContext: [JSContext currentContext]];
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerPreviewingRegistrationCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerPreviewingRegistrationCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerRotationCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerRotationCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIHomeIndicatorAutoHiddenCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIHomeIndicatorAutoHiddenCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerAnonCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerAnonCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIScreenEdgesDeferringSystemGesturesCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIScreenEdgesDeferringSystemGesturesCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUISearchDisplayControllerSupportCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUISearchDisplayControllerSupportCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIPointerLockSupportCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIPointerLockSupportCategoryClassExports));
	class_addProtocol([UIPreviewAction class], @protocol(UIPreviewActionInstanceExports));
	class_addProtocol([UIPreviewAction class], @protocol(UIPreviewActionClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIPresentationControllerCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIPresentationControllerCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUILayoutSupportCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUILayoutSupportCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerNSExtensionAdditionsCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerNSExtensionAdditionsCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIContainerViewControllerProtectedMethodsCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIContainerViewControllerProtectedMethodsCategoryClassExports));
	class_addProtocol([UIPreviewActionGroup class], @protocol(UIPreviewActionGroupInstanceExports));
	class_addProtocol([UIPreviewActionGroup class], @protocol(UIPreviewActionGroupClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerTransitioningCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerTransitioningCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIKeyCommandCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIKeyCommandCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIPerformsActionsCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIPerformsActionsCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerEditingCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIViewControllerEditingCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIConstraintBasedLayoutCoreMethodsCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIConstraintBasedLayoutCoreMethodsCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIContainerViewControllerCallbacksCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIContainerViewControllerCallbacksCategoryClassExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIStateRestorationCategoryInstanceExports));
	class_addProtocol([UIViewController class], @protocol(UIViewControllerUIStateRestorationCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIModalTransitionStyleCoverVertical"] = @0L;
	context[@"UIModalTransitionStyleFlipHorizontal"] = @1L;
	context[@"UIModalTransitionStyleCrossDissolve"] = @2L;
	context[@"UIModalTransitionStylePartialCurl"] = @3L;

	context[@"UIModalPresentationFullScreen"] = @0L;
	context[@"UIModalPresentationPageSheet"] = @1L;
	context[@"UIModalPresentationFormSheet"] = @2L;
	context[@"UIModalPresentationCurrentContext"] = @3L;
	context[@"UIModalPresentationCustom"] = @4L;
	context[@"UIModalPresentationOverFullScreen"] = @5L;
	context[@"UIModalPresentationOverCurrentContext"] = @6L;
	context[@"UIModalPresentationPopover"] = @7L;
	context[@"UIModalPresentationNone"] = @-1L;
	context[@"UIModalPresentationAutomatic"] = @-2L;

	context[@"UIPreviewActionStyleDefault"] = @0L;
	context[@"UIPreviewActionStyleSelected"] = @1L;
	context[@"UIPreviewActionStyleDestructive"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIViewControllerHierarchyInconsistencyException;
	if (p != NULL) context[@"UIViewControllerHierarchyInconsistencyException"] = UIViewControllerHierarchyInconsistencyException;
	p = (void*) &UIViewControllerShowDetailTargetDidChangeNotification;
	if (p != NULL) context[@"UIViewControllerShowDetailTargetDidChangeNotification"] = UIViewControllerShowDetailTargetDidChangeNotification;
}
void UIKit_UIViewControllerProtocols()
{
	(void)@protocol(UIPreviewActionItem);
	(void)@protocol(UIContentContainer);
	(void)@protocol(UIViewControllerPreviewing);
	(void)@protocol(UIViewControllerPreviewingDelegate);
}
void load_UIKit_UIViewController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
