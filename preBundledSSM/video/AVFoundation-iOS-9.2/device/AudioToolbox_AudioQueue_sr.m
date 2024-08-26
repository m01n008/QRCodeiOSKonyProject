if (strcmp(type, @encode(AudioQueueParameterEvent)) == 0) {
		AudioQueueParameterEvent returnValue = value.toAudioQueueParameterEvent;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioQueueLevelMeterState)) == 0) {
		AudioQueueLevelMeterState returnValue = value.toAudioQueueLevelMeterState;
		[invocation setReturnValue: &returnValue];
	}