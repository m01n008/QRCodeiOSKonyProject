#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([AVSampleBufferDisplayLayer class], @protocol(AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerQueueManagementCategoryInstanceExports));
	class_addProtocol([AVSampleBufferDisplayLayer class], @protocol(AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerQueueManagementCategoryClassExports));
	class_addProtocol([AVSampleBufferDisplayLayer class], @protocol(AVSampleBufferDisplayLayerInstanceExports));
	class_addProtocol([AVSampleBufferDisplayLayer class], @protocol(AVSampleBufferDisplayLayerClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVQueuedSampleBufferRenderingStatusUnknown"] = @0;
	context[@"AVQueuedSampleBufferRenderingStatusRendering"] = @1;
	context[@"AVQueuedSampleBufferRenderingStatusFailed"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey;
	if (p != NULL) context[@"AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey"] = AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey;
	p = (void*) &AVSampleBufferDisplayLayerFailedToDecodeNotification;
	if (p != NULL) context[@"AVSampleBufferDisplayLayerFailedToDecodeNotification"] = AVSampleBufferDisplayLayerFailedToDecodeNotification;
}
void load_AVFoundation_AVSampleBufferDisplayLayer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
