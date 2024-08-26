#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioSession (AVAudioSessionAVAudioSessionDeprecatedCategoryExports)
-(BOOL) jssetPreferredHardwareSampleRate: (double) sampleRate error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredHardwareSampleRate: sampleRate error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetActive: (BOOL) active withFlags: (NSInteger) flags error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setActive: active withFlags: flags error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVAudioSession (Exports)
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
-(BOOL) jssetCategory: (NSString *) category error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setCategory: category error: &outError_ ];
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
-(BOOL) jssetCategory: (NSString *) category withOptions: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setCategory: category withOptions: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
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
-(BOOL) jssetMode: (NSString *) mode error: (JSValue *) outError 
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
@implementation AVAudioSessionDataSourceDescription (Exports)
-(BOOL) jssetPreferredPolarPattern: (NSString *) pattern error: (JSValue *) outError 
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
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionDeprecatedCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionDeprecatedCategoryClassExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionClassExports));
	class_addProtocol([AVAudioSessionRouteDescription class], @protocol(AVAudioSessionRouteDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionRouteDescription class], @protocol(AVAudioSessionRouteDescriptionClassExports));
	class_addProtocol([AVAudioSessionPortDescription class], @protocol(AVAudioSessionPortDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionPortDescription class], @protocol(AVAudioSessionPortDescriptionClassExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionHardwareConfigurationCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionHardwareConfigurationCategoryClassExports));
	class_addProtocol([AVAudioSessionDataSourceDescription class], @protocol(AVAudioSessionDataSourceDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionDataSourceDescription class], @protocol(AVAudioSessionDataSourceDescriptionClassExports));
	class_addProtocol([AVAudioSessionChannelDescription class], @protocol(AVAudioSessionChannelDescriptionInstanceExports));
	class_addProtocol([AVAudioSessionChannelDescription class], @protocol(AVAudioSessionChannelDescriptionClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioSessionInterruptionOptionShouldResume"] = @1U;

	context[@"AVAudioSessionSetActiveOptionNotifyOthersOnDeactivation"] = @1U;

	context[@"AVAudioSessionPortOverrideNone"] = @0U;
	context[@"AVAudioSessionPortOverrideSpeaker"] = @1936747378U;

	context[@"AVAudioSessionRouteChangeReasonUnknown"] = @0U;
	context[@"AVAudioSessionRouteChangeReasonNewDeviceAvailable"] = @1U;
	context[@"AVAudioSessionRouteChangeReasonOldDeviceUnavailable"] = @2U;
	context[@"AVAudioSessionRouteChangeReasonCategoryChange"] = @3U;
	context[@"AVAudioSessionRouteChangeReasonOverride"] = @4U;
	context[@"AVAudioSessionRouteChangeReasonWakeFromSleep"] = @6U;
	context[@"AVAudioSessionRouteChangeReasonNoSuitableRouteForCategory"] = @7U;
	context[@"AVAudioSessionRouteChangeReasonRouteConfigurationChange"] = @8U;

	context[@"AVAudioSessionCategoryOptionMixWithOthers"] = @1U;
	context[@"AVAudioSessionCategoryOptionDuckOthers"] = @2U;
	context[@"AVAudioSessionCategoryOptionAllowBluetooth"] = @4U;
	context[@"AVAudioSessionCategoryOptionDefaultToSpeaker"] = @8U;
	context[@"AVAudioSessionCategoryOptionInterruptSpokenAudioAndMixWithOthers"] = @17U;

	context[@"AVAudioSessionInterruptionTypeBegan"] = @1U;
	context[@"AVAudioSessionInterruptionTypeEnded"] = @0U;

	context[@"AVAudioSessionSilenceSecondaryAudioHintTypeBegin"] = @1U;
	context[@"AVAudioSessionSilenceSecondaryAudioHintTypeEnd"] = @0U;

	context[@"AVAudioSessionRecordPermissionUndetermined"] = @1970168948U;
	context[@"AVAudioSessionRecordPermissionDenied"] = @1684369017U;
	context[@"AVAudioSessionRecordPermissionGranted"] = @1735552628U;

	context[@"AVAudioSessionErrorCodeNone"] = @0;
	context[@"AVAudioSessionErrorCodeMediaServicesFailed"] = @1836282486;
	context[@"AVAudioSessionErrorCodeIsBusy"] = @560030580;
	context[@"AVAudioSessionErrorCodeIncompatibleCategory"] = @560161140;
	context[@"AVAudioSessionErrorCodeCannotInterruptOthers"] = @560557684;
	context[@"AVAudioSessionErrorCodeMissingEntitlement"] = @1701737535;
	context[@"AVAudioSessionErrorCodeSiriIsRecording"] = @1936290409;
	context[@"AVAudioSessionErrorCodeCannotStartPlaying"] = @561015905;
	context[@"AVAudioSessionErrorCodeCannotStartRecording"] = @561145187;
	context[@"AVAudioSessionErrorCodeBadParam"] = @-50;
	context[@"AVAudioSessionErrorInsufficientPriority"] = @561017449;
	context[@"AVAudioSessionErrorCodeResourceNotAvailable"] = @561145203;
	context[@"AVAudioSessionErrorCodeUnspecified"] = @2003329396;

	context[@"AVAudioSessionInterruptionFlags_ShouldResume"] = @1;

	context[@"AVAudioSessionSetActiveFlags_NotifyOthersOnDeactivation"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAudioSessionOrientationLeft;
	if (p != NULL) context[@"AVAudioSessionOrientationLeft"] = AVAudioSessionOrientationLeft;
	p = (void*) &AVAudioSessionPortBluetoothHFP;
	if (p != NULL) context[@"AVAudioSessionPortBluetoothHFP"] = AVAudioSessionPortBluetoothHFP;
	p = (void*) &AVAudioSessionCategoryAmbient;
	if (p != NULL) context[@"AVAudioSessionCategoryAmbient"] = AVAudioSessionCategoryAmbient;
	p = (void*) &AVAudioSessionOrientationTop;
	if (p != NULL) context[@"AVAudioSessionOrientationTop"] = AVAudioSessionOrientationTop;
	p = (void*) &AVAudioSessionRouteChangePreviousRouteKey;
	if (p != NULL) context[@"AVAudioSessionRouteChangePreviousRouteKey"] = AVAudioSessionRouteChangePreviousRouteKey;
	p = (void*) &AVAudioSessionModeVoiceChat;
	if (p != NULL) context[@"AVAudioSessionModeVoiceChat"] = AVAudioSessionModeVoiceChat;
	p = (void*) &AVAudioSessionLocationUpper;
	if (p != NULL) context[@"AVAudioSessionLocationUpper"] = AVAudioSessionLocationUpper;
	p = (void*) &AVAudioSessionModeMeasurement;
	if (p != NULL) context[@"AVAudioSessionModeMeasurement"] = AVAudioSessionModeMeasurement;
	p = (void*) &AVAudioSessionPortHeadsetMic;
	if (p != NULL) context[@"AVAudioSessionPortHeadsetMic"] = AVAudioSessionPortHeadsetMic;
	p = (void*) &AVAudioSessionCategoryAudioProcessing;
	if (p != NULL) context[@"AVAudioSessionCategoryAudioProcessing"] = AVAudioSessionCategoryAudioProcessing;
	p = (void*) &AVAudioSessionPortBuiltInMic;
	if (p != NULL) context[@"AVAudioSessionPortBuiltInMic"] = AVAudioSessionPortBuiltInMic;
	p = (void*) &AVAudioSessionPortHDMI;
	if (p != NULL) context[@"AVAudioSessionPortHDMI"] = AVAudioSessionPortHDMI;
	p = (void*) &AVAudioSessionPortLineOut;
	if (p != NULL) context[@"AVAudioSessionPortLineOut"] = AVAudioSessionPortLineOut;
	p = (void*) &AVAudioSessionLocationLower;
	if (p != NULL) context[@"AVAudioSessionLocationLower"] = AVAudioSessionLocationLower;
	p = (void*) &AVAudioSessionPortBuiltInSpeaker;
	if (p != NULL) context[@"AVAudioSessionPortBuiltInSpeaker"] = AVAudioSessionPortBuiltInSpeaker;
	p = (void*) &AVAudioSessionInterruptionNotification;
	if (p != NULL) context[@"AVAudioSessionInterruptionNotification"] = AVAudioSessionInterruptionNotification;
	p = (void*) &AVAudioSessionCategoryPlayback;
	if (p != NULL) context[@"AVAudioSessionCategoryPlayback"] = AVAudioSessionCategoryPlayback;
	p = (void*) &AVAudioSessionModeSpokenAudio;
	if (p != NULL) context[@"AVAudioSessionModeSpokenAudio"] = AVAudioSessionModeSpokenAudio;
	p = (void*) &AVAudioSessionCategoryRecord;
	if (p != NULL) context[@"AVAudioSessionCategoryRecord"] = AVAudioSessionCategoryRecord;
	p = (void*) &AVAudioSessionPortLineIn;
	if (p != NULL) context[@"AVAudioSessionPortLineIn"] = AVAudioSessionPortLineIn;
	p = (void*) &AVAudioSessionOrientationBottom;
	if (p != NULL) context[@"AVAudioSessionOrientationBottom"] = AVAudioSessionOrientationBottom;
	p = (void*) &AVAudioSessionPortBluetoothLE;
	if (p != NULL) context[@"AVAudioSessionPortBluetoothLE"] = AVAudioSessionPortBluetoothLE;
	p = (void*) &AVAudioSessionPolarPatternCardioid;
	if (p != NULL) context[@"AVAudioSessionPolarPatternCardioid"] = AVAudioSessionPolarPatternCardioid;
	p = (void*) &AVAudioSessionPortBuiltInReceiver;
	if (p != NULL) context[@"AVAudioSessionPortBuiltInReceiver"] = AVAudioSessionPortBuiltInReceiver;
	p = (void*) &AVAudioSessionInterruptionOptionKey;
	if (p != NULL) context[@"AVAudioSessionInterruptionOptionKey"] = AVAudioSessionInterruptionOptionKey;
	p = (void*) &AVAudioSessionModeVideoRecording;
	if (p != NULL) context[@"AVAudioSessionModeVideoRecording"] = AVAudioSessionModeVideoRecording;
	p = (void*) &AVAudioSessionModeGameChat;
	if (p != NULL) context[@"AVAudioSessionModeGameChat"] = AVAudioSessionModeGameChat;
	p = (void*) &AVAudioSessionSilenceSecondaryAudioHintTypeKey;
	if (p != NULL) context[@"AVAudioSessionSilenceSecondaryAudioHintTypeKey"] = AVAudioSessionSilenceSecondaryAudioHintTypeKey;
	p = (void*) &AVAudioSessionPortHeadphones;
	if (p != NULL) context[@"AVAudioSessionPortHeadphones"] = AVAudioSessionPortHeadphones;
	p = (void*) &AVAudioSessionPolarPatternSubcardioid;
	if (p != NULL) context[@"AVAudioSessionPolarPatternSubcardioid"] = AVAudioSessionPolarPatternSubcardioid;
	p = (void*) &AVAudioSessionCategoryPlayAndRecord;
	if (p != NULL) context[@"AVAudioSessionCategoryPlayAndRecord"] = AVAudioSessionCategoryPlayAndRecord;
	p = (void*) &AVAudioSessionModeMoviePlayback;
	if (p != NULL) context[@"AVAudioSessionModeMoviePlayback"] = AVAudioSessionModeMoviePlayback;
	p = (void*) &AVAudioSessionOrientationRight;
	if (p != NULL) context[@"AVAudioSessionOrientationRight"] = AVAudioSessionOrientationRight;
	p = (void*) &AVAudioSessionModeVideoChat;
	if (p != NULL) context[@"AVAudioSessionModeVideoChat"] = AVAudioSessionModeVideoChat;
	p = (void*) &AVAudioSessionRouteChangeNotification;
	if (p != NULL) context[@"AVAudioSessionRouteChangeNotification"] = AVAudioSessionRouteChangeNotification;
	p = (void*) &AVAudioSessionPolarPatternOmnidirectional;
	if (p != NULL) context[@"AVAudioSessionPolarPatternOmnidirectional"] = AVAudioSessionPolarPatternOmnidirectional;
	p = (void*) &AVAudioSessionOrientationFront;
	if (p != NULL) context[@"AVAudioSessionOrientationFront"] = AVAudioSessionOrientationFront;
	p = (void*) &AVAudioSessionMediaServicesWereResetNotification;
	if (p != NULL) context[@"AVAudioSessionMediaServicesWereResetNotification"] = AVAudioSessionMediaServicesWereResetNotification;
	p = (void*) &AVAudioSessionCategorySoloAmbient;
	if (p != NULL) context[@"AVAudioSessionCategorySoloAmbient"] = AVAudioSessionCategorySoloAmbient;
	p = (void*) &AVAudioSessionMediaServicesWereLostNotification;
	if (p != NULL) context[@"AVAudioSessionMediaServicesWereLostNotification"] = AVAudioSessionMediaServicesWereLostNotification;
	p = (void*) &AVAudioSessionSilenceSecondaryAudioHintNotification;
	if (p != NULL) context[@"AVAudioSessionSilenceSecondaryAudioHintNotification"] = AVAudioSessionSilenceSecondaryAudioHintNotification;
	p = (void*) &AVAudioSessionPortUSBAudio;
	if (p != NULL) context[@"AVAudioSessionPortUSBAudio"] = AVAudioSessionPortUSBAudio;
	p = (void*) &AVAudioSessionCategoryMultiRoute;
	if (p != NULL) context[@"AVAudioSessionCategoryMultiRoute"] = AVAudioSessionCategoryMultiRoute;
	p = (void*) &AVAudioSessionPortCarAudio;
	if (p != NULL) context[@"AVAudioSessionPortCarAudio"] = AVAudioSessionPortCarAudio;
	p = (void*) &AVAudioSessionModeDefault;
	if (p != NULL) context[@"AVAudioSessionModeDefault"] = AVAudioSessionModeDefault;
	p = (void*) &AVAudioSessionOrientationBack;
	if (p != NULL) context[@"AVAudioSessionOrientationBack"] = AVAudioSessionOrientationBack;
	p = (void*) &AVAudioSessionInterruptionTypeKey;
	if (p != NULL) context[@"AVAudioSessionInterruptionTypeKey"] = AVAudioSessionInterruptionTypeKey;
	p = (void*) &AVAudioSessionRouteChangeReasonKey;
	if (p != NULL) context[@"AVAudioSessionRouteChangeReasonKey"] = AVAudioSessionRouteChangeReasonKey;
	p = (void*) &AVAudioSessionPortBluetoothA2DP;
	if (p != NULL) context[@"AVAudioSessionPortBluetoothA2DP"] = AVAudioSessionPortBluetoothA2DP;
	p = (void*) &AVAudioSessionPortAirPlay;
	if (p != NULL) context[@"AVAudioSessionPortAirPlay"] = AVAudioSessionPortAirPlay;
}
void AVFoundation_AVAudioSessionProtocols()
{
	(void)@protocol(AVAudioSessionDelegate);
}
void load_AVFoundation_AVAudioSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
