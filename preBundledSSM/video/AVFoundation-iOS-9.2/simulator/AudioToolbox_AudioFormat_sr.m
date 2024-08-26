if (strcmp(type, @encode(AudioFormatListItem)) == 0) {
		AudioFormatListItem returnValue = value.toAudioFormatListItem;
		[invocation setReturnValue: &returnValue];
	}