if (strcmp(type, @encode(CMTimeRange)) == 0) {
		CMTimeRange returnValue = value.toCMTimeRange;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CMTimeMapping)) == 0) {
		CMTimeMapping returnValue = value.toCMTimeMapping;
		[invocation setReturnValue: &returnValue];
	}