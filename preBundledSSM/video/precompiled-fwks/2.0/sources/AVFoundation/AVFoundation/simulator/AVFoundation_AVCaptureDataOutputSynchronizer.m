#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCaptureDataOutputSynchronizer (Exports)
-(id) jsinitWithDataOutputs: (NSArray *) dataOutputs 
{
	id resultVal__;
	resultVal__ = [[self initWithDataOutputs: dataOutputs ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVCaptureSynchronizedDepthData class], @protocol(AVCaptureSynchronizedDepthDataInstanceExports));
	class_addProtocol([AVCaptureSynchronizedDepthData class], @protocol(AVCaptureSynchronizedDepthDataClassExports));
	class_addProtocol([AVCaptureSynchronizedDataCollection class], @protocol(AVCaptureSynchronizedDataCollectionInstanceExports));
	class_addProtocol([AVCaptureSynchronizedDataCollection class], @protocol(AVCaptureSynchronizedDataCollectionClassExports));
	class_addProtocol([AVCaptureDataOutputSynchronizer class], @protocol(AVCaptureDataOutputSynchronizerInstanceExports));
	class_addProtocol([AVCaptureDataOutputSynchronizer class], @protocol(AVCaptureDataOutputSynchronizerClassExports));
	class_addProtocol([AVCaptureSynchronizedMetadataObjectData class], @protocol(AVCaptureSynchronizedMetadataObjectDataInstanceExports));
	class_addProtocol([AVCaptureSynchronizedMetadataObjectData class], @protocol(AVCaptureSynchronizedMetadataObjectDataClassExports));
	class_addProtocol([AVCaptureSynchronizedSampleBufferData class], @protocol(AVCaptureSynchronizedSampleBufferDataInstanceExports));
	class_addProtocol([AVCaptureSynchronizedSampleBufferData class], @protocol(AVCaptureSynchronizedSampleBufferDataClassExports));
	class_addProtocol([AVCaptureSynchronizedData class], @protocol(AVCaptureSynchronizedDataInstanceExports));
	class_addProtocol([AVCaptureSynchronizedData class], @protocol(AVCaptureSynchronizedDataClassExports));
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
void AVFoundation_AVCaptureDataOutputSynchronizerProtocols()
{
	(void)@protocol(AVCaptureDataOutputSynchronizerDelegate);
}
void load_AVFoundation_AVCaptureDataOutputSynchronizer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
