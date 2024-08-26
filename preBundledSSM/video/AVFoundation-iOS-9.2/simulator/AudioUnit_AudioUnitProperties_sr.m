if (strcmp(type, @encode(AUChannelInfo)) == 0) {
		AUChannelInfo returnValue = value.toAUChannelInfo;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AUDependentParameter)) == 0) {
		AUDependentParameter returnValue = value.toAUDependentParameter;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioUnitMeterClipping)) == 0) {
		AudioUnitMeterClipping returnValue = value.toAudioUnitMeterClipping;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(MixerDistanceParams)) == 0) {
		MixerDistanceParams returnValue = value.toMixerDistanceParams;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioOutputUnitStartAtTimeParams)) == 0) {
		AudioOutputUnitStartAtTimeParams returnValue = value.toAudioOutputUnitStartAtTimeParams;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioUnitFrequencyResponseBin)) == 0) {
		AudioUnitFrequencyResponseBin returnValue = value.toAudioUnitFrequencyResponseBin;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioUnitParameterHistoryInfo)) == 0) {
		AudioUnitParameterHistoryInfo returnValue = value.toAudioUnitParameterHistoryInfo;
		[invocation setReturnValue: &returnValue];
	}