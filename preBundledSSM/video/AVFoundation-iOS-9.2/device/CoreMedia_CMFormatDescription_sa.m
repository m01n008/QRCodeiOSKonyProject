if (strcmp(type, @encode(CMVideoDimensions)) == 0) {
		CMVideoDimensions argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMVideoDimensions: argument inContext: context];
	}