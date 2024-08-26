#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioPlayerNode (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(void) jsscheduleSegment: (AVAudioFile *) file startingFrame: (AVAudioFramePosition) startFrame frameCount: (AVAudioFrameCount) numberFrames atTime: (AVAudioTime *) when completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(void) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void() {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleSegment: file startingFrame: startFrame frameCount: numberFrames atTime: when completionHandler: completionHandler_ ];
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(void) jsscheduleBuffer: (AVAudioPCMBuffer *) buffer completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(void) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void() {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleBuffer: buffer completionHandler: completionHandler_ ];
}
-(void) jsscheduleBuffer: (AVAudioPCMBuffer *) buffer atTime: (AVAudioTime *) when options: (AVAudioPlayerNodeBufferOptions) options completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(void) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void() {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleBuffer: buffer atTime: when options: options completionHandler: completionHandler_ ];
}
-(void) jsscheduleFile: (AVAudioFile *) file atTime: (AVAudioTime *) when completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(void) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void() {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleFile: file atTime: when completionHandler: completionHandler_ ];
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(void) jsscheduleBuffer: (AVAudioPCMBuffer *) buffer completionCallbackType: (AVAudioPlayerNodeCompletionCallbackType) callbackType completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(AVAudioPlayerNodeCompletionCallbackType) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(AVAudioPlayerNodeCompletionCallbackType arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleBuffer: buffer completionCallbackType: callbackType completionHandler: completionHandler_ ];
}
-(void) jsscheduleFile: (AVAudioFile *) file atTime: (AVAudioTime *) when completionCallbackType: (AVAudioPlayerNodeCompletionCallbackType) callbackType completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(AVAudioPlayerNodeCompletionCallbackType) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(AVAudioPlayerNodeCompletionCallbackType arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleFile: file atTime: when completionCallbackType: callbackType completionHandler: completionHandler_ ];
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(void) jsscheduleSegment: (AVAudioFile *) file startingFrame: (AVAudioFramePosition) startFrame frameCount: (AVAudioFrameCount) numberFrames atTime: (AVAudioTime *) when completionCallbackType: (AVAudioPlayerNodeCompletionCallbackType) callbackType completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(AVAudioPlayerNodeCompletionCallbackType) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(AVAudioPlayerNodeCompletionCallbackType arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleSegment: file startingFrame: startFrame frameCount: numberFrames atTime: when completionCallbackType: callbackType completionHandler: completionHandler_ ];
}
-(void) jsscheduleBuffer: (AVAudioPCMBuffer *) buffer atTime: (AVAudioTime *) when options: (AVAudioPlayerNodeBufferOptions) options completionCallbackType: (AVAudioPlayerNodeCompletionCallbackType) callbackType completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(AVAudioPlayerNodeCompletionCallbackType) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(AVAudioPlayerNodeCompletionCallbackType arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self scheduleBuffer: buffer atTime: when options: options completionCallbackType: callbackType completionHandler: completionHandler_ ];
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioPlayerNode class], @protocol(AVAudioPlayerNodeInstanceExports));
	class_addProtocol([AVAudioPlayerNode class], @protocol(AVAudioPlayerNodeClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioPlayerNodeBufferLoops"] = @1U;
	context[@"AVAudioPlayerNodeBufferInterrupts"] = @2U;
	context[@"AVAudioPlayerNodeBufferInterruptsAtLoop"] = @4U;

	context[@"AVAudioPlayerNodeCompletionDataConsumed"] = @0;
	context[@"AVAudioPlayerNodeCompletionDataRendered"] = @1;
	context[@"AVAudioPlayerNodeCompletionDataPlayedBack"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioPlayerNode_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
