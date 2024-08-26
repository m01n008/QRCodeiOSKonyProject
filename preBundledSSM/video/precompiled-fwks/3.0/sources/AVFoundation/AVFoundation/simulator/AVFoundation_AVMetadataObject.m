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
	class_addProtocol([AVMetadataDogBodyObject class], @protocol(AVMetadataDogBodyObjectInstanceExports));
	class_addProtocol([AVMetadataDogBodyObject class], @protocol(AVMetadataDogBodyObjectClassExports));
	class_addProtocol([AVMetadataObject class], @protocol(AVMetadataObjectInstanceExports));
	class_addProtocol([AVMetadataObject class], @protocol(AVMetadataObjectClassExports));
	class_addProtocol([AVMetadataMachineReadableCodeObject class], @protocol(AVMetadataMachineReadableCodeObjectAVMetadataMachineReadableCodeDescriptorCategoryInstanceExports));
	class_addProtocol([AVMetadataMachineReadableCodeObject class], @protocol(AVMetadataMachineReadableCodeObjectAVMetadataMachineReadableCodeDescriptorCategoryClassExports));
	class_addProtocol([AVMetadataSalientObject class], @protocol(AVMetadataSalientObjectInstanceExports));
	class_addProtocol([AVMetadataSalientObject class], @protocol(AVMetadataSalientObjectClassExports));
	class_addProtocol([AVMetadataCatBodyObject class], @protocol(AVMetadataCatBodyObjectInstanceExports));
	class_addProtocol([AVMetadataCatBodyObject class], @protocol(AVMetadataCatBodyObjectClassExports));
	class_addProtocol([AVMetadataFaceObject class], @protocol(AVMetadataFaceObjectInstanceExports));
	class_addProtocol([AVMetadataFaceObject class], @protocol(AVMetadataFaceObjectClassExports));
	class_addProtocol([AVMetadataHumanBodyObject class], @protocol(AVMetadataHumanBodyObjectInstanceExports));
	class_addProtocol([AVMetadataHumanBodyObject class], @protocol(AVMetadataHumanBodyObjectClassExports));
	class_addProtocol([AVMetadataMachineReadableCodeObject class], @protocol(AVMetadataMachineReadableCodeObjectInstanceExports));
	class_addProtocol([AVMetadataMachineReadableCodeObject class], @protocol(AVMetadataMachineReadableCodeObjectClassExports));
	class_addProtocol([AVMetadataBodyObject class], @protocol(AVMetadataBodyObjectInstanceExports));
	class_addProtocol([AVMetadataBodyObject class], @protocol(AVMetadataBodyObjectClassExports));
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
	p = (void*) &AVMetadataObjectTypeITF14Code;
	if (p != NULL) context[@"AVMetadataObjectTypeITF14Code"] = AVMetadataObjectTypeITF14Code;
	p = (void*) &AVMetadataObjectTypeCatBody;
	if (p != NULL) context[@"AVMetadataObjectTypeCatBody"] = AVMetadataObjectTypeCatBody;
	p = (void*) &AVMetadataObjectTypeAztecCode;
	if (p != NULL) context[@"AVMetadataObjectTypeAztecCode"] = AVMetadataObjectTypeAztecCode;
	p = (void*) &AVMetadataObjectTypeCode93Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode93Code"] = AVMetadataObjectTypeCode93Code;
	p = (void*) &AVMetadataObjectTypeCode39Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode39Code"] = AVMetadataObjectTypeCode39Code;
	p = (void*) &AVMetadataObjectTypeCode128Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode128Code"] = AVMetadataObjectTypeCode128Code;
	p = (void*) &AVMetadataObjectTypeInterleaved2of5Code;
	if (p != NULL) context[@"AVMetadataObjectTypeInterleaved2of5Code"] = AVMetadataObjectTypeInterleaved2of5Code;
	p = (void*) &AVMetadataObjectTypeEAN8Code;
	if (p != NULL) context[@"AVMetadataObjectTypeEAN8Code"] = AVMetadataObjectTypeEAN8Code;
	p = (void*) &AVMetadataObjectTypeDogBody;
	if (p != NULL) context[@"AVMetadataObjectTypeDogBody"] = AVMetadataObjectTypeDogBody;
	p = (void*) &AVMetadataObjectTypeFace;
	if (p != NULL) context[@"AVMetadataObjectTypeFace"] = AVMetadataObjectTypeFace;
	p = (void*) &AVMetadataObjectTypeQRCode;
	if (p != NULL) context[@"AVMetadataObjectTypeQRCode"] = AVMetadataObjectTypeQRCode;
	p = (void*) &AVMetadataObjectTypeSalientObject;
	if (p != NULL) context[@"AVMetadataObjectTypeSalientObject"] = AVMetadataObjectTypeSalientObject;
	p = (void*) &AVMetadataObjectTypeHumanBody;
	if (p != NULL) context[@"AVMetadataObjectTypeHumanBody"] = AVMetadataObjectTypeHumanBody;
	p = (void*) &AVMetadataObjectTypeCode39Mod43Code;
	if (p != NULL) context[@"AVMetadataObjectTypeCode39Mod43Code"] = AVMetadataObjectTypeCode39Mod43Code;
	p = (void*) &AVMetadataObjectTypeDataMatrixCode;
	if (p != NULL) context[@"AVMetadataObjectTypeDataMatrixCode"] = AVMetadataObjectTypeDataMatrixCode;
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
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
