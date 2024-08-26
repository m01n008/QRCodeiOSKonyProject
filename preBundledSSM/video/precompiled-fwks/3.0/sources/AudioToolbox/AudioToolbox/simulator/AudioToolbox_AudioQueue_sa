if (strcmp(type, @encode(AudioQueueParameterEvent)) == 0) {
		AudioQueueParameterEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioQueueParameterEvent: argument inContext: context];
	} else if (strcmp(type, @encode(AudioQueueLevelMeterState)) == 0) {
		AudioQueueLevelMeterState argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioQueueLevelMeterState: argument inContext: context];
	}