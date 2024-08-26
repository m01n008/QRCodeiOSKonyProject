#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
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
static void registerCFunctions(JSContext* context)
{
	context[@"MusicTrackMerge"] = ^OSStatus(id arg0, MusicTimeStamp arg1, MusicTimeStamp arg2, id arg3, MusicTimeStamp arg4) {
		return MusicTrackMerge(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MusicTrackSetDestNode"] = ^OSStatus(id arg0, AUNode arg1) {
		return MusicTrackSetDestNode(arg0, arg1);
	};
	context[@"MusicTrackSetDestMIDIEndpoint"] = ^OSStatus(id arg0, MIDIEndpointRef arg1) {
		return MusicTrackSetDestMIDIEndpoint(arg0, arg1);
	};
	context[@"MusicTrackMoveEvents"] = ^OSStatus(id arg0, MusicTimeStamp arg1, MusicTimeStamp arg2, MusicTimeStamp arg3) {
		return MusicTrackMoveEvents(arg0, arg1, arg2, arg3);
	};
	context[@"MusicSequenceDisposeTrack"] = ^OSStatus(id arg0, id arg1) {
		return MusicSequenceDisposeTrack(arg0, arg1);
	};
	context[@"DisposeMusicEventIterator"] = ^OSStatus(id arg0) {
		return DisposeMusicEventIterator(arg0);
	};
	context[@"MusicTrackNewExtendedTempoEvent"] = ^OSStatus(id arg0, MusicTimeStamp arg1, Float64 arg2) {
		return MusicTrackNewExtendedTempoEvent(arg0, arg1, arg2);
	};
	context[@"MusicPlayerSetTime"] = ^OSStatus(id arg0, MusicTimeStamp arg1) {
		return MusicPlayerSetTime(arg0, arg1);
	};
	context[@"MusicTrackCopyInsert"] = ^OSStatus(id arg0, MusicTimeStamp arg1, MusicTimeStamp arg2, id arg3, MusicTimeStamp arg4) {
		return MusicTrackCopyInsert(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MusicSequenceSetSequenceType"] = ^OSStatus(id arg0, MusicSequenceType arg1) {
		return MusicSequenceSetSequenceType(arg0, arg1);
	};
	context[@"MusicSequenceFileLoadData"] = ^OSStatus(id arg0, id arg1, MusicSequenceFileTypeID arg2, MusicSequenceLoadFlags arg3) {
		return MusicSequenceFileLoadData(arg0, arg1, arg2, arg3);
	};
	context[@"DisposeMusicPlayer"] = ^OSStatus(id arg0) {
		return DisposeMusicPlayer(arg0);
	};
	context[@"MusicSequenceFileCreate"] = ^OSStatus(id arg0, id arg1, MusicSequenceFileTypeID arg2, MusicSequenceFileFlags arg3, SInt16 arg4) {
		return MusicSequenceFileCreate(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"MusicPlayerStop"] = ^OSStatus(id arg0) {
		return MusicPlayerStop(arg0);
	};
	context[@"MusicSequenceReverse"] = ^OSStatus(id arg0) {
		return MusicSequenceReverse(arg0);
	};
	context[@"MusicTrackCut"] = ^OSStatus(id arg0, MusicTimeStamp arg1, MusicTimeStamp arg2) {
		return MusicTrackCut(arg0, arg1, arg2);
	};
	context[@"MusicSequenceSetMIDIEndpoint"] = ^OSStatus(id arg0, MIDIEndpointRef arg1) {
		return MusicSequenceSetMIDIEndpoint(arg0, arg1);
	};
	context[@"MusicPlayerSetPlayRateScalar"] = ^OSStatus(id arg0, Float64 arg1) {
		return MusicPlayerSetPlayRateScalar(arg0, arg1);
	};
	context[@"MusicEventIteratorPreviousEvent"] = ^OSStatus(id arg0) {
		return MusicEventIteratorPreviousEvent(arg0);
	};
	context[@"MusicSequenceFileLoad"] = ^OSStatus(id arg0, id arg1, MusicSequenceFileTypeID arg2, MusicSequenceLoadFlags arg3) {
		return MusicSequenceFileLoad(arg0, arg1, arg2, arg3);
	};
	context[@"MusicEventIteratorSeek"] = ^OSStatus(id arg0, MusicTimeStamp arg1) {
		return MusicEventIteratorSeek(arg0, arg1);
	};
	context[@"MusicEventIteratorDeleteEvent"] = ^OSStatus(id arg0) {
		return MusicEventIteratorDeleteEvent(arg0);
	};
	context[@"MusicPlayerPreroll"] = ^OSStatus(id arg0) {
		return MusicPlayerPreroll(arg0);
	};
	context[@"MusicSequenceSetAUGraph"] = ^OSStatus(id arg0, id arg1) {
		return MusicSequenceSetAUGraph(arg0, arg1);
	};
	context[@"MusicPlayerSetSequence"] = ^OSStatus(id arg0, id arg1) {
		return MusicPlayerSetSequence(arg0, arg1);
	};
	context[@"MusicEventIteratorSetEventTime"] = ^OSStatus(id arg0, MusicTimeStamp arg1) {
		return MusicEventIteratorSetEventTime(arg0, arg1);
	};
	context[@"DisposeMusicSequence"] = ^OSStatus(id arg0) {
		return DisposeMusicSequence(arg0);
	};
	context[@"MusicSequenceSetSMPTEResolution"] = ^SInt16(SignedByte arg0, Byte arg1) {
		return MusicSequenceSetSMPTEResolution(arg0, arg1);
	};
	context[@"MusicPlayerStart"] = ^OSStatus(id arg0) {
		return MusicPlayerStart(arg0);
	};
	context[@"MusicTrackClear"] = ^OSStatus(id arg0, MusicTimeStamp arg1, MusicTimeStamp arg2) {
		return MusicTrackClear(arg0, arg1, arg2);
	};
	context[@"MusicSequenceGetInfoDictionary"] = ^id(id arg0) {
		return MusicSequenceGetInfoDictionary(arg0);
	};
	context[@"MusicEventIteratorNextEvent"] = ^OSStatus(id arg0) {
		return MusicEventIteratorNextEvent(arg0);
	};
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
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
