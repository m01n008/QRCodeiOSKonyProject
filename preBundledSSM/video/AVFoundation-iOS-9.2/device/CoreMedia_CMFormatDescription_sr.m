if (strcmp(type, @encode(CMVideoDimensions)) == 0) {
		CMVideoDimensions returnValue = value.toCMVideoDimensions;
		[invocation setReturnValue: &returnValue];
	}