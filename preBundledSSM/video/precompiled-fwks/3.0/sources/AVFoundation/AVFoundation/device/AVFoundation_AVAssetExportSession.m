#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAssetExportSession (Exports)
-(void) jsexportAsynchronouslyWithCompletionHandler: (JSValue *) handler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self exportAsynchronouslyWithCompletionHandler: handler_ ];
}
-(id) jsinitWithAsset: (AVAsset *) asset presetName: (NSString *) presetName 
{
	id resultVal__;
	resultVal__ = [[self initWithAsset: asset presetName: presetName ] autorelease];
	return resultVal__;
}
@end
@implementation AVAssetExportSession (AVAssetExportSessionAVAssetExportSessionFileTypesCategoryExports)
-(void) jsdetermineCompatibleFileTypesWithCompletionHandler: (JSValue *) handler 
{
	void (^ handler_)(NSArray  * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(NSArray * arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self determineCompatibleFileTypesWithCompletionHandler: handler_ ];
}
@end
@implementation AVAssetExportSession (AVAssetExportSessionAVAssetExportSessionDurationAndLengthCategoryExports)
-(void) jsestimateMaximumDurationWithCompletionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMTime, NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMTime arg0, NSError * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithCMTime: arg0 inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self estimateMaximumDurationWithCompletionHandler: handler_ ];
}
-(void) jsestimateOutputFileLengthWithCompletionHandler: (JSValue *) handler 
{
	void (^ handler_)(int64_t, NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(int64_t arg0, NSError * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self estimateOutputFileLengthWithCompletionHandler: handler_ ];
}
@end
@implementation AVAssetExportSession (AVAssetExportSessionAVAssetExportSessionPresetsCategoryExports)
+(void) jsdetermineCompatibilityOfExportPreset: (NSString *) presetName withAsset: (AVAsset *) asset outputFileType: (AVFileType) outputFileType completionHandler: (JSValue *) handler 
{
	void (^ handler_)(BOOL) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(BOOL arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self determineCompatibilityOfExportPreset: presetName withAsset: asset outputFileType: outputFileType completionHandler: handler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionMetadataCategoryInstanceExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionMetadataCategoryClassExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionInstanceExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionClassExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionFileTypesCategoryInstanceExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionFileTypesCategoryClassExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionMediaProcessingCategoryInstanceExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionMediaProcessingCategoryClassExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionMultipassCategoryInstanceExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionMultipassCategoryClassExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionDurationAndLengthCategoryInstanceExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionDurationAndLengthCategoryClassExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionPresetsCategoryInstanceExports));
	class_addProtocol([AVAssetExportSession class], @protocol(AVAssetExportSessionAVAssetExportSessionPresetsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAssetExportSessionStatusUnknown"] = @0;
	context[@"AVAssetExportSessionStatusWaiting"] = @1;
	context[@"AVAssetExportSessionStatusExporting"] = @2;
	context[@"AVAssetExportSessionStatusCompleted"] = @3;
	context[@"AVAssetExportSessionStatusFailed"] = @4;
	context[@"AVAssetExportSessionStatusCancelled"] = @5;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAssetExportPreset1920x1080;
	if (p != NULL) context[@"AVAssetExportPreset1920x1080"] = AVAssetExportPreset1920x1080;
	p = (void*) &AVAssetExportPresetHEVC1920x1080WithAlpha;
	if (p != NULL) context[@"AVAssetExportPresetHEVC1920x1080WithAlpha"] = AVAssetExportPresetHEVC1920x1080WithAlpha;
	p = (void*) &AVAssetExportPresetHEVCHighestQuality;
	if (p != NULL) context[@"AVAssetExportPresetHEVCHighestQuality"] = AVAssetExportPresetHEVCHighestQuality;
	p = (void*) &AVAssetExportPresetHighestQuality;
	if (p != NULL) context[@"AVAssetExportPresetHighestQuality"] = AVAssetExportPresetHighestQuality;
	p = (void*) &AVAssetExportPresetPassthrough;
	if (p != NULL) context[@"AVAssetExportPresetPassthrough"] = AVAssetExportPresetPassthrough;
	p = (void*) &AVAssetExportPresetMediumQuality;
	if (p != NULL) context[@"AVAssetExportPresetMediumQuality"] = AVAssetExportPresetMediumQuality;
	p = (void*) &AVAssetExportPreset640x480;
	if (p != NULL) context[@"AVAssetExportPreset640x480"] = AVAssetExportPreset640x480;
	p = (void*) &AVAssetExportPresetLowQuality;
	if (p != NULL) context[@"AVAssetExportPresetLowQuality"] = AVAssetExportPresetLowQuality;
	p = (void*) &AVAssetExportPresetHEVCHighestQualityWithAlpha;
	if (p != NULL) context[@"AVAssetExportPresetHEVCHighestQualityWithAlpha"] = AVAssetExportPresetHEVCHighestQualityWithAlpha;
	p = (void*) &AVAssetExportPreset3840x2160;
	if (p != NULL) context[@"AVAssetExportPreset3840x2160"] = AVAssetExportPreset3840x2160;
	p = (void*) &AVAssetExportPresetHEVC1920x1080;
	if (p != NULL) context[@"AVAssetExportPresetHEVC1920x1080"] = AVAssetExportPresetHEVC1920x1080;
	p = (void*) &AVAssetExportPreset1280x720;
	if (p != NULL) context[@"AVAssetExportPreset1280x720"] = AVAssetExportPreset1280x720;
	p = (void*) &AVAssetExportPresetHEVC3840x2160;
	if (p != NULL) context[@"AVAssetExportPresetHEVC3840x2160"] = AVAssetExportPresetHEVC3840x2160;
	p = (void*) &AVAssetExportPresetAppleM4A;
	if (p != NULL) context[@"AVAssetExportPresetAppleM4A"] = AVAssetExportPresetAppleM4A;
	p = (void*) &AVAssetExportPreset960x540;
	if (p != NULL) context[@"AVAssetExportPreset960x540"] = AVAssetExportPreset960x540;
	p = (void*) &AVAssetExportPresetHEVC3840x2160WithAlpha;
	if (p != NULL) context[@"AVAssetExportPresetHEVC3840x2160WithAlpha"] = AVAssetExportPresetHEVC3840x2160WithAlpha;
}
void load_AVFoundation_AVAssetExportSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
