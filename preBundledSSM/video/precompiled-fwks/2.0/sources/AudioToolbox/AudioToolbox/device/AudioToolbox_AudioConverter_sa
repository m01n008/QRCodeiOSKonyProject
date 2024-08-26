if (strcmp(type, @encode(AudioConverterPrimeInfo)) == 0) {
		AudioConverterPrimeInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioConverterPrimeInfo: argument inContext: context];
	}