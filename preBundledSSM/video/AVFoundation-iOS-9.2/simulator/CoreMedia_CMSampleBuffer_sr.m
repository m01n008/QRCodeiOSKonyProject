if (strcmp(type, @encode(CMSampleTimingInfo)) == 0) {
		CMSampleTimingInfo returnValue = value.toCMSampleTimingInfo;
		[invocation setReturnValue: &returnValue];
	}