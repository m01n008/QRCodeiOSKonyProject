if (strcmp(type, @encode(AVCaptureWhiteBalanceChromaticityValues)) == 0) {
		AVCaptureWhiteBalanceChromaticityValues returnValue = value.toAVCaptureWhiteBalanceChromaticityValues;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AVCaptureWhiteBalanceTemperatureAndTintValues)) == 0) {
		AVCaptureWhiteBalanceTemperatureAndTintValues returnValue = value.toAVCaptureWhiteBalanceTemperatureAndTintValues;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AVCaptureWhiteBalanceGains)) == 0) {
		AVCaptureWhiteBalanceGains returnValue = value.toAVCaptureWhiteBalanceGains;
		[invocation setReturnValue: &returnValue];
	}