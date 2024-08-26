#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioNode (Exports)
-(void) jsinstallTapOnBus: (AVAudioNodeBus) bus bufferSize: (AVAudioFrameCount) bufferSize format: (AVAudioFormat *) format block: (JSValue *) tapBlock 
{
	void (^ tapBlock_)(AVAudioPCMBuffer * , AVAudioTime * ) = nil;
	if (!tapBlock.isUndefined) {
		tapBlock_ = ^void(AVAudioPCMBuffer * arg0, AVAudioTime * arg1) {
			JSContext* __jsContext = tapBlock.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, tapBlock, self, parameters);
		};
	}
	[self installTapOnBus: bus bufferSize: bufferSize format: format block: tapBlock_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioNode class], @protocol(AVAudioNodeInstanceExports));
	class_addProtocol([AVAudioNode class], @protocol(AVAudioNodeClassExports));
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
void load_AVFoundation_AVFAudio_AVAudioNode_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
