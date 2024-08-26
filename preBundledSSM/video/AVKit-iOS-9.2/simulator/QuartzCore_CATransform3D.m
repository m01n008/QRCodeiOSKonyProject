#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (QuartzCore_CATransform3D)
+(JSValue*) valueWithCATransform3D: (CATransform3D) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"m11": @(s.m11),
		@"m12": @(s.m12),
		@"m13": @(s.m13),
		@"m14": @(s.m14),
		@"m21": @(s.m21),
		@"m22": @(s.m22),
		@"m23": @(s.m23),
		@"m24": @(s.m24),
		@"m31": @(s.m31),
		@"m32": @(s.m32),
		@"m33": @(s.m33),
		@"m34": @(s.m34),
		@"m41": @(s.m41),
		@"m42": @(s.m42),
		@"m43": @(s.m43),
		@"m44": @(s.m44),
	} inContext: context];
}
-(CATransform3D) toCATransform3D {
	return (CATransform3D) {
		(CGFloat) [self[@"m11"] toDouble],
		(CGFloat) [self[@"m12"] toDouble],
		(CGFloat) [self[@"m13"] toDouble],
		(CGFloat) [self[@"m14"] toDouble],
		(CGFloat) [self[@"m21"] toDouble],
		(CGFloat) [self[@"m22"] toDouble],
		(CGFloat) [self[@"m23"] toDouble],
		(CGFloat) [self[@"m24"] toDouble],
		(CGFloat) [self[@"m31"] toDouble],
		(CGFloat) [self[@"m32"] toDouble],
		(CGFloat) [self[@"m33"] toDouble],
		(CGFloat) [self[@"m34"] toDouble],
		(CGFloat) [self[@"m41"] toDouble],
		(CGFloat) [self[@"m42"] toDouble],
		(CGFloat) [self[@"m43"] toDouble],
		(CGFloat) [self[@"m44"] toDouble],
	};
}
@end
static void addProtocols()
{
	class_addProtocol([NSValue class], @protocol(NSValueCATransform3DAdditionsCategoryInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueCATransform3DAdditionsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &CATransform3DIdentity;
	if (p != NULL) context[@"CATransform3DIdentity"] = [JSValue valueWithCATransform3D: CATransform3DIdentity inContext: context];
}
void load_QuartzCore_CATransform3D_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
