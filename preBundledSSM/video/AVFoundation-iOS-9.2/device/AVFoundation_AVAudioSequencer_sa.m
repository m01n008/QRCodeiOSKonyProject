if (strcmp(type, @encode(AVBeatRange)) == 0) {
		AVBeatRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVBeatRange: argument inContext: context];
	}