#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVPlayerItem (Exports)
-(id) jsinitWithURL: (NSURL *) URL 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAsset: (AVAsset *) asset 
{
	id resultVal__;
	resultVal__ = [[self initWithAsset: asset ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAsset: (AVAsset *) asset automaticallyLoadedAssetKeys: (NSArray *) automaticallyLoadedAssetKeys 
{
	id resultVal__;
	resultVal__ = [[self initWithAsset: asset automaticallyLoadedAssetKeys: automaticallyLoadedAssetKeys ] autorelease];
	return resultVal__;
}
@end
@implementation AVPlayerItem (AVPlayerItemAVPlayerItemTimeControlCategoryExports)
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
-(BOOL) jsseekToDate: (NSDate *) date completionHandler: (JSValue *) completionHandler 
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
	BOOL resultVal__;
	resultVal__ = [self seekToDate: date completionHandler: completionHandler_ ];
	return resultVal__;
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
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemMediaSelectionCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemMediaSelectionCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemPlayabilityCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemPlayabilityCategoryClassExports));
	class_addProtocol([AVPlayerItemAccessLogEvent class], @protocol(AVPlayerItemAccessLogEventInstanceExports));
	class_addProtocol([AVPlayerItemAccessLogEvent class], @protocol(AVPlayerItemAccessLogEventClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemLoggingCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemLoggingCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemVariantControlCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemVariantControlCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemMediaDataCollectorsCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemMediaDataCollectorsCategoryClassExports));
	class_addProtocol([AVPlayerItemErrorLog class], @protocol(AVPlayerItemErrorLogInstanceExports));
	class_addProtocol([AVPlayerItemErrorLog class], @protocol(AVPlayerItemErrorLogClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemDeprecatedCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemDeprecatedCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemRateAndSteppingSupportCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemRateAndSteppingSupportCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemInspectionCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemInspectionCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemVisualPresentationCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemVisualPresentationCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemOutputsCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemOutputsCategoryClassExports));
	class_addProtocol([AVPlayerItemAccessLog class], @protocol(AVPlayerItemAccessLogInstanceExports));
	class_addProtocol([AVPlayerItemAccessLog class], @protocol(AVPlayerItemAccessLogClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemTimeControlCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemTimeControlCategoryClassExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemAudioProcessingCategoryInstanceExports));
	class_addProtocol([AVPlayerItem class], @protocol(AVPlayerItemAVPlayerItemAudioProcessingCategoryClassExports));
	class_addProtocol([AVPlayerItemErrorLogEvent class], @protocol(AVPlayerItemErrorLogEventInstanceExports));
	class_addProtocol([AVPlayerItemErrorLogEvent class], @protocol(AVPlayerItemErrorLogEventClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVPlayerItemStatusUnknown"] = @0L;
	context[@"AVPlayerItemStatusReadyToPlay"] = @1L;
	context[@"AVPlayerItemStatusFailed"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVPlayerItemNewErrorLogEntryNotification;
	if (p != NULL) context[@"AVPlayerItemNewErrorLogEntryNotification"] = AVPlayerItemNewErrorLogEntryNotification;
	p = (void*) &AVPlayerItemDidPlayToEndTimeNotification;
	if (p != NULL) context[@"AVPlayerItemDidPlayToEndTimeNotification"] = AVPlayerItemDidPlayToEndTimeNotification;
	p = (void*) &AVPlayerItemNewAccessLogEntryNotification;
	if (p != NULL) context[@"AVPlayerItemNewAccessLogEntryNotification"] = AVPlayerItemNewAccessLogEntryNotification;
	p = (void*) &AVPlayerItemPlaybackStalledNotification;
	if (p != NULL) context[@"AVPlayerItemPlaybackStalledNotification"] = AVPlayerItemPlaybackStalledNotification;
	p = (void*) &AVPlayerItemTimeJumpedNotification;
	if (p != NULL) context[@"AVPlayerItemTimeJumpedNotification"] = AVPlayerItemTimeJumpedNotification;
	p = (void*) &AVPlayerItemFailedToPlayToEndTimeNotification;
	if (p != NULL) context[@"AVPlayerItemFailedToPlayToEndTimeNotification"] = AVPlayerItemFailedToPlayToEndTimeNotification;
	p = (void*) &AVPlayerItemFailedToPlayToEndTimeErrorKey;
	if (p != NULL) context[@"AVPlayerItemFailedToPlayToEndTimeErrorKey"] = AVPlayerItemFailedToPlayToEndTimeErrorKey;
}
void load_AVFoundation_AVPlayerItem_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
