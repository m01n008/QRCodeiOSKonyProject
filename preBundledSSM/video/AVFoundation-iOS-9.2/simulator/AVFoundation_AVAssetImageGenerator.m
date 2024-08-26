#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAssetImageGenerator (Exports)
-(void) jsgenerateCGImagesAsynchronouslyForTimes: (NSArray *) requestedTimes completionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMTime, CGImageRef , CMTime, AVAssetImageGeneratorResult, NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMTime arg0, CGImageRef arg1, CMTime arg2, AVAssetImageGeneratorResult arg3, NSError * arg4) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithCMTime: arg0 inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: (__bridge id) arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithCMTime: arg2 inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg3) inContext: __jsContext]];
			[parameters addObject: (arg4 ? [JSValue valueWithObject: arg4 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self generateCGImagesAsynchronouslyForTimes: requestedTimes completionHandler: handler_ ];
}
-(id) jsinitWithAsset: (AVAsset *) asset 
{
	id resultVal__;
	resultVal__ = [[self initWithAsset: asset ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAssetImageGenerator class], @protocol(AVAssetImageGeneratorInstanceExports));
	class_addProtocol([AVAssetImageGenerator class], @protocol(AVAssetImageGeneratorClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAssetImageGeneratorSucceeded"] = @0;
	context[@"AVAssetImageGeneratorFailed"] = @1;
	context[@"AVAssetImageGeneratorCancelled"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAssetImageGeneratorApertureModeCleanAperture;
	if (p != NULL) context[@"AVAssetImageGeneratorApertureModeCleanAperture"] = AVAssetImageGeneratorApertureModeCleanAperture;
	p = (void*) &AVAssetImageGeneratorApertureModeEncodedPixels;
	if (p != NULL) context[@"AVAssetImageGeneratorApertureModeEncodedPixels"] = AVAssetImageGeneratorApertureModeEncodedPixels;
	p = (void*) &AVAssetImageGeneratorApertureModeProductionAperture;
	if (p != NULL) context[@"AVAssetImageGeneratorApertureModeProductionAperture"] = AVAssetImageGeneratorApertureModeProductionAperture;
}
void load_AVFoundation_AVAssetImageGenerator_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
