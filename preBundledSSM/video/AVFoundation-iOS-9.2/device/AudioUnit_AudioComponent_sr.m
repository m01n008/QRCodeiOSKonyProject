if (strcmp(type, @encode(AudioComponentDescription)) == 0) {
		AudioComponentDescription returnValue = value.toAudioComponentDescription;
		[invocation setReturnValue: &returnValue];
	}