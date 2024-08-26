#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation MTLCaptureManager (Exports)
-(BOOL) jsstartCaptureWithDescriptor: (MTLCaptureDescriptor *) descriptor error: (JSValue *) error 
{
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self startCaptureWithDescriptor: descriptor error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([MTLCaptureDescriptor class], @protocol(MTLCaptureDescriptorInstanceExports));
	class_addProtocol([MTLCaptureDescriptor class], @protocol(MTLCaptureDescriptorClassExports));
	class_addProtocol([MTLCaptureManager class], @protocol(MTLCaptureManagerInstanceExports));
	class_addProtocol([MTLCaptureManager class], @protocol(MTLCaptureManagerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLCaptureErrorNotSupported"] = @1;
	context[@"MTLCaptureErrorAlreadyCapturing"] = @2;
	context[@"MTLCaptureErrorInvalidDescriptor"] = @3;

	context[@"MTLCaptureDestinationDeveloperTools"] = @1;
	context[@"MTLCaptureDestinationGPUTraceDocument"] = @2;

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
