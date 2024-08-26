#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCapturePhotoOutput (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(void) jssetPreparedPhotoSettingsArray: (NSArray *) preparedPhotoSettingsArray completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(BOOL, NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(BOOL arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self setPreparedPhotoSettingsArray: preparedPhotoSettingsArray completionHandler: completionHandler_ ];
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVCapturePhoto class], @protocol(AVCapturePhotoAVCapturePhotoBracketedCaptureCategoryInstanceExports));
	class_addProtocol([AVCapturePhoto class], @protocol(AVCapturePhotoAVCapturePhotoBracketedCaptureCategoryClassExports));
	class_addProtocol([AVCapturePhoto class], @protocol(AVCapturePhotoInstanceExports));
	class_addProtocol([AVCapturePhoto class], @protocol(AVCapturePhotoClassExports));
	class_addProtocol([AVCaptureResolvedPhotoSettings class], @protocol(AVCaptureResolvedPhotoSettingsInstanceExports));
	class_addProtocol([AVCaptureResolvedPhotoSettings class], @protocol(AVCaptureResolvedPhotoSettingsClassExports));
	class_addProtocol([AVCapturePhotoSettings class], @protocol(AVCapturePhotoSettingsInstanceExports));
	class_addProtocol([AVCapturePhotoSettings class], @protocol(AVCapturePhotoSettingsClassExports));
	class_addProtocol([AVCapturePhotoBracketSettings class], @protocol(AVCapturePhotoBracketSettingsInstanceExports));
	class_addProtocol([AVCapturePhotoBracketSettings class], @protocol(AVCapturePhotoBracketSettingsClassExports));
	class_addProtocol([AVCapturePhoto class], @protocol(AVCapturePhotoAVCapturePhotoConversionsCategoryInstanceExports));
	class_addProtocol([AVCapturePhoto class], @protocol(AVCapturePhotoAVCapturePhotoConversionsCategoryClassExports));
	class_addProtocol([AVCapturePhotoOutput class], @protocol(AVCapturePhotoOutputAVCapturePhotoOutputDepthDataDeliverySupportCategoryInstanceExports));
	class_addProtocol([AVCapturePhotoOutput class], @protocol(AVCapturePhotoOutputAVCapturePhotoOutputDepthDataDeliverySupportCategoryClassExports));
	class_addProtocol([AVCapturePhotoOutput class], @protocol(AVCapturePhotoOutputInstanceExports));
	class_addProtocol([AVCapturePhotoOutput class], @protocol(AVCapturePhotoOutputClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVCapturePhotoQualityPrioritizationSpeed"] = @1;
	context[@"AVCapturePhotoQualityPrioritizationBalanced"] = @2;
	context[@"AVCapturePhotoQualityPrioritizationQuality"] = @3;

	context[@"AVCaptureLensStabilizationStatusUnsupported"] = @0;
	context[@"AVCaptureLensStabilizationStatusOff"] = @1;
	context[@"AVCaptureLensStabilizationStatusActive"] = @2;
	context[@"AVCaptureLensStabilizationStatusOutOfRange"] = @3;
	context[@"AVCaptureLensStabilizationStatusUnavailable"] = @4;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVFoundation_AVCapturePhotoOutputProtocols()
{
	(void)@protocol(AVCapturePhotoCaptureDelegate);
	(void)@protocol(AVCapturePhotoFileDataRepresentationCustomizer);
}
void load_AVFoundation_AVCapturePhotoOutput_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
