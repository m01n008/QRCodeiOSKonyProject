#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (UIKit_UIGeometry)
+(JSValue*) valueWithUIEdgeInsets: (UIEdgeInsets) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"top": @(s.top),
		@"left": @(s.left),
		@"bottom": @(s.bottom),
		@"right": @(s.right),
	} inContext: context];
}
-(UIEdgeInsets) toUIEdgeInsets {
	return (UIEdgeInsets) {
		(CGFloat) [self[@"top"] toDouble],
		(CGFloat) [self[@"left"] toDouble],
		(CGFloat) [self[@"bottom"] toDouble],
		(CGFloat) [self[@"right"] toDouble],
	};
}
+(JSValue*) valueWithUIOffset: (UIOffset) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"horizontal": @(s.horizontal),
		@"vertical": @(s.vertical),
	} inContext: context];
}
-(UIOffset) toUIOffset {
	return (UIOffset) {
		(CGFloat) [self[@"horizontal"] toDouble],
		(CGFloat) [self[@"vertical"] toDouble],
	};
}
@end
static void addProtocols()
{
	class_addProtocol([NSCoder class], @protocol(NSCoderUIGeometryKeyedCodingCategoryInstanceExports));
	class_addProtocol([NSCoder class], @protocol(NSCoderUIGeometryKeyedCodingCategoryClassExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueUIGeometryExtensionsCategoryInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueUIGeometryExtensionsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIRectEdgeNone"] = @0U;
	context[@"UIRectEdgeTop"] = @1U;
	context[@"UIRectEdgeLeft"] = @2U;
	context[@"UIRectEdgeBottom"] = @4U;
	context[@"UIRectEdgeRight"] = @8U;
	context[@"UIRectEdgeAll"] = @15U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIEdgeInsetsZero;
	if (p != NULL) context[@"UIEdgeInsetsZero"] = [JSValue valueWithUIEdgeInsets: UIEdgeInsetsZero inContext: context];
	p = (void*) &UIOffsetZero;
	if (p != NULL) context[@"UIOffsetZero"] = [JSValue valueWithUIOffset: UIOffsetZero inContext: context];
}
void load_UIKit_UIGeometry_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
