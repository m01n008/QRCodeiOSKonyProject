if (strcmp(type, @encode(AURecordedParameterEvent)) == 0) {
		AURecordedParameterEvent returnValue = value.toAURecordedParameterEvent;
		[invocation setReturnValue: &returnValue];
	}