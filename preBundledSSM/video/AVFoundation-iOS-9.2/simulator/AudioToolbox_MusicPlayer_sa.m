if (strcmp(type, @encode(ParameterEvent)) == 0) {
		ParameterEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithParameterEvent: argument inContext: context];
	} else if (strcmp(type, @encode(MusicTrackLoopInfo)) == 0) {
		MusicTrackLoopInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMusicTrackLoopInfo: argument inContext: context];
	} else if (strcmp(type, @encode(ExtendedTempoEvent)) == 0) {
		ExtendedTempoEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithExtendedTempoEvent: argument inContext: context];
	} else if (strcmp(type, @encode(MIDINoteMessage)) == 0) {
		MIDINoteMessage argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDINoteMessage: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIChannelMessage)) == 0) {
		MIDIChannelMessage argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIChannelMessage: argument inContext: context];
	} else if (strcmp(type, @encode(CABarBeatTime)) == 0) {
		CABarBeatTime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCABarBeatTime: argument inContext: context];
	}