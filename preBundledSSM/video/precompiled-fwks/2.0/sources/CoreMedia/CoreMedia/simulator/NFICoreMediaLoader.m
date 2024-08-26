#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreMediaModules(JSContext* context)
{
	load_CoreMedia_CMFormatDescriptionBridge_symbols(context);
	load_CoreMedia_CMFormatDescription_symbols(context);
	load_CoreMedia_CMTimeRange_symbols(context);
	load_CoreMedia_CMMetadata_symbols(context);
	load_CoreMedia_CMSampleBuffer_symbols(context);
	load_CoreMedia_CMBlockBuffer_symbols(context);
	load_CoreMedia_CMBufferQueue_symbols(context);
	load_CoreMedia_CMSync_symbols(context);
	load_CoreMedia_CMBase_symbols(context);
	load_CoreMedia_CMTime_symbols(context);
	load_CoreMedia_CMAttachment_symbols(context);
	load_CoreMedia_CMMemoryPool_symbols(context);
	load_CoreMedia_CMAudioClock_symbols(context);
	load_CoreMedia_CMTextMarkup_symbols(context);
	load_CoreMedia_CMSimpleQueue_symbols(context);
}

JSValue* extractNFICoreMediaStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(CMVideoDimensions)) == 0) {
		CMVideoDimensions argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMVideoDimensions: argument inContext: context];
	} else if (strcmp(type, @encode(CMTimeMapping)) == 0) {
		CMTimeMapping argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMTimeMapping: argument inContext: context];
	} else if (strcmp(type, @encode(CMTimeRange)) == 0) {
		CMTimeRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMTimeRange: argument inContext: context];
	} else if (strcmp(type, @encode(CMSampleTimingInfo)) == 0) {
		CMSampleTimingInfo argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMSampleTimingInfo: argument inContext: context];
	} else if (strcmp(type, @encode(CMTime)) == 0) {
		CMTime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCMTime: argument inContext: context];
	}    
    return nil;
}

BOOL setNFICoreMediaStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(CMVideoDimensions)) == 0) {
		CMVideoDimensions returnValue = value.toCMVideoDimensions;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CMTimeMapping)) == 0) {
		CMTimeMapping returnValue = value.toCMTimeMapping;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CMTimeRange)) == 0) {
		CMTimeRange returnValue = value.toCMTimeRange;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CMSampleTimingInfo)) == 0) {
		CMSampleTimingInfo returnValue = value.toCMSampleTimingInfo;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(CMTime)) == 0) {
		CMTime returnValue = value.toCMTime;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

