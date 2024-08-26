if (strcmp(type, @encode(MIDIObjectAddRemoveNotification)) == 0) {
		MIDIObjectAddRemoveNotification returnValue = value.toMIDIObjectAddRemoveNotification;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(MIDIIOErrorNotification)) == 0) {
		MIDIIOErrorNotification returnValue = value.toMIDIIOErrorNotification;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(MIDINotification)) == 0) {
		MIDINotification returnValue = value.toMIDINotification;
		[invocation setReturnValue: &returnValue];
	}