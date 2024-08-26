if (strcmp(type, @encode(CMTime)) == 0) {
		CMTime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMTime: argument inContext: context];
	}