if (strcmp(type, @encode(MIDIObjectAddRemoveNotification)) == 0) {
		MIDIObjectAddRemoveNotification argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIObjectAddRemoveNotification: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIIOErrorNotification)) == 0) {
		MIDIIOErrorNotification argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIIOErrorNotification: argument inContext: context];
	} else if (strcmp(type, @encode(MIDINotification)) == 0) {
		MIDINotification argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDINotification: argument inContext: context];
	}