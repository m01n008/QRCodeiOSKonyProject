if (strcmp(type, @encode(AudioUnitNodeConnection)) == 0) {
		AudioUnitNodeConnection argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitNodeConnection: argument inContext: context];
	}