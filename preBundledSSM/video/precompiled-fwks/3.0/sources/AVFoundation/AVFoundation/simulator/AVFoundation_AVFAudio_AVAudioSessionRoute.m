#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioSessionPortDescription (Exports)
-(BOOL) jssetPreferredDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredDataSource: dataSource error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVAudioSessionDataSourceDescription (Exports)
-(BOOL) jssetPreferredPolarPattern: (AVAudioSessionPolarPattern) pattern error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredPolarPattern: pattern error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioSessionRouteDescription class], @protocol(AVAudioSessionRouteDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionRouteDescription class], @protocol(AVAudioSessionRouteDescriptionClassExports));
	class_addProtocol([AVAudioSessionPortDescription class], @protocol(AVAudioSessionPortDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionPortDescription class], @protocol(AVAudioSessionPortDescriptionClassExports));
	class_addProtocol([AVAudioSessionDataSourceDescription class], @protocol(AVAudioSessionDataSourceDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionDataSourceDescription class], @protocol(AVAudioSessionDataSourceDescriptionClassExports));
	class_addProtocol([AVAudioSessionChannelDescription class], @protocol(AVAudioSessionChannelDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionChannelDescription class], @protocol(AVAudioSessionChannelDescriptionClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAudioSessionOrientationLeft;
	if (p != NULL) context[@"AVAudioSessionOrientationLeft"] = AVAudioSessionOrientationLeft;
	p = (void*) &AVAudioSessionOrientationTop;
	if (p != NULL) context[@"AVAudioSessionOrientationTop"] = AVAudioSessionOrientationTop;
	p = (void*) &AVAudioSessionLocationUpper;
	if (p != NULL) context[@"AVAudioSessionLocationUpper"] = AVAudioSessionLocationUpper;
	p = (void*) &AVAudioSessionPolarPatternSubcardioid;
	if (p != NULL) context[@"AVAudioSessionPolarPatternSubcardioid"] = AVAudioSessionPolarPatternSubcardioid;
	p = (void*) &AVAudioSessionLocationLower;
	if (p != NULL) context[@"AVAudioSessionLocationLower"] = AVAudioSessionLocationLower;
	p = (void*) &AVAudioSessionPolarPatternCardioid;
	if (p != NULL) context[@"AVAudioSessionPolarPatternCardioid"] = AVAudioSessionPolarPatternCardioid;
	p = (void*) &AVAudioSessionOrientationRight;
	if (p != NULL) context[@"AVAudioSessionOrientationRight"] = AVAudioSessionOrientationRight;
	p = (void*) &AVAudioSessionOrientationFront;
	if (p != NULL) context[@"AVAudioSessionOrientationFront"] = AVAudioSessionOrientationFront;
	p = (void*) &AVAudioSessionOrientationBack;
	if (p != NULL) context[@"AVAudioSessionOrientationBack"] = AVAudioSessionOrientationBack;
	p = (void*) &AVAudioSessionPolarPatternOmnidirectional;
	if (p != NULL) context[@"AVAudioSessionPolarPatternOmnidirectional"] = AVAudioSessionPolarPatternOmnidirectional;
	p = (void*) &AVAudioSessionPolarPatternStereo;
	if (p != NULL) context[@"AVAudioSessionPolarPatternStereo"] = AVAudioSessionPolarPatternStereo;
	p = (void*) &AVAudioSessionOrientationBottom;
	if (p != NULL) context[@"AVAudioSessionOrientationBottom"] = AVAudioSessionOrientationBottom;
}
void load_AVFoundation_AVFAudio_AVAudioSessionRoute_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
