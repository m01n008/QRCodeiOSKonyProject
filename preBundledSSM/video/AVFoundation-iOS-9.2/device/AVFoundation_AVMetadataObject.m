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
	class_addProtocol([AVMetadataObject class], @protocol(AVMetadataObjectInstanceExports));
	class_addProtocol([AVMetadataObject class], @protocol(AVMetadataObjectClassExports));
	class_addProtocol([AVMetadataFaceObject class], @protocol(AVMetadataFaceObjectInstanceExports));
	class_addProtocol([AVMetadataFaceObject class], @protocol(AVMetadataFaceObjectClassExports));
	class_addProtocol([AVMetadataMachineReadableCodeObject class], @protocol(AVMetadataMachineReadableCodeObjectInstanceExports));
	class_addProtocol([AVMetadataMachineReadableCodeObject class], @protocol(AVMetadataMachineReadableCodeObjectClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVMetadataObjectTypeAztecCode;
	if (p != NULL) context[@"AVMetadataObjectTypeAztecCode"] = AVMetadataObjectTypeAztecCode;
	p = (void*) &AVMetadataObjectTypeCode93Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode93Code"] = AVMetadataObjectTypeCode93Code;
	p = (void*) &AVMetadataObjectTypeITF14Code;
	if (p != NULL) context[@"AVMetadataObjectTypeITF14Code"] = AVMetadataObjectTypeITF14Code;
	p = (void*) &AVMetadataObjectTypeDataMatrixCode;
	if (p != NULL) context[@"AVMetadataObjectTypeDataMatrixCode"] = AVMetadataObjectTypeDataMatrixCode;
	p = (void*) &AVMetadataObjectTypeCode39Mod43Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode39Mod43Code"] = AVMetadataObjectTypeCode39Mod43Code;
	p = (void*) &AVMetadataObjectTypeCode39Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode39Code"] = AVMetadataObjectTypeCode39Code;
	p = (void*) &AVMetadataObjectTypeCode128Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode128Code"] = AVMetadataObjectTypeCode128Code;
	p = (void*) &AVMetadataObjectTypeInterleaved2of5Code;
	if (p != NULL) context[@"AVMetadataObjectTypeInterleaved2of5Code"] = AVMetadataObjectTypeInterleaved2of5Code;
	p = (void*) &AVMetadataObjectTypeEAN8Code;
	if (p != NULL) context[@"AVMetadataObjectTypeEAN8Code"] = AVMetadataObjectTypeEAN8Code;
	p = (void*) &AVMetadataObjectTypeFace;
	if (p != NULL) context[@"AVMetadataObjectTypeFace"] = AVMetadataObjectTypeFace;
	p = (void*) &AVMetadataObjectTypeQRCode;
	if (p != NULL) context[@"AVMetadataObjectTypeQRCode"] = AVMetadataObjectTypeQRCode;
	p = (void*) &AVMetadataObjectTypePDF417Code;
	if (p != NULL) context[@"AVMetadataObjectTypePDF417Code"] = AVMetadataObjectTypePDF417Code;
	p = (void*) &AVMetadataObjectTypeEAN13Code;
	if (p != NULL) context[@"AVMetadataObjectTypeEAN13Code"] = AVMetadataObjectTypeEAN13Code;
	p = (void*) &AVMetadataObjectTypeUPCECode;
	if (p != NULL) context[@"AVMetadataObjectTypeUPCECode"] = AVMetadataObjectTypeUPCECode;
}
void load_AVFoundation_AVMetadataObject_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
