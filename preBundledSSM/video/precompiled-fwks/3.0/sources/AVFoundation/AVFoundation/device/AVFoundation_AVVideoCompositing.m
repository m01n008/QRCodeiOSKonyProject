#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AVFoundation_AVVideoCompositing)
+(JSValue*) valueWithAVPixelAspectRatio: (AVPixelAspectRatio) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"horizontalSpacing": @(s.horizontalSpacing),
		@"verticalSpacing": @(s.verticalSpacing),
	} inContext: context];
}
-(AVPixelAspectRatio) toAVPixelAspectRatio {
	return (AVPixelAspectRatio) {
		(NSInteger) [self[@"horizontalSpacing"] toInt32],
		(NSInteger) [self[@"verticalSpacing"] toInt32],
	};
}
+(JSValue*) valueWithAVEdgeWidths: (AVEdgeWidths) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"left": @(s.left),
		@"top": @(s.top),
		@"right": @(s.right),
		@"bottom": @(s.bottom),
	} inContext: context];
}
-(AVEdgeWidths) toAVEdgeWidths {
	return (AVEdgeWidths) {
		(CGFloat) [self[@"left"] toDouble],
		(CGFloat) [self[@"top"] toDouble],
		(CGFloat) [self[@"right"] toDouble],
		(CGFloat) [self[@"bottom"] toDouble],
	};
}
@end
static void addProtocols()
{
	class_addProtocol([AVAsynchronousVideoCompositionRequest class], @protocol(AVAsynchronousVideoCompositionRequestInstanceExports));
	class_addProtocol([AVAsynchronousVideoCompositionRequest class], @protocol(AVAsynchronousVideoCompositionRequestClassExports));
	class_addProtocol([AVAsynchronousCIImageFilteringRequest class], @protocol(AVAsynchronousCIImageFilteringRequestInstanceExports));
	class_addProtocol([AVAsynchronousCIImageFilteringRequest class], @protocol(AVAsynchronousCIImageFilteringRequestClassExports));
	class_addProtocol([AVVideoCompositionRenderHint class], @protocol(AVVideoCompositionRenderHintInstanceExports));
	class_addProtocol([AVVideoCompositionRenderHint class], @protocol(AVVideoCompositionRenderHintClassExports));
	class_addProtocol([AVVideoCompositionRenderContext class], @protocol(AVVideoCompositionRenderContextInstanceExports));
	class_addProtocol([AVVideoCompositionRenderContext class], @protocol(AVVideoCompositionRenderContextClassExports));
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
void AVFoundation_AVVideoCompositingProtocols()
{
	(void)@protocol(AVVideoCompositionInstruction);
	(void)@protocol(AVVideoCompositing);
}
void load_AVFoundation_AVVideoCompositing_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
