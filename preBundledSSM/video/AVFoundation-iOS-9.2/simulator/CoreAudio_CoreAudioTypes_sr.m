if (strcmp(type, @encode(AudioValueRange)) == 0) {
		AudioValueRange returnValue = value.toAudioValueRange;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioStreamBasicDescription)) == 0) {
		AudioStreamBasicDescription returnValue = value.toAudioStreamBasicDescription;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioStreamPacketDescription)) == 0) {
		AudioStreamPacketDescription returnValue = value.toAudioStreamPacketDescription;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioClassDescription)) == 0) {
		AudioClassDescription returnValue = value.toAudioClassDescription;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(SMPTETime)) == 0) {
		SMPTETime returnValue = value.toSMPTETime;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioTimeStamp)) == 0) {
		AudioTimeStamp returnValue = value.toAudioTimeStamp;
		[invocation setReturnValue: &returnValue];
	}