#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCaptureStillImageOutput (Exports)
-(void) jscaptureStillImageAsynchronouslyFromConnection: (AVCaptureConnection *) connection completionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMSampleBufferRef, NSError *) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMSampleBufferRef arg0, NSError * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: (__bridge id) arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self captureStillImageAsynchronouslyFromConnection: connection completionHandler: handler_ ];
}
@end
@implementation AVCaptureStillImageOutput (AVCaptureStillImageOutputBracketedCaptureMethodsCategoryExports)
-(void) jscaptureStillImageBracketAsynchronouslyFromConnection: (AVCaptureConnection *) connection withSettingsArray: (NSArray *) settings completionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMSampleBufferRef, AVCaptureBracketedStillImageSettings *, NSError *) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMSampleBufferRef arg0, AVCaptureBracketedStillImageSettings * arg1, NSError * arg2) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: (__bridge id) arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self captureStillImageBracketAsynchronouslyFromConnection: connection withSettingsArray: settings completionHandler: handler_ ];
}
-(void) jsprepareToCaptureStillImageBracketFromConnection: (AVCaptureConnection *) connection withSettingsArray: (NSArray *) settings completionHandler: (JSValue *) handler 
{
	void (^ handler_)(BOOL, NSError *) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(BOOL arg0, NSError * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self prepareToCaptureStillImageBracketFromConnection: connection withSettingsArray: settings completionHandler: handler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVCaptureStillImageOutput class], @protocol(AVCaptureStillImageOutputInstanceExports));
	class_addProtocol([AVCaptureStillImageOutput class], @protocol(AVCaptureStillImageOutputClassExports));
	class_addProtocol([AVCaptureAudioDataOutput class], @protocol(AVCaptureAudioDataOutputInstanceExports));
	class_addProtocol([AVCaptureAudioDataOutput class], @protocol(AVCaptureAudioDataOutputClassExports));
	class_addProtocol([AVCaptureManualExposureBracketedStillImageSettings class], @protocol(AVCaptureManualExposureBracketedStillImageSettingsInstanceExports));
	class_addProtocol([AVCaptureManualExposureBracketedStillImageSettings class], @protocol(AVCaptureManualExposureBracketedStillImageSettingsClassExports));
	class_addProtocol([AVCaptureAutoExposureBracketedStillImageSettings class], @protocol(AVCaptureAutoExposureBracketedStillImageSettingsInstanceExports));
	class_addProtocol([AVCaptureAutoExposureBracketedStillImageSettings class], @protocol(AVCaptureAutoExposureBracketedStillImageSettingsClassExports));
	class_addProtocol([AVCaptureStillImageOutput class], @protocol(AVCaptureStillImageOutputBracketedCaptureMethodsCategoryInstanceExports));
	class_addProtocol([AVCaptureStillImageOutput class], @protocol(AVCaptureStillImageOutputBracketedCaptureMethodsCategoryClassExports));
	class_addProtocol([AVCaptureBracketedStillImageSettings class], @protocol(AVCaptureBracketedStillImageSettingsInstanceExports));
	class_addProtocol([AVCaptureBracketedStillImageSettings class], @protocol(AVCaptureBracketedStillImageSettingsClassExports));
	class_addProtocol([AVCaptureVideoDataOutput class], @protocol(AVCaptureVideoDataOutputInstanceExports));
	class_addProtocol([AVCaptureVideoDataOutput class], @protocol(AVCaptureVideoDataOutputClassExports));
	class_addProtocol([AVCaptureMetadataOutput class], @protocol(AVCaptureMetadataOutputInstanceExports));
	class_addProtocol([AVCaptureMetadataOutput class], @protocol(AVCaptureMetadataOutputClassExports));
	class_addProtocol([AVCaptureOutput class], @protocol(AVCaptureOutputInstanceExports));
	class_addProtocol([AVCaptureOutput class], @protocol(AVCaptureOutputClassExports));
	class_addProtocol([AVCaptureFileOutput class], @protocol(AVCaptureFileOutputInstanceExports));
	class_addProtocol([AVCaptureFileOutput class], @protocol(AVCaptureFileOutputClassExports));
	class_addProtocol([AVCaptureMovieFileOutput class], @protocol(AVCaptureMovieFileOutputInstanceExports));
	class_addProtocol([AVCaptureMovieFileOutput class], @protocol(AVCaptureMovieFileOutputClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVFoundation_AVCaptureOutputProtocols()
{
	(void)@protocol(AVCaptureMetadataOutputObjectsDelegate);
	(void)@protocol(AVCaptureFileOutputRecordingDelegate);
	(void)@protocol(AVCaptureVideoDataOutputSampleBufferDelegate);
	(void)@protocol(AVCaptureAudioDataOutputSampleBufferDelegate);
}
void load_AVFoundation_AVCaptureOutput_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
