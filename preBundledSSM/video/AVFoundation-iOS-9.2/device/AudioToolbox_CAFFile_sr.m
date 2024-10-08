if (strcmp(type, @encode(CAFStringID)) == 0) {
		CAFStringID returnValue = value.toCAFStringID;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFAudioDescription)) == 0) {
		CAFAudioDescription returnValue = value.toCAFAudioDescription;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFFileHeader)) == 0) {
		CAFFileHeader returnValue = value.toCAFFileHeader;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFChunkHeader)) == 0) {
		CAFChunkHeader returnValue = value.toCAFChunkHeader;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFInfoStrings)) == 0) {
		CAFInfoStrings returnValue = value.toCAFInfoStrings;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFPositionPeak)) == 0) {
		CAFPositionPeak returnValue = value.toCAFPositionPeak;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFOverviewSample)) == 0) {
		CAFOverviewSample returnValue = value.toCAFOverviewSample;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAF_SMPTE_Time)) == 0) {
		CAF_SMPTE_Time returnValue = value.toCAF_SMPTE_Time;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFInstrumentChunk)) == 0) {
		CAFInstrumentChunk returnValue = value.toCAFInstrumentChunk;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CAFMarker)) == 0) {
		CAFMarker returnValue = value.toCAFMarker;
		[invocation setReturnValue: &returnValue];
	}