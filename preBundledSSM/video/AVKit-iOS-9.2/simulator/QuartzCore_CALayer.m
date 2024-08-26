#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation CALayer (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithLayer: (id) layer 
{
	id resultVal__;
	resultVal__ = [[self initWithLayer: layer ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([CALayer class], @protocol(CALayerInstanceExports));
	class_addProtocol([CALayer class], @protocol(CALayerClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectCALayerDelegateCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectCALayerDelegateCategoryClassExports));
	class_addProtocol([NSNull class], @protocol(NSNullCAActionAdditionsCategoryInstanceExports));
	class_addProtocol([NSNull class], @protocol(NSNullCAActionAdditionsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCALayerLeftEdge"] = @1U;
	context[@"kCALayerRightEdge"] = @2U;
	context[@"kCALayerBottomEdge"] = @4U;
	context[@"kCALayerTopEdge"] = @8U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCAGravityResizeAspect;
	if (p != NULL) context[@"kCAGravityResizeAspect"] = kCAGravityResizeAspect;
	p = (void*) &kCAGravityTopLeft;
	if (p != NULL) context[@"kCAGravityTopLeft"] = kCAGravityTopLeft;
	p = (void*) &kCAGravityResizeAspectFill;
	if (p != NULL) context[@"kCAGravityResizeAspectFill"] = kCAGravityResizeAspectFill;
	p = (void*) &kCAGravityLeft;
	if (p != NULL) context[@"kCAGravityLeft"] = kCAGravityLeft;
	p = (void*) &kCAGravityTop;
	if (p != NULL) context[@"kCAGravityTop"] = kCAGravityTop;
	p = (void*) &kCATransition;
	if (p != NULL) context[@"kCATransition"] = kCATransition;
	p = (void*) &kCAFilterLinear;
	if (p != NULL) context[@"kCAFilterLinear"] = kCAFilterLinear;
	p = (void*) &kCAOnOrderOut;
	if (p != NULL) context[@"kCAOnOrderOut"] = kCAOnOrderOut;
	p = (void*) &kCAGravityBottom;
	if (p != NULL) context[@"kCAGravityBottom"] = kCAGravityBottom;
	p = (void*) &kCAFilterNearest;
	if (p != NULL) context[@"kCAFilterNearest"] = kCAFilterNearest;
	p = (void*) &kCAGravityBottomRight;
	if (p != NULL) context[@"kCAGravityBottomRight"] = kCAGravityBottomRight;
	p = (void*) &kCAFilterTrilinear;
	if (p != NULL) context[@"kCAFilterTrilinear"] = kCAFilterTrilinear;
	p = (void*) &kCAGravityResize;
	if (p != NULL) context[@"kCAGravityResize"] = kCAGravityResize;
	p = (void*) &kCAGravityCenter;
	if (p != NULL) context[@"kCAGravityCenter"] = kCAGravityCenter;
	p = (void*) &kCAGravityTopRight;
	if (p != NULL) context[@"kCAGravityTopRight"] = kCAGravityTopRight;
	p = (void*) &kCAGravityRight;
	if (p != NULL) context[@"kCAGravityRight"] = kCAGravityRight;
	p = (void*) &kCAGravityBottomLeft;
	if (p != NULL) context[@"kCAGravityBottomLeft"] = kCAGravityBottomLeft;
	p = (void*) &kCAOnOrderIn;
	if (p != NULL) context[@"kCAOnOrderIn"] = kCAOnOrderIn;
}
void QuartzCore_CALayerProtocols()
{
	(void)@protocol(CAAction);
}
void load_QuartzCore_CALayer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
