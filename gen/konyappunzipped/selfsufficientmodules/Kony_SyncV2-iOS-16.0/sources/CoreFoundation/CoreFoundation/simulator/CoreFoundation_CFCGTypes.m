#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreFoundation_CFCGTypes)
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
+(JSValue*) valueWithCGAffineTransform: (CGAffineTransform) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"a": @(s.a),
		@"b": @(s.b),
		@"c": @(s.c),
		@"d": @(s.d),
		@"tx": @(s.tx),
		@"ty": @(s.ty),
	} inContext: context];
}
-(CGAffineTransform) toCGAffineTransform {
	return (CGAffineTransform) {
		(CGFloat) [self[@"a"] toDouble],
		(CGFloat) [self[@"b"] toDouble],
		(CGFloat) [self[@"c"] toDouble],
		(CGFloat) [self[@"d"] toDouble],
		(CGFloat) [self[@"tx"] toDouble],
		(CGFloat) [self[@"ty"] toDouble],
	};
}
+(JSValue*) valueWithCGAffineTransformComponents: (CGAffineTransformComponents) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"width": @(s.scale.width),
		@"height": @(s.scale.height),
		@"horizontalShear": @(s.horizontalShear),
		@"rotation": @(s.rotation),
		@"dx": @(s.translation.dx),
		@"dy": @(s.translation.dy),
	} inContext: context];
}
-(CGAffineTransformComponents) toCGAffineTransformComponents {
	return (CGAffineTransformComponents) {
		[self[@"scale"] toSize],
		(CGFloat) [self[@"horizontalShear"] toDouble],
		(CGFloat) [self[@"rotation"] toDouble],
		[self[@"translation"] toCGVector],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
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
}
void load_CoreFoundation_CFCGTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
