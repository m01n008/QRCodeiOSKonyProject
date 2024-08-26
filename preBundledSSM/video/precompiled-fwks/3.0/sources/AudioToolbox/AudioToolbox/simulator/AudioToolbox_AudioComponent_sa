if (strcmp(type, @encode(AudioComponentDescription)) == 0) {
		AudioComponentDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioComponentDescription: argument inContext: context];
	}