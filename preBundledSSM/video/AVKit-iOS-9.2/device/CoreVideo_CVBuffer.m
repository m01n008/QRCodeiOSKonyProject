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
	context[@"kCVAttachmentMode_ShouldNotPropagate"] = @0U;
	context[@"kCVAttachmentMode_ShouldPropagate"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCVBufferMovieTimeKey;
	if (p != NULL) context[@"kCVBufferMovieTimeKey"] = [JSValue valueWithObject: (__bridge id) kCVBufferMovieTimeKey inContext: context];
	p = (void*) &kCVBufferPropagatedAttachmentsKey;
	if (p != NULL) context[@"kCVBufferPropagatedAttachmentsKey"] = [JSValue valueWithObject: (__bridge id) kCVBufferPropagatedAttachmentsKey inContext: context];
	p = (void*) &kCVBufferTimeValueKey;
	if (p != NULL) context[@"kCVBufferTimeValueKey"] = [JSValue valueWithObject: (__bridge id) kCVBufferTimeValueKey inContext: context];
	p = (void*) &kCVBufferNonPropagatedAttachmentsKey;
	if (p != NULL) context[@"kCVBufferNonPropagatedAttachmentsKey"] = [JSValue valueWithObject: (__bridge id) kCVBufferNonPropagatedAttachmentsKey inContext: context];
	p = (void*) &kCVBufferTimeScaleKey;
	if (p != NULL) context[@"kCVBufferTimeScaleKey"] = [JSValue valueWithObject: (__bridge id) kCVBufferTimeScaleKey inContext: context];
}
void load_CoreVideo_CVBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
