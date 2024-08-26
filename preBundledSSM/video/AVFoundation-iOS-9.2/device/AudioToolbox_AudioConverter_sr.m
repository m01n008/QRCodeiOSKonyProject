if (strcmp(type, @encode(AudioConverterPrimeInfo)) == 0) {
		AudioConverterPrimeInfo returnValue = value.toAudioConverterPrimeInfo;
		[invocation setReturnValue: &returnValue];
	}