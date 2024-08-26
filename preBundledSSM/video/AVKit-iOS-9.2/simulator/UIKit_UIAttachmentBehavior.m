#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (UIKit_UIAttachmentBehavior)
+(JSValue*) valueWithUIFloatRange: (UIFloatRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"minimum": @(s.minimum),
		@"maximum": @(s.maximum),
	} inContext: context];
}
-(UIFloatRange) toUIFloatRange {
	return (UIFloatRange) {
		(CGFloat) [self[@"minimum"] toDouble],
		(CGFloat) [self[@"maximum"] toDouble],
	};
}
@end
@implementation UIAttachmentBehavior (Exports)
-(id) jsinitWithItem: (id) item attachedToAnchor: (CGPoint) point 
{
	id resultVal__;
	resultVal__ = [[self initWithItem: item attachedToAnchor: point ] autorelease];
	return resultVal__;
}
-(id) jsinitWithItem: (id) item1 offsetFromCenter: (UIOffset) offset1 attachedToItem: (id) item2 offsetFromCenter: (UIOffset) offset2 
{
	id resultVal__;
	resultVal__ = [[self initWithItem: item1 offsetFromCenter: offset1 attachedToItem: item2 offsetFromCenter: offset2 ] autorelease];
	return resultVal__;
}
-(id) jsinitWithItem: (id) item1 attachedToItem: (id) item2 
{
	id resultVal__;
	resultVal__ = [[self initWithItem: item1 attachedToItem: item2 ] autorelease];
	return resultVal__;
}
-(id) jsinitWithItem: (id) item offsetFromCenter: (UIOffset) offset attachedToAnchor: (CGPoint) point 
{
	id resultVal__;
	resultVal__ = [[self initWithItem: item offsetFromCenter: offset attachedToAnchor: point ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIAttachmentBehavior class], @protocol(UIAttachmentBehaviorInstanceExports));
	class_addProtocol([UIAttachmentBehavior class], @protocol(UIAttachmentBehaviorClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIAttachmentBehaviorTypeItems"] = @0;
	context[@"UIAttachmentBehaviorTypeAnchor"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIFloatRangeZero;
	if (p != NULL) context[@"UIFloatRangeZero"] = [JSValue valueWithUIFloatRange: UIFloatRangeZero inContext: context];
	p = (void*) &UIFloatRangeInfinite;
	if (p != NULL) context[@"UIFloatRangeInfinite"] = [JSValue valueWithUIFloatRange: UIFloatRangeInfinite inContext: context];
}
void load_UIKit_UIAttachmentBehavior_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
