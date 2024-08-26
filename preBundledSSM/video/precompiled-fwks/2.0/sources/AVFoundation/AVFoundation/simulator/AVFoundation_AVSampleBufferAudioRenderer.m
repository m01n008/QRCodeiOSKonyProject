#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVSampleBufferAudioRenderer (Exports)
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
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation AVSampleBufferAudioRenderer (AVSampleBufferAudioRendererAVSampleBufferAudioRendererQueueManagementCategoryExports)
-(void) jsflushFromSourceTime: (CMTime) time completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(BOOL) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self flushFromSourceTime: time completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVSampleBufferAudioRenderer class], @protocol(AVSampleBufferAudioRendererInstanceExports));
	class_addProtocol([AVSampleBufferAudioRenderer class], @protocol(AVSampleBufferAudioRendererClassExports));
	class_addProtocol([AVSampleBufferAudioRenderer class], @protocol(AVSampleBufferAudioRendererAVSampleBufferAudioRendererVolumeControlCategoryInstanceExports));
	class_addProtocol([AVSampleBufferAudioRenderer class], @protocol(AVSampleBufferAudioRendererAVSampleBufferAudioRendererVolumeControlCategoryClassExports));
	class_addProtocol([AVSampleBufferAudioRenderer class], @protocol(AVSampleBufferAudioRendererAVSampleBufferAudioRendererQueueManagementCategoryInstanceExports));
	class_addProtocol([AVSampleBufferAudioRenderer class], @protocol(AVSampleBufferAudioRendererAVSampleBufferAudioRendererQueueManagementCategoryClassExports));
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
	p = (void*) &AVSampleBufferAudioRendererWasFlushedAutomaticallyNotification;
	if (p != NULL) context[@"AVSampleBufferAudioRendererWasFlushedAutomaticallyNotification"] = AVSampleBufferAudioRendererWasFlushedAutomaticallyNotification;
	p = (void*) &AVSampleBufferAudioRendererFlushTimeKey;
	if (p != NULL) context[@"AVSampleBufferAudioRendererFlushTimeKey"] = AVSampleBufferAudioRendererFlushTimeKey;
}
void load_AVFoundation_AVSampleBufferAudioRenderer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
