#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioEngine (Exports)
-(BOOL) jsstartAndReturnError: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self startAndReturnError: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(AVAudioEngineManualRenderingStatus) jsrenderOffline: (AVAudioFrameCount) numberOfFrames toBuffer: (AVAudioPCMBuffer *) buffer error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	AVAudioEngineManualRenderingStatus resultVal__;
	resultVal__ = [self renderOffline: numberOfFrames toBuffer: buffer error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsenableManualRenderingMode: (AVAudioEngineManualRenderingMode) mode format: (AVAudioFormat *) pcmFormat maximumFrameCount: (AVAudioFrameCount) maximumFrameCount error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self enableManualRenderingMode: mode format: pcmFormat maximumFrameCount: maximumFrameCount error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(JSValue *) getJsManualRenderingBlock
{
	return [JSValue valueWithObject: self.manualRenderingBlock inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioEngine class], @protocol(AVAudioEngineInstanceExports));
	class_addProtocol([AVAudioEngine class], @protocol(AVAudioEngineClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioEngineManualRenderingErrorInvalidMode"] = @-80800;
	context[@"AVAudioEngineManualRenderingErrorInitialized"] = @-80801;
	context[@"AVAudioEngineManualRenderingErrorNotRunning"] = @-80802;

	context[@"AVAudioEngineManualRenderingStatusError"] = @-1L;
	context[@"AVAudioEngineManualRenderingStatusSuccess"] = @0L;
	context[@"AVAudioEngineManualRenderingStatusInsufficientDataFromInputNode"] = @1L;
	context[@"AVAudioEngineManualRenderingStatusCannotDoInCurrentContext"] = @2L;

	context[@"AVAudioEngineManualRenderingModeOffline"] = @0L;
	context[@"AVAudioEngineManualRenderingModeRealtime"] = @1L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAudioEngineConfigurationChangeNotification;
	if (p != NULL) context[@"AVAudioEngineConfigurationChangeNotification"] = AVAudioEngineConfigurationChangeNotification;
}
void load_AVFoundation_AVFAudio_AVAudioEngine_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
