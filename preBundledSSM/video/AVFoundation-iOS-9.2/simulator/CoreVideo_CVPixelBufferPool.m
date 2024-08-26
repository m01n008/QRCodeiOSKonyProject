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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCVPixelBufferPoolFlushExcessBuffers"] = @1ULL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCVPixelBufferPoolAllocationThresholdKey;
	if (p != NULL) context[@"kCVPixelBufferPoolAllocationThresholdKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferPoolAllocationThresholdKey inContext: context];
	p = (void*) &kCVPixelBufferPoolMaximumBufferAgeKey;
	if (p != NULL) context[@"kCVPixelBufferPoolMaximumBufferAgeKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferPoolMaximumBufferAgeKey inContext: context];
	p = (void*) &kCVPixelBufferPoolFreeBufferNotification;
	if (p != NULL) context[@"kCVPixelBufferPoolFreeBufferNotification"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferPoolFreeBufferNotification inContext: context];
	p = (void*) &kCVPixelBufferPoolMinimumBufferCountKey;
	if (p != NULL) context[@"kCVPixelBufferPoolMinimumBufferCountKey"] = [JSValue valueWithObject: (__bridge id) kCVPixelBufferPoolMinimumBufferCountKey inContext: context];
}
void load_CoreVideo_CVPixelBufferPool_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
