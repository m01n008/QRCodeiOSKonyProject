if (strcmp(type, @encode(AudioUnitNodeConnection)) == 0) {
		AudioUnitNodeConnection returnValue = value.toAudioUnitNodeConnection;
		[invocation setReturnValue: &returnValue];
	}