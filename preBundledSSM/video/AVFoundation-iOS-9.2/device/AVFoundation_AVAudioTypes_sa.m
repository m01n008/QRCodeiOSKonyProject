if (strcmp(type, @encode(AVAudio3DPoint)) == 0) {
		AVAudio3DPoint argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVAudio3DPoint: argument inContext: context];
	} else if (strcmp(type, @encode(AVAudio3DAngularOrientation)) == 0) {
		AVAudio3DAngularOrientation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVAudio3DAngularOrientation: argument inContext: context];
	} else if (strcmp(type, @encode(AVAudio3DVectorOrientation)) == 0) {
		AVAudio3DVectorOrientation argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAVAudio3DVectorOrientation: argument inContext: context];
	}