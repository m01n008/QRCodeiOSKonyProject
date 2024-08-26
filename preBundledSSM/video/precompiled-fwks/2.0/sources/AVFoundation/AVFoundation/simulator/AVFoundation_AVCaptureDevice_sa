if (strcmp(type, @encode(AVCaptureWhiteBalanceChromaticityValues)) == 0) {
		AVCaptureWhiteBalanceChromaticityValues argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVCaptureWhiteBalanceChromaticityValues: argument inContext: context];
	} else if (strcmp(type, @encode(AVCaptureWhiteBalanceTemperatureAndTintValues)) == 0) {
		AVCaptureWhiteBalanceTemperatureAndTintValues argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVCaptureWhiteBalanceTemperatureAndTintValues: argument inContext: context];
	} else if (strcmp(type, @encode(AVCaptureWhiteBalanceGains)) == 0) {
		AVCaptureWhiteBalanceGains argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVCaptureWhiteBalanceGains: argument inContext: context];
	}