#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AUAudioUnitBus (Exports)
-(BOOL) jssetFormat: (AVAudioFormat *) format error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setFormat: format error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AUAudioUnitBusArray (Exports)
-(BOOL) jssetBusCount: (NSUInteger) count error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setBusCount: count error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitWithAudioUnit: (AUAudioUnit *) owner busType: (AUAudioUnitBusType) busType 
{
	id resultVal__;
	resultVal__ = [[self initWithAudioUnit: owner busType: busType ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAudioUnit: (AUAudioUnit *) owner busType: (AUAudioUnitBusType) busType busses: (NSArray *) busArray 
{
	id resultVal__;
	resultVal__ = [[self initWithAudioUnit: owner busType: busType busses: busArray ] autorelease];
	return resultVal__;
}
@end
@implementation AUAudioUnit (AUAudioUnitAUAudioInputOutputUnitCategoryExports)
-(BOOL) jsstartHardwareAndReturnError: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self startHardwareAndReturnError: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(JSValue *) getJsOutputProvider
{
	return [JSValue valueWithObject: self.outputProvider inContext: [JSContext currentContext]];
}
-(void) setJsOutputProvider: (JSValue *) value
{
	AUAudioUnitStatus (^ value_)(AudioUnitRenderActionFlags * , const AudioTimeStamp * , AUAudioFrameCount, NSInteger, AudioBufferList * ) = nil;
	if (!value.isUndefined) {
		value_ = ^AUAudioUnitStatus(AudioUnitRenderActionFlags * arg0, const AudioTimeStamp * arg1, AUAudioFrameCount arg2, NSInteger arg3, AudioBufferList * arg4) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg2) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg3) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toDouble];
		};
	}
	self.outputProvider = value_;
}
-(JSValue *) getJsInputHandler
{
	return [JSValue valueWithObject: self.inputHandler inContext: [JSContext currentContext]];
}
-(void) setJsInputHandler: (JSValue *) value
{
	void (^ value_)(AudioUnitRenderActionFlags * , const AudioTimeStamp * , AUAudioFrameCount, NSInteger) = nil;
	if (!value.isUndefined) {
		value_ = ^void(AudioUnitRenderActionFlags * arg0, const AudioTimeStamp * arg1, AUAudioFrameCount arg2, NSInteger arg3) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg2) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg3) inContext: __jsContext]];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.inputHandler = value_;
}
@end
@implementation AUAudioUnitPreset (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation AUAudioUnit (Exports)
-(id) jsinitWithComponentDescription: (AudioComponentDescription) componentDescription options: (AudioComponentInstantiationOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithComponentDescription: componentDescription options: options error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsallocateRenderResourcesAndReturnError: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self allocateRenderResourcesAndReturnError: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsdisableProfile: (MIDICIProfile *) profile cable: (uint8_t) cable onChannel: (MIDIChannelNumber) channel error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self disableProfile: profile cable: cable onChannel: channel error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(NSDictionary *) jspresetStateFor: (AUAudioUnitPreset *) userPreset error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	NSDictionary * resultVal__;
	resultVal__ = [self presetStateFor: userPreset error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsdeleteUserPreset: (AUAudioUnitPreset *) userPreset error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self deleteUserPreset: userPreset error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsenableProfile: (MIDICIProfile *) profile cable: (uint8_t) cable onChannel: (MIDIChannelNumber) channel error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self enableProfile: profile cable: cable onChannel: channel error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitWithComponentDescription: (AudioComponentDescription) componentDescription error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithComponentDescription: componentDescription error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssaveUserPreset: (AUAudioUnitPreset *) userPreset error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self saveUserPreset: userPreset error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(void) jsinstantiateWithComponentDescription: (AudioComponentDescription) componentDescription options: (AudioComponentInstantiationOptions) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(AUAudioUnit * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(AUAudioUnit * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self instantiateWithComponentDescription: componentDescription options: options completionHandler: completionHandler_ ];
}
-(JSValue *) getJsTransportStateBlock
{
	return [JSValue valueWithObject: self.transportStateBlock inContext: [JSContext currentContext]];
}
-(void) setJsTransportStateBlock: (JSValue *) value
{
	BOOL (^ value_)(AUHostTransportStateFlags * , double * , double * , double * ) = nil;
	if (!value.isUndefined) {
		value_ = ^BOOL(AUHostTransportStateFlags * arg0, double * arg1, double * arg2, double * arg3) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toInt32];
		};
	}
	self.transportStateBlock = value_;
}
-(JSValue *) getJsProfileChangedBlock
{
	return [JSValue valueWithObject: self.profileChangedBlock inContext: [JSContext currentContext]];
}
-(void) setJsProfileChangedBlock: (JSValue *) value
{
	void (^ value_)(uint8_t, MIDIChannelNumber, MIDICIProfile * , BOOL) = nil;
	if (!value.isUndefined) {
		value_ = ^void(uint8_t arg0, MIDIChannelNumber arg1, MIDICIProfile * arg2, BOOL arg3) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg3) inContext: __jsContext]];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.profileChangedBlock = value_;
}
-(JSValue *) getJsRenderBlock
{
	return [JSValue valueWithObject: self.renderBlock inContext: [JSContext currentContext]];
}
-(JSValue *) getJsScheduleParameterBlock
{
	return [JSValue valueWithObject: self.scheduleParameterBlock inContext: [JSContext currentContext]];
}
-(JSValue *) getJsMIDIOutputEventBlock
{
	return [JSValue valueWithObject: self.MIDIOutputEventBlock inContext: [JSContext currentContext]];
}
-(void) setJsMIDIOutputEventBlock: (JSValue *) value
{
	OSStatus (^ value_)(AUEventSampleTime, uint8_t, NSInteger, const uint8_t * ) = nil;
	if (!value.isUndefined) {
		value_ = ^OSStatus(AUEventSampleTime arg0, uint8_t arg1, NSInteger arg2, const uint8_t * arg3) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg2) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toDouble];
		};
	}
	self.MIDIOutputEventBlock = value_;
}
-(JSValue *) getJsScheduleMIDIEventBlock
{
	return [JSValue valueWithObject: self.scheduleMIDIEventBlock inContext: [JSContext currentContext]];
}
-(JSValue *) getJsMusicalContextBlock
{
	return [JSValue valueWithObject: self.musicalContextBlock inContext: [JSContext currentContext]];
}
-(void) setJsMusicalContextBlock: (JSValue *) value
{
	BOOL (^ value_)(double * , double * , NSInteger * , double * , NSInteger * , double * ) = nil;
	if (!value.isUndefined) {
		value_ = ^BOOL(double * arg0, double * arg1, NSInteger * arg2, double * arg3, NSInteger * arg4, double * arg5) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toInt32];
		};
	}
	self.musicalContextBlock = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([AUAudioUnitBus class], @protocol(AUAudioUnitBusInstanceExports));
	class_addProtocol([AUAudioUnitBus class], @protocol(AUAudioUnitBusClassExports));
	class_addProtocol([AUAudioUnitBusArray class], @protocol(AUAudioUnitBusArrayInstanceExports));
	class_addProtocol([AUAudioUnitBusArray class], @protocol(AUAudioUnitBusArrayClassExports));
	class_addProtocol([AUAudioUnit class], @protocol(AUAudioUnitAUAudioInputOutputUnitCategoryInstanceExports));
	class_addProtocol([AUAudioUnit class], @protocol(AUAudioUnitAUAudioInputOutputUnitCategoryClassExports));
	class_addProtocol([AUAudioUnitPreset class], @protocol(AUAudioUnitPresetInstanceExports));
	class_addProtocol([AUAudioUnitPreset class], @protocol(AUAudioUnitPresetClassExports));
	class_addProtocol([AUAudioUnit class], @protocol(AUAudioUnitInstanceExports));
	class_addProtocol([AUAudioUnit class], @protocol(AUAudioUnitClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AUEventSampleTimeImmediate"] = @-4294967296LL;

	context[@"AUAudioUnitBusTypeInput"] = @1;
	context[@"AUAudioUnitBusTypeOutput"] = @2;

	context[@"AUHostTransportStateChanged"] = @1U;
	context[@"AUHostTransportStateMoving"] = @2U;
	context[@"AUHostTransportStateRecording"] = @4U;
	context[@"AUHostTransportStateCycling"] = @8U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AUAudioUnit_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
