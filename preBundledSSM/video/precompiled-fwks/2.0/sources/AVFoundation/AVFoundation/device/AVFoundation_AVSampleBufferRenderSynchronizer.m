#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVSampleBufferRenderSynchronizer (AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerRendererManagementCategoryExports)
-(void) jsremoveRenderer: (id) renderer atTime: (CMTime) time completionHandler: (JSValue *) completionHandler 
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
	[self removeRenderer: renderer atTime: time completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVSampleBufferRenderSynchronizer class], @protocol(AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerRendererManagementCategoryInstanceExports));
	class_addProtocol([AVSampleBufferRenderSynchronizer class], @protocol(AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerRendererManagementCategoryClassExports));
	class_addProtocol([AVSampleBufferRenderSynchronizer class], @protocol(AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerTimeObservationCategoryInstanceExports));
	class_addProtocol([AVSampleBufferRenderSynchronizer class], @protocol(AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerTimeObservationCategoryClassExports));
	class_addProtocol([AVSampleBufferRenderSynchronizer class], @protocol(AVSampleBufferRenderSynchronizerInstanceExports));
	class_addProtocol([AVSampleBufferRenderSynchronizer class], @protocol(AVSampleBufferRenderSynchronizerClassExports));
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
void load_AVFoundation_AVSampleBufferRenderSynchronizer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
