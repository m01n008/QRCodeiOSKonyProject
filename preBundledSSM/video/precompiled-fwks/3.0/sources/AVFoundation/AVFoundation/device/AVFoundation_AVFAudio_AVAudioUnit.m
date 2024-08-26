#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioUnit (Exports)
-(BOOL) jsloadAudioUnitPresetAtURL: (NSURL *) url error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self loadAudioUnitPresetAtURL: url error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(void) jsinstantiateWithComponentDescription: (AudioComponentDescription) audioComponentDescription options: (AudioComponentInstantiationOptions) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(__kindof AVAudioUnit * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(__kindof AVAudioUnit * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self instantiateWithComponentDescription: audioComponentDescription options: options completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioUnit class], @protocol(AVAudioUnitInstanceExports));
	class_addProtocol([AVAudioUnit class], @protocol(AVAudioUnitClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioUnit_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
