#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_MusicPlayer)
+(JSValue*) valueWithParameterEvent: (ParameterEvent) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"parameterID": @(s.parameterID),
		@"scope": @(s.scope),
		@"element": @(s.element),
		@"value": @(s.value),
	} inContext: context];
}
-(ParameterEvent) toParameterEvent {
	return (ParameterEvent) {
		(AudioUnitParameterID) [self[@"parameterID"] toDouble],
		(AudioUnitScope) [self[@"scope"] toDouble],
		(AudioUnitElement) [self[@"element"] toDouble],
		(AudioUnitParameterValue) [self[@"value"] toDouble],
	};
}
+(JSValue*) valueWithMusicTrackLoopInfo: (MusicTrackLoopInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"loopDuration": @(s.loopDuration),
		@"numberOfLoops": @(s.numberOfLoops),
	} inContext: context];
}
-(MusicTrackLoopInfo) toMusicTrackLoopInfo {
	return (MusicTrackLoopInfo) {
		(MusicTimeStamp) [self[@"loopDuration"] toDouble],
		(SInt32) [self[@"numberOfLoops"] toDouble],
	};
}
+(JSValue*) valueWithExtendedTempoEvent: (ExtendedTempoEvent) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"bpm": @(s.bpm),
	} inContext: context];
}
-(ExtendedTempoEvent) toExtendedTempoEvent {
	return (ExtendedTempoEvent) {
		(Float64) [self[@"bpm"] toDouble],
	};
}
+(JSValue*) valueWithMIDINoteMessage: (MIDINoteMessage) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"channel": @(s.channel),
		@"note": @(s.note),
		@"velocity": @(s.velocity),
		@"releaseVelocity": @(s.releaseVelocity),
		@"duration": @(s.duration),
	} inContext: context];
}
-(MIDINoteMessage) toMIDINoteMessage {
	return (MIDINoteMessage) {
		(UInt8) [self[@"channel"] toUInt32],
		(UInt8) [self[@"note"] toUInt32],
		(UInt8) [self[@"velocity"] toUInt32],
		(UInt8) [self[@"releaseVelocity"] toUInt32],
		(Float32) [self[@"duration"] toDouble],
	};
}
+(JSValue*) valueWithMIDIChannelMessage: (MIDIChannelMessage) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"status": @(s.status),
		@"data1": @(s.data1),
		@"data2": @(s.data2),
		@"reserved": @(s.reserved),
	} inContext: context];
}
-(MIDIChannelMessage) toMIDIChannelMessage {
	return (MIDIChannelMessage) {
		(UInt8) [self[@"status"] toUInt32],
		(UInt8) [self[@"data1"] toUInt32],
		(UInt8) [self[@"data2"] toUInt32],
		(UInt8) [self[@"reserved"] toUInt32],
	};
}
+(JSValue*) valueWithCABarBeatTime: (CABarBeatTime) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"bar": @(s.bar),
		@"beat": @(s.beat),
		@"subbeat": @(s.subbeat),
		@"subbeatDivisor": @(s.subbeatDivisor),
		@"reserved": @(s.reserved),
	} inContext: context];
}
-(CABarBeatTime) toCABarBeatTime {
	return (CABarBeatTime) {
		(SInt32) [self[@"bar"] toDouble],
		(UInt16) [self[@"beat"] toUInt32],
		(UInt16) [self[@"subbeat"] toUInt32],
		(UInt16) [self[@"subbeatDivisor"] toUInt32],
		(UInt16) [self[@"reserved"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kMusicEventType_NULL"] = @0UL;
	context[@"kMusicEventType_ExtendedNote"] = @1UL;
	context[@"kMusicEventType_ExtendedTempo"] = @3UL;
	context[@"kMusicEventType_User"] = @4UL;
	context[@"kMusicEventType_Meta"] = @5UL;
	context[@"kMusicEventType_MIDINoteMessage"] = @6UL;
	context[@"kMusicEventType_MIDIChannelMessage"] = @7UL;
	context[@"kMusicEventType_MIDIRawData"] = @8UL;
	context[@"kMusicEventType_Parameter"] = @9UL;
	context[@"kMusicEventType_AUPreset"] = @10UL;

	context[@"kMusicSequenceLoadSMF_PreserveTracks"] = @0UL;
	context[@"kMusicSequenceLoadSMF_ChannelsToTracks"] = @1UL;

	context[@"kMusicSequenceType_Beats"] = @1650811252UL;
	context[@"kMusicSequenceType_Seconds"] = @1936024435UL;
	context[@"kMusicSequenceType_Samples"] = @1935764848UL;

	context[@"kMusicSequenceFile_AnyType"] = @0UL;
	context[@"kMusicSequenceFile_MIDIType"] = @1835623529UL;
	context[@"kMusicSequenceFile_iMelodyType"] = @1768777068UL;

	context[@"kMusicSequenceFileFlags_Default"] = @0UL;
	context[@"kMusicSequenceFileFlags_EraseFile"] = @1UL;

	context[@"kAudioToolboxErr_InvalidSequenceType"] = @-10846L;
	context[@"kAudioToolboxErr_TrackIndexError"] = @-10859L;
	context[@"kAudioToolboxErr_TrackNotFound"] = @-10858L;
	context[@"kAudioToolboxErr_EndOfTrack"] = @-10857L;
	context[@"kAudioToolboxErr_StartOfTrack"] = @-10856L;
	context[@"kAudioToolboxErr_IllegalTrackDestination"] = @-10855L;
	context[@"kAudioToolboxErr_NoSequence"] = @-10854L;
	context[@"kAudioToolboxErr_InvalidEventType"] = @-10853L;
	context[@"kAudioToolboxErr_InvalidPlayerState"] = @-10852L;
	context[@"kAudioToolboxErr_CannotDoInCurrentContext"] = @-10863L;
	context[@"kAudioToolboxError_NoTrackDestination"] = @-66720L;

	context[@"kSequenceTrackProperty_LoopInfo"] = @0UL;
	context[@"kSequenceTrackProperty_OffsetTime"] = @1UL;
	context[@"kSequenceTrackProperty_MuteStatus"] = @2UL;
	context[@"kSequenceTrackProperty_SoloStatus"] = @3UL;
	context[@"kSequenceTrackProperty_AutomatedParameters"] = @4UL;
	context[@"kSequenceTrackProperty_TrackLength"] = @5UL;
	context[@"kSequenceTrackProperty_TimeResolution"] = @6UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_MusicPlayer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
