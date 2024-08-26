if (strcmp(type, @encode(AVAudioConverterPrimeInfo)) == 0) {
		AVAudioConverterPrimeInfo returnValue = value.toAVAudioConverterPrimeInfo;
		[invocation setReturnValue: &returnValue];
	}