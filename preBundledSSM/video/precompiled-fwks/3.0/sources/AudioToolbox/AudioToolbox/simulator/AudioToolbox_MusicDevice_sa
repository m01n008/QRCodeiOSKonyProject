if (strcmp(type, @encode(NoteParamsControlValue)) == 0) {
		NoteParamsControlValue argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNoteParamsControlValue: argument inContext: context];
	} else if (strcmp(type, @encode(MusicDeviceStdNoteParams)) == 0) {
		MusicDeviceStdNoteParams argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMusicDeviceStdNoteParams: argument inContext: context];
	}