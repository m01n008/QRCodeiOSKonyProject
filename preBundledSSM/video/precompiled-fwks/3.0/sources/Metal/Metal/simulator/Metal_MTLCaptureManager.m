#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([MTLCaptureDescriptor class], @protocol(MTLCaptureDescriptorInstanceExports));
	class_addProtocol([MTLCaptureDescriptor class], @protocol(MTLCaptureDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLCaptureErrorNotSupported"] = @1L;
	context[@"MTLCaptureErrorAlreadyCapturing"] = @2L;
	context[@"MTLCaptureErrorInvalidDescriptor"] = @3L;

	context[@"MTLCaptureDestinationDeveloperTools"] = @1L;
	context[@"MTLCaptureDestinationGPUTraceDocument"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MTLCaptureErrorDomain;
	if (p != NULL) context[@"MTLCaptureErrorDomain"] = MTLCaptureErrorDomain;
}
void load_Metal_MTLCaptureManager_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
