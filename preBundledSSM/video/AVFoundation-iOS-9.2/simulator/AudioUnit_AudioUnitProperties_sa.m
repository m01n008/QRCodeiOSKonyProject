if (strcmp(type, @encode(AUChannelInfo)) == 0) {
		AUChannelInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAUChannelInfo: argument inContext: context];
	} else if (strcmp(type, @encode(AUDependentParameter)) == 0) {
		AUDependentParameter argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAUDependentParameter: argument inContext: context];
	} else if (strcmp(type, @encode(AudioUnitMeterClipping)) == 0) {
		AudioUnitMeterClipping argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitMeterClipping: argument inContext: context];
	} else if (strcmp(type, @encode(MixerDistanceParams)) == 0) {
		MixerDistanceParams argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMixerDistanceParams: argument inContext: context];
	} else if (strcmp(type, @encode(AudioOutputUnitStartAtTimeParams)) == 0) {
		AudioOutputUnitStartAtTimeParams argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioOutputUnitStartAtTimeParams: argument inContext: context];
	} else if (strcmp(type, @encode(AudioUnitFrequencyResponseBin)) == 0) {
		AudioUnitFrequencyResponseBin argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitFrequencyResponseBin: argument inContext: context];
	} else if (strcmp(type, @encode(AudioUnitParameterHistoryInfo)) == 0) {
		AudioUnitParameterHistoryInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioUnitParameterHistoryInfo: argument inContext: context];
	}