#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioUnit_AUParameters)
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
@implementation AUParameterGroup (Exports)
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
@implementation AUParameterTree (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AUParameterGroup class], @protocol(AUParameterGroupInstanceExports));
	class_addProtocol([AUParameterGroup class], @protocol(AUParameterGroupClassExports));
	class_addProtocol([AUParameterNode class], @protocol(AUParameterNodeInstanceExports));
	class_addProtocol([AUParameterNode class], @protocol(AUParameterNodeClassExports));
	class_addProtocol([AUParameter class], @protocol(AUParameterInstanceExports));
	class_addProtocol([AUParameter class], @protocol(AUParameterClassExports));
	class_addProtocol([AUParameterTree class], @protocol(AUParameterTreeInstanceExports));
	class_addProtocol([AUParameterTree class], @protocol(AUParameterTreeClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioUnit_AUParameters_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
