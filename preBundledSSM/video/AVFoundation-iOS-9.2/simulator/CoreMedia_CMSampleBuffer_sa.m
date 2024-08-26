if (strcmp(type, @encode(CMSampleTimingInfo)) == 0) {
		CMSampleTimingInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMSampleTimingInfo: argument inContext: context];
	}