#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreGraphics_CGAffineTransform)
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
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &CGAffineTransformIdentity;
	if (p != NULL) context[@"CGAffineTransformIdentity"] = [JSValue valueWithCGAffineTransform: CGAffineTransformIdentity inContext: context];
}
void load_CoreGraphics_CGAffineTransform_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
