if (strcmp(type, @encode(ParameterEvent)) == 0) {
		ParameterEvent returnValue = value.toParameterEvent;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(MusicTrackLoopInfo)) == 0) {
		MusicTrackLoopInfo returnValue = value.toMusicTrackLoopInfo;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(ExtendedTempoEvent)) == 0) {
		ExtendedTempoEvent returnValue = value.toExtendedTempoEvent;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(MIDINoteMessage)) == 0) {
		MIDINoteMessage returnValue = value.toMIDINoteMessage;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(MIDIChannelMessage)) == 0) {
		MIDIChannelMessage returnValue = value.toMIDIChannelMessage;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CABarBeatTime)) == 0) {
		CABarBeatTime returnValue = value.toCABarBeatTime;
		[invocation setReturnValue: &returnValue];
	}