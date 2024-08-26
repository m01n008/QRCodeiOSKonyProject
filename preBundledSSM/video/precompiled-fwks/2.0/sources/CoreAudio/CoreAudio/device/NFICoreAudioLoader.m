#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreAudioModules(JSContext* context)
{
	load_CoreAudio_CoreAudioTypes_symbols(context);
}

JSValue* extractNFICoreAudioStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(AudioValueRange)) == 0) {
		AudioValueRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioValueRange: argument inContext: context];
	} else if (strcmp(type, @encode(AudioClassDescription)) == 0) {
		AudioClassDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioClassDescription: argument inContext: context];
	} else if (strcmp(type, @encode(SMPTETime)) == 0) {
		SMPTETime argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithSMPTETime: argument inContext: context];
	} else if (strcmp(type, @encode(AudioTimeStamp)) == 0) {
		AudioTimeStamp argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioTimeStamp: argument inContext: context];
	} else if (strcmp(type, @encode(AudioStreamPacketDescription)) == 0) {
		AudioStreamPacketDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioStreamPacketDescription: argument inContext: context];
	} else if (strcmp(type, @encode(AudioStreamBasicDescription)) == 0) {
		AudioStreamBasicDescription argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithAudioStreamBasicDescription: argument inContext: context];
	}    
    return nil;
}

BOOL setNFICoreAudioStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(AudioValueRange)) == 0) {
		AudioValueRange returnValue = value.toAudioValueRange;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioClassDescription)) == 0) {
		AudioClassDescription returnValue = value.toAudioClassDescription;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(SMPTETime)) == 0) {
		SMPTETime returnValue = value.toSMPTETime;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioTimeStamp)) == 0) {
		AudioTimeStamp returnValue = value.toAudioTimeStamp;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioStreamPacketDescription)) == 0) {
		AudioStreamPacketDescription returnValue = value.toAudioStreamPacketDescription;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(AudioStreamBasicDescription)) == 0) {
		AudioStreamBasicDescription returnValue = value.toAudioStreamBasicDescription;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

