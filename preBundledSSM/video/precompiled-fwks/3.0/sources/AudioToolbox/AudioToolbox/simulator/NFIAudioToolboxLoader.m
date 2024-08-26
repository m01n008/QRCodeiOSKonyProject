#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFIAudioToolboxModules(JSContext* context)
{
	load_AudioToolbox_AudioConverter_symbols(context);
	load_AudioToolbox_AudioFormat_symbols(context);
	load_AudioToolbox_AudioFileStream_symbols(context);
	load_AudioToolbox_AudioToolbox_symbols(context);
	load_AudioToolbox_AudioUnitParameters_symbols(context);
	load_AudioToolbox_MusicPlayer_symbols(context);
	load_AudioToolbox_AudioCodec_symbols(context);
	load_AudioToolbox_CAShow_symbols(context);
	load_AudioToolbox_AudioServices_symbols(context);
	load_AudioToolbox_AudioFile_symbols(context);
	load_AudioToolbox_AudioSession_symbols(context);
	load_AudioToolbox_CAFFile_symbols(context);
	load_AudioToolbox_ExtendedAudioFile_symbols(context);
	load_AudioToolbox_AudioWorkInterval_symbols(context);
	load_AudioToolbox_AUParameters_symbols(context);
	load_AudioToolbox_AUAudioUnit_symbols(context);
	load_AudioToolbox_AudioOutputUnit_symbols(context);
	load_AudioToolbox_AudioQueue_symbols(context);
	load_AudioToolbox_AUGraph_symbols(context);
	load_AudioToolbox_AudioUnitProperties_symbols(context);
	load_AudioToolbox_AUAudioUnitImplementation_symbols(context);
	load_AudioToolbox_AUComponent_symbols(context);
	load_AudioToolbox_MusicDevice_symbols(context);
	load_AudioToolbox_AudioComponent_symbols(context);
}

JSValue* extractNFIAudioToolboxStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(AudioConverterPrimeInfo)) == 0) {
		AudioConverterPrimeInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioConverterPrimeInfo: argument inContext: context];
	} else if (strcmp(type, @encode(ParameterEvent)) == 0) {
		ParameterEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithParameterEvent: argument inContext: context];
	} else if (strcmp(type, @encode(MusicTrackLoopInfo)) == 0) {
		MusicTrackLoopInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMusicTrackLoopInfo: argument inContext: context];
	} else if (strcmp(type, @encode(MIDINoteMessage)) == 0) {
		MIDINoteMessage argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDINoteMessage: argument inContext: context];
	} else if (strcmp(type, @encode(ExtendedTempoEvent)) == 0) {
		ExtendedTempoEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithExtendedTempoEvent: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIChannelMessage)) == 0) {
		MIDIChannelMessage argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIChannelMessage: argument inContext: context];
	} else if (strcmp(type, @encode(CABarBeatTime)) == 0) {
		CABarBeatTime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCABarBeatTime: argument inContext: context];
	} else if (strcmp(type, @encode(AudioCodecPrimeInfo)) == 0) {
		AudioCodecPrimeInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioCodecPrimeInfo: argument inContext: context];
	} else if (strcmp(type, @encode(AudioPacketDependencyInfoTranslation)) == 0) {
		AudioPacketDependencyInfoTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioPacketDependencyInfoTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioFilePacketTableInfo)) == 0) {
		AudioFilePacketTableInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFilePacketTableInfo: argument inContext: context];
	} else if (strcmp(type, @encode(AudioPacketRangeByteCountTranslation)) == 0) {
		AudioPacketRangeByteCountTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioPacketRangeByteCountTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioPacketRollDistanceTranslation)) == 0) {
		AudioPacketRollDistanceTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioPacketRollDistanceTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioFramePacketTranslation)) == 0) {
		AudioFramePacketTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFramePacketTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioFile_SMPTE_Time)) == 0) {
		AudioFile_SMPTE_Time argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFile_SMPTE_Time: argument inContext: context];
	} else if (strcmp(type, @encode(AudioIndependentPacketTranslation)) == 0) {
		AudioIndependentPacketTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioIndependentPacketTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioBytePacketTranslation)) == 0) {
		AudioBytePacketTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioBytePacketTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioFileTypeAndFormatID)) == 0) {
		AudioFileTypeAndFormatID argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFileTypeAndFormatID: argument inContext: context];
	} else if (strcmp(type, @encode(CAFStringID)) == 0) {
		CAFStringID argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFStringID: argument inContext: context];
	} else if (strcmp(type, @encode(CAFAudioDescription)) == 0) {
		CAFAudioDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFAudioDescription: argument inContext: context];
	} else if (strcmp(type, @encode(CAFFileHeader)) == 0) {
		CAFFileHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFFileHeader: argument inContext: context];
	} else if (strcmp(type, @encode(CAFInfoStrings)) == 0) {
		CAFInfoStrings argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFInfoStrings: argument inContext: context];
	} else if (strcmp(type, @encode(CAFPositionPeak)) == 0) {
		CAFPositionPeak argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFPositionPeak: argument inContext: context];
	} else if (strcmp(type, @encode(CAFOverviewSample)) == 0) {
		CAFOverviewSample argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFOverviewSample: argument inContext: context];
	} else if (strcmp(type, @encode(CAFChunkHeader)) == 0) {
		CAFChunkHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFChunkHeader: argument inContext: context];
	} else if (strcmp(type, @encode(CAF_SMPTE_Time)) == 0) {
		CAF_SMPTE_Time argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAF_SMPTE_Time: argument inContext: context];
	} else if (strcmp(type, @encode(CAFInstrumentChunk)) == 0) {
		CAFInstrumentChunk argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFInstrumentChunk: argument inContext: context];
	} else if (strcmp(type, @encode(CAFMarker)) == 0) {
		CAFMarker argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFMarker: argument inContext: context];
	} else if (strcmp(type, @encode(AUParameterAutomationEvent)) == 0) {
		AUParameterAutomationEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAUParameterAutomationEvent: argument inContext: context];
	} else if (strcmp(type, @encode(AURecordedParameterEvent)) == 0) {
		AURecordedParameterEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAURecordedParameterEvent: argument inContext: context];
	} else if (strcmp(type, @encode(AudioQueueParameterEvent)) == 0) {
		AudioQueueParameterEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioQueueParameterEvent: argument inContext: context];
	} else if (strcmp(type, @encode(AudioQueueLevelMeterState)) == 0) {
		AudioQueueLevelMeterState argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioQueueLevelMeterState: argument inContext: context];
	} else if (strcmp(type, @encode(AudioUnitNodeConnection)) == 0) {
		AudioUnitNodeConnection argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitNodeConnection: argument inContext: context];
	} else if (strcmp(type, @encode(AUDependentParameter)) == 0) {
		AUDependentParameter argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAUDependentParameter: argument inContext: context];
	} else if (strcmp(type, @encode(AudioUnitMeterClipping)) == 0) {
		AudioUnitMeterClipping argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitMeterClipping: argument inContext: context];
	} else if (strcmp(type, @encode(AUChannelInfo)) == 0) {
		AUChannelInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAUChannelInfo: argument inContext: context];
	} else if (strcmp(type, @encode(MixerDistanceParams)) == 0) {
		MixerDistanceParams argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMixerDistanceParams: argument inContext: context];
	} else if (strcmp(type, @encode(AudioUnitFrequencyResponseBin)) == 0) {
		AudioUnitFrequencyResponseBin argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitFrequencyResponseBin: argument inContext: context];
	} else if (strcmp(type, @encode(AudioOutputUnitStartAtTimeParams)) == 0) {
		AudioOutputUnitStartAtTimeParams argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioOutputUnitStartAtTimeParams: argument inContext: context];
	} else if (strcmp(type, @encode(AudioUnitParameterHistoryInfo)) == 0) {
		AudioUnitParameterHistoryInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitParameterHistoryInfo: argument inContext: context];
	} else if (strcmp(type, @encode(NoteParamsControlValue)) == 0) {
		NoteParamsControlValue argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNoteParamsControlValue: argument inContext: context];
	} else if (strcmp(type, @encode(MusicDeviceStdNoteParams)) == 0) {
		MusicDeviceStdNoteParams argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMusicDeviceStdNoteParams: argument inContext: context];
	} else if (strcmp(type, @encode(AudioComponentDescription)) == 0) {
		AudioComponentDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioComponentDescription: argument inContext: context];
	}    
    return nil;
}

BOOL setNFIAudioToolboxStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(AudioConverterPrimeInfo)) == 0) {
		AudioConverterPrimeInfo returnValue = value.toAudioConverterPrimeInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(ParameterEvent)) == 0) {
		ParameterEvent returnValue = value.toParameterEvent;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MusicTrackLoopInfo)) == 0) {
		MusicTrackLoopInfo returnValue = value.toMusicTrackLoopInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDINoteMessage)) == 0) {
		MIDINoteMessage returnValue = value.toMIDINoteMessage;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(ExtendedTempoEvent)) == 0) {
		ExtendedTempoEvent returnValue = value.toExtendedTempoEvent;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDIChannelMessage)) == 0) {
		MIDIChannelMessage returnValue = value.toMIDIChannelMessage;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CABarBeatTime)) == 0) {
		CABarBeatTime returnValue = value.toCABarBeatTime;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioCodecPrimeInfo)) == 0) {
		AudioCodecPrimeInfo returnValue = value.toAudioCodecPrimeInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioPacketDependencyInfoTranslation)) == 0) {
		AudioPacketDependencyInfoTranslation returnValue = value.toAudioPacketDependencyInfoTranslation;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioFilePacketTableInfo)) == 0) {
		AudioFilePacketTableInfo returnValue = value.toAudioFilePacketTableInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioPacketRangeByteCountTranslation)) == 0) {
		AudioPacketRangeByteCountTranslation returnValue = value.toAudioPacketRangeByteCountTranslation;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioPacketRollDistanceTranslation)) == 0) {
		AudioPacketRollDistanceTranslation returnValue = value.toAudioPacketRollDistanceTranslation;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioFramePacketTranslation)) == 0) {
		AudioFramePacketTranslation returnValue = value.toAudioFramePacketTranslation;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioFile_SMPTE_Time)) == 0) {
		AudioFile_SMPTE_Time returnValue = value.toAudioFile_SMPTE_Time;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioIndependentPacketTranslation)) == 0) {
		AudioIndependentPacketTranslation returnValue = value.toAudioIndependentPacketTranslation;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioBytePacketTranslation)) == 0) {
		AudioBytePacketTranslation returnValue = value.toAudioBytePacketTranslation;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioFileTypeAndFormatID)) == 0) {
		AudioFileTypeAndFormatID returnValue = value.toAudioFileTypeAndFormatID;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFStringID)) == 0) {
		CAFStringID returnValue = value.toCAFStringID;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFAudioDescription)) == 0) {
		CAFAudioDescription returnValue = value.toCAFAudioDescription;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFFileHeader)) == 0) {
		CAFFileHeader returnValue = value.toCAFFileHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFInfoStrings)) == 0) {
		CAFInfoStrings returnValue = value.toCAFInfoStrings;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFPositionPeak)) == 0) {
		CAFPositionPeak returnValue = value.toCAFPositionPeak;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFOverviewSample)) == 0) {
		CAFOverviewSample returnValue = value.toCAFOverviewSample;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFChunkHeader)) == 0) {
		CAFChunkHeader returnValue = value.toCAFChunkHeader;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAF_SMPTE_Time)) == 0) {
		CAF_SMPTE_Time returnValue = value.toCAF_SMPTE_Time;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFInstrumentChunk)) == 0) {
		CAFInstrumentChunk returnValue = value.toCAFInstrumentChunk;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CAFMarker)) == 0) {
		CAFMarker returnValue = value.toCAFMarker;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AUParameterAutomationEvent)) == 0) {
		AUParameterAutomationEvent returnValue = value.toAUParameterAutomationEvent;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AURecordedParameterEvent)) == 0) {
		AURecordedParameterEvent returnValue = value.toAURecordedParameterEvent;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioQueueParameterEvent)) == 0) {
		AudioQueueParameterEvent returnValue = value.toAudioQueueParameterEvent;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioQueueLevelMeterState)) == 0) {
		AudioQueueLevelMeterState returnValue = value.toAudioQueueLevelMeterState;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioUnitNodeConnection)) == 0) {
		AudioUnitNodeConnection returnValue = value.toAudioUnitNodeConnection;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AUDependentParameter)) == 0) {
		AUDependentParameter returnValue = value.toAUDependentParameter;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioUnitMeterClipping)) == 0) {
		AudioUnitMeterClipping returnValue = value.toAudioUnitMeterClipping;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AUChannelInfo)) == 0) {
		AUChannelInfo returnValue = value.toAUChannelInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MixerDistanceParams)) == 0) {
		MixerDistanceParams returnValue = value.toMixerDistanceParams;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioUnitFrequencyResponseBin)) == 0) {
		AudioUnitFrequencyResponseBin returnValue = value.toAudioUnitFrequencyResponseBin;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioOutputUnitStartAtTimeParams)) == 0) {
		AudioOutputUnitStartAtTimeParams returnValue = value.toAudioOutputUnitStartAtTimeParams;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioUnitParameterHistoryInfo)) == 0) {
		AudioUnitParameterHistoryInfo returnValue = value.toAudioUnitParameterHistoryInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(NoteParamsControlValue)) == 0) {
		NoteParamsControlValue returnValue = value.toNoteParamsControlValue;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MusicDeviceStdNoteParams)) == 0) {
		MusicDeviceStdNoteParams returnValue = value.toMusicDeviceStdNoteParams;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioComponentDescription)) == 0) {
		AudioComponentDescription returnValue = value.toAudioComponentDescription;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

