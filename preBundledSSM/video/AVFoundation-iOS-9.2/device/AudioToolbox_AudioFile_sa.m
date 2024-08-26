if (strcmp(type, @encode(AudioFilePacketTableInfo)) == 0) {
		AudioFilePacketTableInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFilePacketTableInfo: argument inContext: context];
	} else if (strcmp(type, @encode(AudioFramePacketTranslation)) == 0) {
		AudioFramePacketTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFramePacketTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioFile_SMPTE_Time)) == 0) {
		AudioFile_SMPTE_Time argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFile_SMPTE_Time: argument inContext: context];
	} else if (strcmp(type, @encode(AudioBytePacketTranslation)) == 0) {
		AudioBytePacketTranslation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioBytePacketTranslation: argument inContext: context];
	} else if (strcmp(type, @encode(AudioFileTypeAndFormatID)) == 0) {
		AudioFileTypeAndFormatID argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFileTypeAndFormatID: argument inContext: context];
	}