if (strcmp(type, @encode(CAFStringID)) == 0) {
		CAFStringID argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFStringID: argument inContext: context];
	} else if (strcmp(type, @encode(CAFAudioDescription)) == 0) {
		CAFAudioDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFAudioDescription: argument inContext: context];
	} else if (strcmp(type, @encode(CAFFileHeader)) == 0) {
		CAFFileHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFFileHeader: argument inContext: context];
	} else if (strcmp(type, @encode(CAFChunkHeader)) == 0) {
		CAFChunkHeader argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFChunkHeader: argument inContext: context];
	} else if (strcmp(type, @encode(CAFInfoStrings)) == 0) {
		CAFInfoStrings argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFInfoStrings: argument inContext: context];
	} else if (strcmp(type, @encode(CAFPositionPeak)) == 0) {
		CAFPositionPeak argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFPositionPeak: argument inContext: context];
	} else if (strcmp(type, @encode(CAFOverviewSample)) == 0) {
		CAFOverviewSample argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFOverviewSample: argument inContext: context];
	} else if (strcmp(type, @encode(CAF_SMPTE_Time)) == 0) {
		CAF_SMPTE_Time argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAF_SMPTE_Time: argument inContext: context];
	} else if (strcmp(type, @encode(CAFInstrumentChunk)) == 0) {
		CAFInstrumentChunk argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFInstrumentChunk: argument inContext: context];
	} else if (strcmp(type, @encode(CAFMarker)) == 0) {
		CAFMarker argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCAFMarker: argument inContext: context];
	}