#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Metal_MTLRenderCommandEncoder)
+(JSValue*) valueWithMTLViewport: (MTLViewport) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"originX": @(s.originX),
		@"originY": @(s.originY),
		@"width": @(s.width),
		@"height": @(s.height),
		@"znear": @(s.znear),
		@"zfar": @(s.zfar),
	} inContext: context];
}
-(MTLViewport) toMTLViewport {
	return (MTLViewport) {
		(double) [self[@"originX"] toDouble],
		(double) [self[@"originY"] toDouble],
		(double) [self[@"width"] toDouble],
		(double) [self[@"height"] toDouble],
		(double) [self[@"znear"] toDouble],
		(double) [self[@"zfar"] toDouble],
	};
}
+(JSValue*) valueWithMTLDrawPatchIndirectArguments: (MTLDrawPatchIndirectArguments) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"patchCount": @(s.patchCount),
		@"instanceCount": @(s.instanceCount),
		@"patchStart": @(s.patchStart),
		@"baseInstance": @(s.baseInstance),
	} inContext: context];
}
-(MTLDrawPatchIndirectArguments) toMTLDrawPatchIndirectArguments {
	return (MTLDrawPatchIndirectArguments) {
		(uint32_t) [self[@"patchCount"] toUInt32],
		(uint32_t) [self[@"instanceCount"] toUInt32],
		(uint32_t) [self[@"patchStart"] toUInt32],
		(uint32_t) [self[@"baseInstance"] toUInt32],
	};
}
+(JSValue*) valueWithMTLDrawIndexedPrimitivesIndirectArguments: (MTLDrawIndexedPrimitivesIndirectArguments) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"indexCount": @(s.indexCount),
		@"instanceCount": @(s.instanceCount),
		@"indexStart": @(s.indexStart),
		@"baseVertex": @(s.baseVertex),
		@"baseInstance": @(s.baseInstance),
	} inContext: context];
}
-(MTLDrawIndexedPrimitivesIndirectArguments) toMTLDrawIndexedPrimitivesIndirectArguments {
	return (MTLDrawIndexedPrimitivesIndirectArguments) {
		(uint32_t) [self[@"indexCount"] toUInt32],
		(uint32_t) [self[@"instanceCount"] toUInt32],
		(uint32_t) [self[@"indexStart"] toUInt32],
		(int32_t) [self[@"baseVertex"] toInt32],
		(uint32_t) [self[@"baseInstance"] toUInt32],
	};
}
+(JSValue*) valueWithMTLScissorRect: (MTLScissorRect) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.x),
		@"y": @(s.y),
		@"width": @(s.width),
		@"height": @(s.height),
	} inContext: context];
}
-(MTLScissorRect) toMTLScissorRect {
	return (MTLScissorRect) {
		(NSUInteger) [self[@"x"] toDouble],
		(NSUInteger) [self[@"y"] toDouble],
		(NSUInteger) [self[@"width"] toDouble],
		(NSUInteger) [self[@"height"] toDouble],
	};
}
+(JSValue*) valueWithMTLDrawPrimitivesIndirectArguments: (MTLDrawPrimitivesIndirectArguments) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"vertexCount": @(s.vertexCount),
		@"instanceCount": @(s.instanceCount),
		@"vertexStart": @(s.vertexStart),
		@"baseInstance": @(s.baseInstance),
	} inContext: context];
}
-(MTLDrawPrimitivesIndirectArguments) toMTLDrawPrimitivesIndirectArguments {
	return (MTLDrawPrimitivesIndirectArguments) {
		(uint32_t) [self[@"vertexCount"] toUInt32],
		(uint32_t) [self[@"instanceCount"] toUInt32],
		(uint32_t) [self[@"vertexStart"] toUInt32],
		(uint32_t) [self[@"baseInstance"] toUInt32],
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
	context[@"MTLPrimitiveTypePoint"] = @0UL;
	context[@"MTLPrimitiveTypeLine"] = @1UL;
	context[@"MTLPrimitiveTypeLineStrip"] = @2UL;
	context[@"MTLPrimitiveTypeTriangle"] = @3UL;
	context[@"MTLPrimitiveTypeTriangleStrip"] = @4UL;

	context[@"MTLVisibilityResultModeDisabled"] = @0UL;
	context[@"MTLVisibilityResultModeBoolean"] = @1UL;
	context[@"MTLVisibilityResultModeCounting"] = @2UL;

	context[@"MTLCullModeNone"] = @0UL;
	context[@"MTLCullModeFront"] = @1UL;
	context[@"MTLCullModeBack"] = @2UL;

	context[@"MTLWindingClockwise"] = @0UL;
	context[@"MTLWindingCounterClockwise"] = @1UL;

	context[@"MTLDepthClipModeClip"] = @0UL;
	context[@"MTLDepthClipModeClamp"] = @1UL;

	context[@"MTLTriangleFillModeFill"] = @0UL;
	context[@"MTLTriangleFillModeLines"] = @1UL;

	context[@"MTLRenderStageVertex"] = @1UL;
	context[@"MTLRenderStageFragment"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLRenderCommandEncoderProtocols()
{
	(void)@protocol(MTLRenderCommandEncoder);
}
void load_Metal_MTLRenderCommandEncoder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
