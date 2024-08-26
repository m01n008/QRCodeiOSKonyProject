#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Metal_MTLTypes)
+(JSValue*) valueWithMTLSize: (MTLSize) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"width": @(s.width),
		@"height": @(s.height),
		@"depth": @(s.depth),
	} inContext: context];
}
-(MTLSize) toMTLSize {
	return (MTLSize) {
		(NSUInteger) [self[@"width"] toDouble],
		(NSUInteger) [self[@"height"] toDouble],
		(NSUInteger) [self[@"depth"] toDouble],
	};
}
+(JSValue*) valueWithMTLOrigin: (MTLOrigin) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.x),
		@"y": @(s.y),
		@"z": @(s.z),
	} inContext: context];
}
-(MTLOrigin) toMTLOrigin {
	return (MTLOrigin) {
		(NSUInteger) [self[@"x"] toDouble],
		(NSUInteger) [self[@"y"] toDouble],
		(NSUInteger) [self[@"z"] toDouble],
	};
}
+(JSValue*) valueWithMTLSamplePosition: (MTLSamplePosition) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.x),
		@"y": @(s.y),
	} inContext: context];
}
-(MTLSamplePosition) toMTLSamplePosition {
	return (MTLSamplePosition) {
		(float) [self[@"x"] toDouble],
		(float) [self[@"y"] toDouble],
	};
}
+(JSValue*) valueWithMTLRegion: (MTLRegion) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.origin.x),
		@"y": @(s.origin.y),
		@"z": @(s.origin.z),
		@"width": @(s.size.width),
		@"height": @(s.size.height),
		@"depth": @(s.size.depth),
	} inContext: context];
}
-(MTLRegion) toMTLRegion {
	return (MTLRegion) {
		[self[@"origin"] toMTLOrigin],
		[self[@"size"] toMTLSize],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"MTLSizeMake"] = ^MTLSize(NSUInteger arg0, NSUInteger arg1, NSUInteger arg2) {
		return MTLSizeMake(arg0, arg1, arg2);
	};
	context[@"MTLRegionMake1D"] = ^MTLRegion(NSUInteger arg0, NSUInteger arg1) {
		return MTLRegionMake1D(arg0, arg1);
	};
	context[@"MTLRegionMake2D"] = ^MTLRegion(NSUInteger arg0, NSUInteger arg1, NSUInteger arg2, NSUInteger arg3) {
		return MTLRegionMake2D(arg0, arg1, arg2, arg3);
	};
	context[@"MTLOriginMake"] = ^MTLOrigin(NSUInteger arg0, NSUInteger arg1, NSUInteger arg2) {
		return MTLOriginMake(arg0, arg1, arg2);
	};
	context[@"MTLRegionMake3D"] = ^MTLRegion(NSUInteger arg0, NSUInteger arg1, NSUInteger arg2, NSUInteger arg3, NSUInteger arg4, NSUInteger arg5) {
		return MTLRegionMake3D(arg0, arg1, arg2, arg3, arg4, arg5);
	};
	context[@"MTLSamplePositionMake"] = ^MTLSamplePosition(float arg0, float arg1) {
		return MTLSamplePositionMake(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
