#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AVFoundation_AVFAudio_AVAudioTypes)
+(JSValue*) valueWithAVAudio3DPoint: (AVAudio3DPoint) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.x),
		@"y": @(s.y),
		@"z": @(s.z),
	} inContext: context];
}
-(AVAudio3DPoint) toAVAudio3DPoint {
	return (AVAudio3DPoint) {
		(float) [self[@"x"] toDouble],
		(float) [self[@"y"] toDouble],
		(float) [self[@"z"] toDouble],
	};
}
+(JSValue*) valueWithAVAudio3DAngularOrientation: (AVAudio3DAngularOrientation) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"yaw": @(s.yaw),
		@"pitch": @(s.pitch),
		@"roll": @(s.roll),
	} inContext: context];
}
-(AVAudio3DAngularOrientation) toAVAudio3DAngularOrientation {
	return (AVAudio3DAngularOrientation) {
		(float) [self[@"yaw"] toDouble],
		(float) [self[@"pitch"] toDouble],
		(float) [self[@"roll"] toDouble],
	};
}
+(JSValue*) valueWithAVAudio3DVectorOrientation: (AVAudio3DVectorOrientation) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.forward.x),
		@"y": @(s.forward.y),
		@"z": @(s.forward.z),
		@"x": @(s.up.x),
		@"y": @(s.up.y),
		@"z": @(s.up.z),
	} inContext: context];
}
-(AVAudio3DVectorOrientation) toAVAudio3DVectorOrientation {
	return (AVAudio3DVectorOrientation) {
		[self[@"forward"] toAVAudio3DPoint],
		[self[@"up"] toAVAudio3DPoint],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"AVAudioMake3DVectorOrientation"] = ^AVAudio3DVectorOrientation(AVAudio3DVector arg0, AVAudio3DVector arg1) {
		return AVAudioMake3DVectorOrientation(arg0, arg1);
	};
	context[@"AVAudioMake3DAngularOrientation"] = ^AVAudio3DAngularOrientation(float arg0, float arg1, float arg2) {
		return AVAudioMake3DAngularOrientation(arg0, arg1, arg2);
	};
	context[@"AVAudioMake3DPoint"] = ^AVAudio3DPoint(float arg0, float arg1, float arg2) {
		return AVAudioMake3DPoint(arg0, arg1, arg2);
	};
	context[@"AVAudioMake3DVector"] = ^AVAudio3DVector(float arg0, float arg1, float arg2) {
		return AVAudioMake3DVector(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
