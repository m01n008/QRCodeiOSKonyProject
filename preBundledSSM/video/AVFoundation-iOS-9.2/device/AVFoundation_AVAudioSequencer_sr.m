if (strcmp(type, @encode(AVBeatRange)) == 0) {
		AVBeatRange returnValue = value.toAVBeatRange;
		[invocation setReturnValue: &returnValue];
	}