if (strcmp(type, @encode(AudioFilePacketTableInfo)) == 0) {
		AudioFilePacketTableInfo returnValue = value.toAudioFilePacketTableInfo;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioFramePacketTranslation)) == 0) {
		AudioFramePacketTranslation returnValue = value.toAudioFramePacketTranslation;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioFile_SMPTE_Time)) == 0) {
		AudioFile_SMPTE_Time returnValue = value.toAudioFile_SMPTE_Time;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioBytePacketTranslation)) == 0) {
		AudioBytePacketTranslation returnValue = value.toAudioBytePacketTranslation;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AudioFileTypeAndFormatID)) == 0) {
		AudioFileTypeAndFormatID returnValue = value.toAudioFileTypeAndFormatID;
		[invocation setReturnValue: &returnValue];
	}