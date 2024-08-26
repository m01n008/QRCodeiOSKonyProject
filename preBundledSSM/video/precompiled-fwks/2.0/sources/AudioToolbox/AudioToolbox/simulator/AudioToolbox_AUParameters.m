#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AUParameters)
+(JSValue*) valueWithAUParameterAutomationEvent: (AUParameterAutomationEvent) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"hostTime": @(s.hostTime),
		@"address": @(s.address),
		@"value": @(s.value),
		@"eventType": @(s.eventType),
		@"reserved": @(s.reserved),
	} inContext: context];
}
-(AUParameterAutomationEvent) toAUParameterAutomationEvent {
	return (AUParameterAutomationEvent) {
		(uint64_t) [self[@"hostTime"] toDouble],
		(AUParameterAddress) [self[@"address"] toDouble],
		(AUValue) [self[@"value"] toDouble],
		(AUParameterAutomationEventType) [self[@"eventType"] toInt32],
		(uint64_t) [self[@"reserved"] toDouble],
	};
}
+(JSValue*) valueWithAURecordedParameterEvent: (AURecordedParameterEvent) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"hostTime": @(s.hostTime),
		@"address": @(s.address),
		@"value": @(s.value),
	} inContext: context];
}
-(AURecordedParameterEvent) toAURecordedParameterEvent {
	return (AURecordedParameterEvent) {
		(uint64_t) [self[@"hostTime"] toDouble],
		(AUParameterAddress) [self[@"address"] toDouble],
		(AUValue) [self[@"value"] toDouble],
	};
}
@end
@implementation AUParameterTree (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation AUParameter (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation AUParameterGroup (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AUParameterNode class], @protocol(AUParameterNodeInstanceExports));
	class_addProtocol([AUParameterNode class], @protocol(AUParameterNodeClassExports));
	class_addProtocol([AUParameterTree class], @protocol(AUParameterTreeInstanceExports));
	class_addProtocol([AUParameterTree class], @protocol(AUParameterTreeClassExports));
	class_addProtocol([AUParameter class], @protocol(AUParameterInstanceExports));
	class_addProtocol([AUParameter class], @protocol(AUParameterClassExports));
	class_addProtocol([AUParameterGroup class], @protocol(AUParameterGroupInstanceExports));
	class_addProtocol([AUParameterGroup class], @protocol(AUParameterGroupClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AUParameterAutomationEventTypeValue"] = @0U;
	context[@"AUParameterAutomationEventTypeTouch"] = @1U;
	context[@"AUParameterAutomationEventTypeRelease"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AUParameters_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
