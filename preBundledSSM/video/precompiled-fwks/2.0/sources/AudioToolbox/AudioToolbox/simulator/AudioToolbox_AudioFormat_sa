if (strcmp(type, @encode(AudioFormatListItem)) == 0) {
		AudioFormatListItem argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioFormatListItem: argument inContext: context];
	}