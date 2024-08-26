if (strcmp(type, @encode(CMTimeRange)) == 0) {
		CMTimeRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMTimeRange: argument inContext: context];
	} else if (strcmp(type, @encode(CMTimeMapping)) == 0) {
		CMTimeMapping argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMTimeMapping: argument inContext: context];
	}