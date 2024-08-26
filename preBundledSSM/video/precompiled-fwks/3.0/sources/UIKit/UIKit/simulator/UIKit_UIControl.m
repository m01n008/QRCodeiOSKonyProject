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
	context[@"UIControlEventTouchDown"] = @1UL;
	context[@"UIControlEventTouchDownRepeat"] = @2UL;
	context[@"UIControlEventTouchDragInside"] = @4UL;
	context[@"UIControlEventTouchDragOutside"] = @8UL;
	context[@"UIControlEventTouchDragEnter"] = @16UL;
	context[@"UIControlEventTouchDragExit"] = @32UL;
	context[@"UIControlEventTouchUpInside"] = @64UL;
	context[@"UIControlEventTouchUpOutside"] = @128UL;
	context[@"UIControlEventTouchCancel"] = @256UL;
	context[@"UIControlEventValueChanged"] = @4096UL;
	context[@"UIControlEventPrimaryActionTriggered"] = @8192UL;
	context[@"UIControlEventMenuActionTriggered"] = @16384UL;
	context[@"UIControlEventEditingDidBegin"] = @65536UL;
	context[@"UIControlEventEditingChanged"] = @131072UL;
	context[@"UIControlEventEditingDidEnd"] = @262144UL;
	context[@"UIControlEventEditingDidEndOnExit"] = @524288UL;
	context[@"UIControlEventAllTouchEvents"] = @4095UL;
	context[@"UIControlEventAllEditingEvents"] = @983040UL;
	context[@"UIControlEventApplicationReserved"] = @251658240UL;
	context[@"UIControlEventSystemReserved"] = @4026531840UL;
	context[@"UIControlEventAllEvents"] = @4294967295UL;

	context[@"UIControlContentVerticalAlignmentCenter"] = @0L;
	context[@"UIControlContentVerticalAlignmentTop"] = @1L;
	context[@"UIControlContentVerticalAlignmentBottom"] = @2L;
	context[@"UIControlContentVerticalAlignmentFill"] = @3L;

	context[@"UIControlContentHorizontalAlignmentCenter"] = @0L;
	context[@"UIControlContentHorizontalAlignmentLeft"] = @1L;
	context[@"UIControlContentHorizontalAlignmentRight"] = @2L;
	context[@"UIControlContentHorizontalAlignmentFill"] = @3L;
	context[@"UIControlContentHorizontalAlignmentLeading"] = @4L;
	context[@"UIControlContentHorizontalAlignmentTrailing"] = @5L;

	context[@"UIControlStateNormal"] = @0UL;
	context[@"UIControlStateHighlighted"] = @1UL;
	context[@"UIControlStateDisabled"] = @2UL;
	context[@"UIControlStateSelected"] = @4UL;
	context[@"UIControlStateFocused"] = @8UL;
	context[@"UIControlStateApplication"] = @16711680UL;
	context[@"UIControlStateReserved"] = @4278190080UL;

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
