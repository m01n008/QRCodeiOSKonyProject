#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AUAudioUnit (AUAudioUnitAUAudioUnitImplementationCategoryExports)
+(void) jsregisterSubclass: (JSValue *) cls asComponentDescription: (AudioComponentDescription) componentDescription name: (NSString *) name version: (UInt32) version 
{
	Class cls_ = objc_getClass([[cls[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self registerSubclass: cls_ asComponentDescription: componentDescription name: name version: version ];
}
-(JSValue *) getJsInternalRenderBlock
{
	return [JSValue valueWithObject: self.internalRenderBlock inContext: [JSContext currentContext]];
}
@end
@implementation AUAudioUnitBus (AUAudioUnitBusAUAudioUnitImplementationCategoryExports)
-(id) jsinitWithFormat: (AVAudioFormat *) format error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithFormat: format error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AUParameterNode (AUParameterNodeAUParameterNodeImplementationCategoryExports)
-(JSValue *) getJsImplementorValueProvider
{
	return [JSValue valueWithObject: self.implementorValueProvider inContext: [JSContext currentContext]];
}
-(void) setJsImplementorValueProvider: (JSValue *) value
{
	AUValue (^ value_)(AUParameter * ) = nil;
	if (!value.isUndefined) {
		value_ = ^AUValue(AUParameter * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toDouble];
		};
	}
	self.implementorValueProvider = value_;
}
-(JSValue *) getJsImplementorValueObserver
{
	return [JSValue valueWithObject: self.implementorValueObserver inContext: [JSContext currentContext]];
}
-(void) setJsImplementorValueObserver: (JSValue *) value
{
	void (^ value_)(AUParameter * , AUValue) = nil;
	if (!value.isUndefined) {
		value_ = ^void(AUParameter * arg0, AUValue arg1) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.implementorValueObserver = value_;
}
-(JSValue *) getJsImplementorValueFromStringCallback
{
	return [JSValue valueWithObject: self.implementorValueFromStringCallback inContext: [JSContext currentContext]];
}
-(void) setJsImplementorValueFromStringCallback: (JSValue *) value
{
	AUValue (^ value_)(AUParameter * , NSString * ) = nil;
	if (!value.isUndefined) {
		value_ = ^AUValue(AUParameter * arg0, NSString * arg1) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toDouble];
		};
	}
	self.implementorValueFromStringCallback = value_;
}
-(JSValue *) getJsImplementorDisplayNameWithLengthCallback
{
	return [JSValue valueWithObject: self.implementorDisplayNameWithLengthCallback inContext: [JSContext currentContext]];
}
-(void) setJsImplementorDisplayNameWithLengthCallback: (JSValue *) value
{
	NSString *  (^ value_)(AUParameterNode * , NSInteger) = nil;
	if (!value.isUndefined) {
		value_ = ^NSString *(AUParameterNode * arg0, NSInteger arg1) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.implementorDisplayNameWithLengthCallback = value_;
}
-(JSValue *) getJsImplementorStringFromValueCallback
{
	return [JSValue valueWithObject: self.implementorStringFromValueCallback inContext: [JSContext currentContext]];
}
-(void) setJsImplementorStringFromValueCallback: (JSValue *) value
{
	NSString *  (^ value_)(AUParameter * , const AUValue * ) = nil;
	if (!value.isUndefined) {
		value_ = ^NSString *(AUParameter * arg0, const AUValue * arg1) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithNullInContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.implementorStringFromValueCallback = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([AUAudioUnit class], @protocol(AUAudioUnitAUAudioUnitImplementationCategoryInstanceExports));
	class_addProtocol([AUAudioUnit class], @protocol(AUAudioUnitAUAudioUnitImplementationCategoryClassExports));
	class_addProtocol([AUParameterTree class], @protocol(AUParameterTreeFactoryCategoryInstanceExports));
	class_addProtocol([AUParameterTree class], @protocol(AUParameterTreeFactoryCategoryClassExports));
	class_addProtocol([AUAudioUnitBusArray class], @protocol(AUAudioUnitBusArrayAUAudioUnitBusImplementationCategoryInstanceExports));
	class_addProtocol([AUAudioUnitBusArray class], @protocol(AUAudioUnitBusArrayAUAudioUnitBusImplementationCategoryClassExports));
	class_addProtocol([AUAudioUnitBus class], @protocol(AUAudioUnitBusAUAudioUnitImplementationCategoryInstanceExports));
	class_addProtocol([AUAudioUnitBus class], @protocol(AUAudioUnitBusAUAudioUnitImplementationCategoryClassExports));
	class_addProtocol([AUAudioUnitV2Bridge class], @protocol(AUAudioUnitV2BridgeInstanceExports));
	class_addProtocol([AUAudioUnitV2Bridge class], @protocol(AUAudioUnitV2BridgeClassExports));
	class_addProtocol([AUParameterNode class], @protocol(AUParameterNodeAUParameterNodeImplementationCategoryInstanceExports));
	class_addProtocol([AUParameterNode class], @protocol(AUParameterNodeAUParameterNodeImplementationCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AURenderEventParameter"] = @1;
	context[@"AURenderEventParameterRamp"] = @2;
	context[@"AURenderEventMIDI"] = @8;
	context[@"AURenderEventMIDISysEx"] = @9;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AudioUnit_AUAudioUnitImplementationProtocols()
{
	(void)@protocol(AUAudioUnitFactory);
}
void load_AudioUnit_AUAudioUnitImplementation_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
