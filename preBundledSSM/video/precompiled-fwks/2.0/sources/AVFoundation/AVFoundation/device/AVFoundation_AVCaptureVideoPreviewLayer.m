#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCaptureVideoPreviewLayer (Exports)
-(id) jsinitWithSession: (AVCaptureSession *) session 
{
	id resultVal__;
	resultVal__ = [[self initWithSession: session ] autorelease];
	return resultVal__;
}
-(id) jsinitWithSessionWithNoConnection: (AVCaptureSession *) session 
{
	id resultVal__;
	resultVal__ = [[self initWithSessionWithNoConnection: session ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVCaptureVideoPreviewLayer class], @protocol(AVCaptureVideoPreviewLayerInstanceExports));
	class_addProtocol([AVCaptureVideoPreviewLayer class], @protocol(AVCaptureVideoPreviewLayerClassExports));
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
void load_AVFoundation_AVCaptureVideoPreviewLayer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
