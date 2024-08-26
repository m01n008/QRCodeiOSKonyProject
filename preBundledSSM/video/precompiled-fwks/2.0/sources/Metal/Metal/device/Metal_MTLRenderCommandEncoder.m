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
		(NSUInteger) [self[@"x"] toUInt32],
		(NSUInteger) [self[@"y"] toUInt32],
		(NSUInteger) [self[@"width"] toUInt32],
		(NSUInteger) [self[@"height"] toUInt32],
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
	context[@"MTLPrimitiveTypePoint"] = @0U;
	context[@"MTLPrimitiveTypeLine"] = @1U;
	context[@"MTLPrimitiveTypeLineStrip"] = @2U;
	context[@"MTLPrimitiveTypeTriangle"] = @3U;
	context[@"MTLPrimitiveTypeTriangleStrip"] = @4U;

	context[@"MTLVisibilityResultModeDisabled"] = @0U;
	context[@"MTLVisibilityResultModeBoolean"] = @1U;
	context[@"MTLVisibilityResultModeCounting"] = @2U;

	context[@"MTLCullModeNone"] = @0U;
	context[@"MTLCullModeFront"] = @1U;
	context[@"MTLCullModeBack"] = @2U;

	context[@"MTLWindingClockwise"] = @0U;
	context[@"MTLWindingCounterClockwise"] = @1U;

	context[@"MTLDepthClipModeClip"] = @0U;
	context[@"MTLDepthClipModeClamp"] = @1U;

	context[@"MTLTriangleFillModeFill"] = @0U;
	context[@"MTLTriangleFillModeLines"] = @1U;

	context[@"MTLRenderStageVertex"] = @1U;
	context[@"MTLRenderStageFragment"] = @2U;

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
