if (strcmp(type, @encode(AVAudio3DPoint)) == 0) {
		AVAudio3DPoint returnValue = value.toAVAudio3DPoint;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AVAudio3DAngularOrientation)) == 0) {
		AVAudio3DAngularOrientation returnValue = value.toAVAudio3DAngularOrientation;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(AVAudio3DVectorOrientation)) == 0) {
		AVAudio3DVectorOrientation returnValue = value.toAVAudio3DVectorOrientation;
		[invocation setReturnValue: &returnValue];
	}