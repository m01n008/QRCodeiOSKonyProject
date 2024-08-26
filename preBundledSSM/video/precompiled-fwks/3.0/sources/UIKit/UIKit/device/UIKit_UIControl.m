#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIControl (UIControlAnonCategoryExports)
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
@implementation UIControl (Exports)
-(id) jsinitWithFrame: (CGRect) frame primaryAction: (UIAction *) primaryAction 
{
	id resultVal__;
	resultVal__ = [[self initWithFrame: frame primaryAction: primaryAction ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(void) jsremoveTarget: (id) target action: (NSString *) action forControlEvents: (UIControlEvents) controlEvents 
{
	SEL action_ = NSSelectorFromString(action);
	[self removeTarget: target action: action_ forControlEvents: controlEvents ];
}
-(void) jssendAction: (NSString *) action to: (id) target forEvent: (UIEvent *) event 
{
	SEL action_ = NSSelectorFromString(action);
	[self sendAction: action_ to: target forEvent: event ];
}
-(void) jsaddTarget: (id) target action: (NSString *) action forControlEvents: (UIControlEvents) controlEvents 
{
	SEL action_ = NSSelectorFromString(action);
	[self addTarget: target action: action_ forControlEvents: controlEvents ];
}
-(void) jsenumerateEventHandlers: (JSValue *) iterator 
{
	void (^ iterator_)(UIAction * , id , SEL , UIControlEvents, BOOL * ) = nil;
	if (!iterator.isUndefined) {
		iterator_ = ^void(UIAction * arg0, id arg1, SEL arg2, UIControlEvents arg3, BOOL * arg4) {
			JSContext* __jsContext = iterator.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: NSStringFromSelector(arg2) inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg3) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg4] inContext: __jsContext]];
			callJSFunction(__jsContext, iterator, self, parameters);
		};
	}
	[self enumerateEventHandlers: iterator_ ];
}
-(id) jsinitWithFrame: (CGRect) frame 
{
	id resultVal__;
	resultVal__ = [[self initWithFrame: frame ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIControl class], @protocol(UIControlAnonCategoryInstanceExports));
	class_addProtocol([UIControl class], @protocol(UIControlAnonCategoryClassExports));
	class_addProtocol([UIControl class], @protocol(UIControlInstanceExports));
	class_addProtocol([UIControl class], @protocol(UIControlClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIControlEventTouchDown"] = @1U;
	context[@"UIControlEventTouchDownRepeat"] = @2U;
	context[@"UIControlEventTouchDragInside"] = @4U;
	context[@"UIControlEventTouchDragOutside"] = @8U;
	context[@"UIControlEventTouchDragEnter"] = @16U;
	context[@"UIControlEventTouchDragExit"] = @32U;
	context[@"UIControlEventTouchUpInside"] = @64U;
	context[@"UIControlEventTouchUpOutside"] = @128U;
	context[@"UIControlEventTouchCancel"] = @256U;
	context[@"UIControlEventValueChanged"] = @4096U;
	context[@"UIControlEventPrimaryActionTriggered"] = @8192U;
	context[@"UIControlEventMenuActionTriggered"] = @16384U;
	context[@"UIControlEventEditingDidBegin"] = @65536U;
	context[@"UIControlEventEditingChanged"] = @131072U;
	context[@"UIControlEventEditingDidEnd"] = @262144U;
	context[@"UIControlEventEditingDidEndOnExit"] = @524288U;
	context[@"UIControlEventAllTouchEvents"] = @4095U;
	context[@"UIControlEventAllEditingEvents"] = @983040U;
	context[@"UIControlEventApplicationReserved"] = @251658240U;
	context[@"UIControlEventSystemReserved"] = @-268435456U;
	context[@"UIControlEventAllEvents"] = @-1U;

	context[@"UIControlContentVerticalAlignmentCenter"] = @0;
	context[@"UIControlContentVerticalAlignmentTop"] = @1;
	context[@"UIControlContentVerticalAlignmentBottom"] = @2;
	context[@"UIControlContentVerticalAlignmentFill"] = @3;

	context[@"UIControlContentHorizontalAlignmentCenter"] = @0;
	context[@"UIControlContentHorizontalAlignmentLeft"] = @1;
	context[@"UIControlContentHorizontalAlignmentRight"] = @2;
	context[@"UIControlContentHorizontalAlignmentFill"] = @3;
	context[@"UIControlContentHorizontalAlignmentLeading"] = @4;
	context[@"UIControlContentHorizontalAlignmentTrailing"] = @5;

	context[@"UIControlStateNormal"] = @0U;
	context[@"UIControlStateHighlighted"] = @1U;
	context[@"UIControlStateDisabled"] = @2U;
	context[@"UIControlStateSelected"] = @4U;
	context[@"UIControlStateFocused"] = @8U;
	context[@"UIControlStateApplication"] = @16711680U;
	context[@"UIControlStateReserved"] = @-16777216U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIControl_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
