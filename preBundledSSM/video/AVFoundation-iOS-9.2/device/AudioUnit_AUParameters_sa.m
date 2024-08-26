if (strcmp(type, @encode(AURecordedParameterEvent)) == 0) {
		AURecordedParameterEvent argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAURecordedParameterEvent: argument inContext: context];
	}