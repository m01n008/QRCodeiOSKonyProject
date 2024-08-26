if (strcmp(type, @encode(AVPixelAspectRatio)) == 0) {
		AVPixelAspectRatio argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVPixelAspectRatio: argument inContext: context];
	} else if (strcmp(type, @encode(AVEdgeWidths)) == 0) {
		AVEdgeWidths argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVEdgeWidths: argument inContext: context];
	}