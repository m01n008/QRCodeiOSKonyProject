if (strcmp(type, @encode(CMTime)) == 0) {
		CMTime returnValue = value.toCMTime;
		[invocation setReturnValue: &returnValue];
	}