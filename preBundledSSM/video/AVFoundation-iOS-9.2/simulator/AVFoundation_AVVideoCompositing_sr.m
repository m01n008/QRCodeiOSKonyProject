if (strcmp(type, @encode(AVPixelAspectRatio)) == 0) {
		AVPixelAspectRatio returnValue = value.toAVPixelAspectRatio;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AVEdgeWidths)) == 0) {
		AVEdgeWidths returnValue = value.toAVEdgeWidths;
		[invocation setReturnValue: &returnValue];
	}