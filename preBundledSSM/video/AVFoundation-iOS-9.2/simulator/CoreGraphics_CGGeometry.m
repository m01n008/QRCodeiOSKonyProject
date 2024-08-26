#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreGraphics_CGGeometry)
+(JSValue*) valueWithCGVector: (CGVector) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"dx": @(s.dx),
		@"dy": @(s.dy),
	} inContext: context];
}
-(CGVector) toCGVector {
	return (CGVector) {
		(CGFloat) [self[@"dx"] toDouble],
		(CGFloat) [self[@"dy"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"CGRectMinXEdge"] = @0U;
	context[@"CGRectMinYEdge"] = @1U;
	context[@"CGRectMaxXEdge"] = @2U;
	context[@"CGRectMaxYEdge"] = @3U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &CGPointZero;
	if (p != NULL) context[@"CGPointZero"] = [JSValue valueWithPoint: CGPointZero inContext: context];
	p = (void*) &CGRectZero;
	if (p != NULL) context[@"CGRectZero"] = [JSValue valueWithRect: CGRectZero inContext: context];
	p = (void*) &CGSizeZero;
	if (p != NULL) context[@"CGSizeZero"] = [JSValue valueWithSize: CGSizeZero inContext: context];
	p = (void*) &CGRectNull;
	if (p != NULL) context[@"CGRectNull"] = [JSValue valueWithRect: CGRectNull inContext: context];
	p = (void*) &CGRectInfinite;
	if (p != NULL) context[@"CGRectInfinite"] = [JSValue valueWithRect: CGRectInfinite inContext: context];
}
void load_CoreGraphics_CGGeometry_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
