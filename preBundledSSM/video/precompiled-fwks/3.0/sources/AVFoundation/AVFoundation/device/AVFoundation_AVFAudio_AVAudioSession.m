#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioSession (AVAudioSessionActivationCategoryExports)
-(BOOL) jssetActive: (BOOL) active withOptions: (AVAudioSessionSetActiveOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setActive: active withOptions: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetActive: (BOOL) active error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setActive: active error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVAudioSession (Exports)
-(BOOL) jssetCategory: (AVAudioSessionCategory) category mode: (AVAudioSessionMode) mode routeSharingPolicy: (AVAudioSessionRouteSharingPolicy) policy options: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setCategory: category mode: mode routeSharingPolicy: policy options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(void) jsrequestRecordPermission: (JSValue *) response 
{
	void (^ response_)(BOOL) = nil;
	if (!response.isUndefined) {
		response_ = ^void(BOOL arg0) {
			JSContext* __jsContext = response.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, response, self, parameters);
		};
	}
	[self requestRecordPermission: response_ ];
}
-(BOOL) jssetCategory: (AVAudioSessionCategory) category error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setCategory: category error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetAllowHapticsAndSystemSoundsDuringRecording: (BOOL) inValue error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setAllowHapticsAndSystemSoundsDuringRecording: inValue error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsoverrideOutputAudioPort: (AVAudioSessionPortOverride) portOverride error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self overrideOutputAudioPort: portOverride error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetCategory: (AVAudioSessionCategory) category mode: (AVAudioSessionMode) mode options: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setCategory: category mode: mode options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetCategory: (AVAudioSessionCategory) category withOptions: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setCategory: category withOptions: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetMode: (AVAudioSessionMode) mode error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setMode: mode error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetPreferredInput: (AVAudioSessionPortDescription *) inPort error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredInput: inPort error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVAudioSession (AVAudioSessionRoutingConfigurationCategoryExports)
-(BOOL) jssetAggregatedIOPreference: (AVAudioSessionIOType) inIOType error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setAggregatedIOPreference: inIOType error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVAudioSession (AVAudioSessionAVAudioSessionHardwareConfigurationCategoryExports)
-(BOOL) jssetPreferredInputNumberOfChannels: (NSInteger) count error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredInputNumberOfChannels: count error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetPreferredSampleRate: (double) sampleRate error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredSampleRate: sampleRate error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetPreferredInputOrientation: (AVAudioStereoOrientation) orientation error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredInputOrientation: orientation error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetOutputDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setOutputDataSource: dataSource error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetPreferredOutputNumberOfChannels: (NSInteger) count error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredOutputNumberOfChannels: count error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetInputGain: (float) gain error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setInputGain: gain error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetPreferredIOBufferDuration: (NSTimeInterval) duration error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredIOBufferDuration: duration error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetInputDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setInputDataSource: dataSource error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionActivationCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionActivationCategoryClassExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionClassExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionRoutingConfigurationCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionRoutingConfigurationCategoryClassExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionHardwareConfigurationCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionHardwareConfigurationCategoryClassExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionObservationCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionObservationCategoryClassExports));
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
	p = (void*) &AVAudioSessionRouteChangePreviousRouteKey;
	if (p != NULL) context[@"AVAudioSessionRouteChangePreviousRouteKey"] = AVAudioSessionRouteChangePreviousRouteKey;
	p = (void*) &AVAudioSessionInterruptionWasSuspendedKey;
	if (p != NULL) context[@"AVAudioSessionInterruptionWasSuspendedKey"] = AVAudioSessionInterruptionWasSuspendedKey;
	p = (void*) &AVAudioSessionInterruptionNotification;
	if (p != NULL) context[@"AVAudioSessionInterruptionNotification"] = AVAudioSessionInterruptionNotification;
	p = (void*) &AVAudioSessionInterruptionOptionKey;
	if (p != NULL) context[@"AVAudioSessionInterruptionOptionKey"] = AVAudioSessionInterruptionOptionKey;
	p = (void*) &AVAudioSessionSilenceSecondaryAudioHintTypeKey;
	if (p != NULL) context[@"AVAudioSessionSilenceSecondaryAudioHintTypeKey"] = AVAudioSessionSilenceSecondaryAudioHintTypeKey;
	p = (void*) &AVAudioSessionRouteChangeNotification;
	if (p != NULL) context[@"AVAudioSessionRouteChangeNotification"] = AVAudioSessionRouteChangeNotification;
	p = (void*) &AVAudioSessionMediaServicesWereResetNotification;
	if (p != NULL) context[@"AVAudioSessionMediaServicesWereResetNotification"] = AVAudioSessionMediaServicesWereResetNotification;
	p = (void*) &AVAudioSessionMediaServicesWereLostNotification;
	if (p != NULL) context[@"AVAudioSessionMediaServicesWereLostNotification"] = AVAudioSessionMediaServicesWereLostNotification;
	p = (void*) &AVAudioSessionSilenceSecondaryAudioHintNotification;
	if (p != NULL) context[@"AVAudioSessionSilenceSecondaryAudioHintNotification"] = AVAudioSessionSilenceSecondaryAudioHintNotification;
	p = (void*) &AVAudioSessionInterruptionTypeKey;
	if (p != NULL) context[@"AVAudioSessionInterruptionTypeKey"] = AVAudioSessionInterruptionTypeKey;
	p = (void*) &AVAudioSessionRouteChangeReasonKey;
	if (p != NULL) context[@"AVAudioSessionRouteChangeReasonKey"] = AVAudioSessionRouteChangeReasonKey;
}
void load_AVFoundation_AVFAudio_AVAudioSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
