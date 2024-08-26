#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVQueuePlayer (Exports)
-(AVQueuePlayer *) jsinitWithItems: (NSArray *) items 
{
	AVQueuePlayer * resultVal__;
	resultVal__ = [[self initWithItems: items ] autorelease];
	return resultVal__;
}
@end
@implementation AVPlayer (AVPlayerAVPlayerAdvancedRateControlCategoryExports)
-(void) jsprerollAtRate: (float) rate completionHandler: (JSValue *) completionHandler 
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
	[self prerollAtRate: rate completionHandler: completionHandler_ ];
}
@end
@implementation AVPlayer (Exports)
-(id) jsinitWithURL: (NSURL *) URL 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL ] autorelease];
	return resultVal__;
}
-(id) jsinitWithPlayerItem: (AVPlayerItem *) item 
{
	id resultVal__;
	resultVal__ = [[self initWithPlayerItem: item ] autorelease];
	return resultVal__;
}
@end
@implementation AVPlayer (AVPlayerAVPlayerTimeControlCategoryExports)
-(void) jsseekToTime: (CMTime) time toleranceBefore: (CMTime) toleranceBefore toleranceAfter: (CMTime) toleranceAfter completionHandler: (JSValue *) completionHandler 
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
	[self seekToTime: time toleranceBefore: toleranceBefore toleranceAfter: toleranceAfter completionHandler: completionHandler_ ];
}
-(void) jsseekToDate: (NSDate *) date completionHandler: (JSValue *) completionHandler 
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
	[self seekToDate: date completionHandler: completionHandler_ ];
}
-(void) jsseekToTime: (CMTime) time completionHandler: (JSValue *) completionHandler 
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
	[self seekToTime: time completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVQueuePlayer class], @protocol(AVQueuePlayerInstanceExports));
	class_addProtocol([AVQueuePlayer class], @protocol(AVQueuePlayerClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerMediaControlCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerMediaControlCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerProtectedContentCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerProtectedContentCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerPlaybackControlCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerPlaybackControlCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAirPlaySupportCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAirPlaySupportCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAdvancedRateControlCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAdvancedRateControlCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerExternalPlaybackSupportCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerExternalPlaybackSupportCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAudioDeviceSupportCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAudioDeviceSupportCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerTimeControlCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerTimeControlCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerItemControlCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerItemControlCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAutomaticMediaSelectionCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerAutomaticMediaSelectionCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerTimeObservationCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerTimeObservationCategoryClassExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerDeprecatedCategoryInstanceExports));
	class_addProtocol([AVPlayer class], @protocol(AVPlayerAVPlayerDeprecatedCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVPlayerStatusUnknown"] = @0;
	context[@"AVPlayerStatusReadyToPlay"] = @1;
	context[@"AVPlayerStatusFailed"] = @2;

	context[@"AVPlayerTimeControlStatusPaused"] = @0;
	context[@"AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate"] = @1;
	context[@"AVPlayerTimeControlStatusPlaying"] = @2;

	context[@"AVPlayerActionAtItemEndAdvance"] = @0;
	context[@"AVPlayerActionAtItemEndPause"] = @1;
	context[@"AVPlayerActionAtItemEndNone"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVPlayerWaitingWhileEvaluatingBufferingRateReason;
	if (p != NULL) context[@"AVPlayerWaitingWhileEvaluatingBufferingRateReason"] = AVPlayerWaitingWhileEvaluatingBufferingRateReason;
	p = (void*) &AVPlayerWaitingToMinimizeStallsReason;
	if (p != NULL) context[@"AVPlayerWaitingToMinimizeStallsReason"] = AVPlayerWaitingToMinimizeStallsReason;
	p = (void*) &AVPlayerWaitingWithNoItemToPlayReason;
	if (p != NULL) context[@"AVPlayerWaitingWithNoItemToPlayReason"] = AVPlayerWaitingWithNoItemToPlayReason;
}
void load_AVFoundation_AVPlayer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
