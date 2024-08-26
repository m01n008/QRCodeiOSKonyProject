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
	class_addProtocol([AVCaptureOutput class], @protocol(AVCaptureOutputInstanceExports));
	class_addProtocol([AVCaptureOutput class], @protocol(AVCaptureOutputClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVCaptureOutputDataDroppedReasonNone"] = @0;
	context[@"AVCaptureOutputDataDroppedReasonLateData"] = @1;
	context[@"AVCaptureOutputDataDroppedReasonOutOfBuffers"] = @2;
	context[@"AVCaptureOutputDataDroppedReasonDiscontinuity"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVCaptureOutputBase_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
