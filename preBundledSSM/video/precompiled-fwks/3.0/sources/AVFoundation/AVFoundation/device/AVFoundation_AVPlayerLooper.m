#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVPlayerLooper (Exports)
-(id) jsinitWithPlayer: (AVQueuePlayer *) player templateItem: (AVPlayerItem *) itemToLoop timeRange: (CMTimeRange) loopRange 
{
	id resultVal__;
	resultVal__ = [[self initWithPlayer: player templateItem: itemToLoop timeRange: loopRange ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVPlayerLooper class], @protocol(AVPlayerLooperInstanceExports));
	class_addProtocol([AVPlayerLooper class], @protocol(AVPlayerLooperClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVPlayerLooperStatusUnknown"] = @0;
	context[@"AVPlayerLooperStatusReady"] = @1;
	context[@"AVPlayerLooperStatusFailed"] = @2;
	context[@"AVPlayerLooperStatusCancelled"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVPlayerLooper_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
