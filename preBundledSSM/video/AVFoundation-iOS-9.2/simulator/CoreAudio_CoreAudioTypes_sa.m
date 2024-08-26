if (strcmp(type, @encode(AudioValueRange)) == 0) {
		AudioValueRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioValueRange: argument inContext: context];
	} else if (strcmp(type, @encode(AudioStreamBasicDescription)) == 0) {
		AudioStreamBasicDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioStreamBasicDescription: argument inContext: context];
	} else if (strcmp(type, @encode(AudioStreamPacketDescription)) == 0) {
		AudioStreamPacketDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioStreamPacketDescription: argument inContext: context];
	} else if (strcmp(type, @encode(AudioClassDescription)) == 0) {
		AudioClassDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioClassDescription: argument inContext: context];
	} else if (strcmp(type, @encode(SMPTETime)) == 0) {
		SMPTETime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSMPTETime: argument inContext: context];
	} else if (strcmp(type, @encode(AudioTimeStamp)) == 0) {
		AudioTimeStamp argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioTimeStamp: argument inContext: context];
	}