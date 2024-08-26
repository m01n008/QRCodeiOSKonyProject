if (strcmp(type, @encode(NoteParamsControlValue)) == 0) {
		NoteParamsControlValue returnValue = value.toNoteParamsControlValue;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(MusicDeviceStdNoteParams)) == 0) {
		MusicDeviceStdNoteParams returnValue = value.toMusicDeviceStdNoteParams;
		[invocation setReturnValue: &returnValue];
	}