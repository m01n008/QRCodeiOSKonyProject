#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCaptureMetadataInput (Exports)
-(id) jsinitWithFormatDescription: (id) desc clock: (id) clock 
{
	id resultVal__;
	resultVal__ = [[self initWithFormatDescription: desc clock: clock ] autorelease];
	return resultVal__;
}
-(BOOL) jsappendTimedMetadataGroup: (AVTimedMetadataGroup *) metadata error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self appendTimedMetadataGroup: metadata error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVCaptureDeviceInput (Exports)
-(id) jsinitWithDevice: (AVCaptureDevice *) device error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithDevice: device error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
+(id) jsdeviceInputWithDevice: (AVCaptureDevice *) device error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self deviceInputWithDevice: device error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVCaptureMetadataInput class], @protocol(AVCaptureMetadataInputInstanceExports));
	class_addProtocol([AVCaptureMetadataInput class], @protocol(AVCaptureMetadataInputClassExports));
	class_addProtocol([AVCaptureInputPort class], @protocol(AVCaptureInputPortInstanceExports));
	class_addProtocol([AVCaptureInputPort class], @protocol(AVCaptureInputPortClassExports));
	class_addProtocol([AVCaptureDeviceInput class], @protocol(AVCaptureDeviceInputInstanceExports));
	class_addProtocol([AVCaptureDeviceInput class], @protocol(AVCaptureDeviceInputClassExports));
	class_addProtocol([AVCaptureInput class], @protocol(AVCaptureInputInstanceExports));
	class_addProtocol([AVCaptureInput class], @protocol(AVCaptureInputClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVCaptureInputPortFormatDescriptionDidChangeNotification;
	if (p != NULL) context[@"AVCaptureInputPortFormatDescriptionDidChangeNotification"] = AVCaptureInputPortFormatDescriptionDidChangeNotification;
}
void load_AVFoundation_AVCaptureInput_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
