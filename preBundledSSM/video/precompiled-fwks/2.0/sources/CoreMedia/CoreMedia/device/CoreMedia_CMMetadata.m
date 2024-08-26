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
}
static void registerCFunctions(JSContext* context)
{
	context[@"CMMetadataDataTypeRegistryGetConformingDataTypes"] = ^id(id arg0) {
		return CMMetadataDataTypeRegistryGetConformingDataTypes(arg0);
	};
	context[@"CMMetadataDataTypeRegistryRegisterDataType"] = ^OSStatus(id arg0, id arg1, id arg2) {
		return CMMetadataDataTypeRegistryRegisterDataType(arg0, arg1, arg2);
	};
	context[@"CMMetadataDataTypeRegistryDataTypeIsRegistered"] = ^Boolean(id arg0) {
		return CMMetadataDataTypeRegistryDataTypeIsRegistered(arg0);
	};
	context[@"CMMetadataDataTypeRegistryGetDataTypeDescription"] = ^id(id arg0) {
		return CMMetadataDataTypeRegistryGetDataTypeDescription(arg0);
	};
	context[@"CMMetadataDataTypeRegistryGetBaseDataTypes"] = ^id() {
		return CMMetadataDataTypeRegistryGetBaseDataTypes();
	};
	context[@"CMMetadataDataTypeRegistryDataTypeConformsToDataType"] = ^Boolean(id arg0, id arg1) {
		return CMMetadataDataTypeRegistryDataTypeConformsToDataType(arg0, arg1);
	};
	context[@"CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType"] = ^id(id arg0) {
		return CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(arg0);
	};
	context[@"CMMetadataDataTypeRegistryDataTypeIsBaseDataType"] = ^Boolean(id arg0) {
		return CMMetadataDataTypeRegistryDataTypeIsBaseDataType(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMMetadataIdentifierError_AllocationFailed"] = @-16300L;
	context[@"kCMMetadataIdentifierError_RequiredParameterMissing"] = @-16301L;
	context[@"kCMMetadataIdentifierError_BadKey"] = @-16302L;
	context[@"kCMMetadataIdentifierError_BadKeyLength"] = @-16303L;
	context[@"kCMMetadataIdentifierError_BadKeyType"] = @-16304L;
	context[@"kCMMetadataIdentifierError_BadNumberKey"] = @-16305L;
	context[@"kCMMetadataIdentifierError_BadKeySpace"] = @-16306L;
	context[@"kCMMetadataIdentifierError_BadIdentifier"] = @-16307L;
	context[@"kCMMetadataIdentifierError_NoKeyValueAvailable"] = @-16308L;

	context[@"kCMMetadataDataTypeRegistryError_AllocationFailed"] = @-16310L;
	context[@"kCMMetadataDataTypeRegistryError_RequiredParameterMissing"] = @-16311L;
	context[@"kCMMetadataDataTypeRegistryError_BadDataTypeIdentifier"] = @-16312L;
	context[@"kCMMetadataDataTypeRegistryError_DataTypeAlreadyRegistered"] = @-16313L;
	context[@"kCMMetadataDataTypeRegistryError_RequiresConformingBaseType"] = @-16314L;
	context[@"kCMMetadataDataTypeRegistryError_MultipleConformingBaseTypes"] = @-16315L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMMetadataBaseDataType_AffineTransformF64;
	if (p != NULL) context[@"kCMMetadataBaseDataType_AffineTransformF64"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_AffineTransformF64 inContext: context];
	p = (void*) &kCMMetadataKeySpace_QuickTimeUserData;
	if (p != NULL) context[@"kCMMetadataKeySpace_QuickTimeUserData"] = [JSValue valueWithObject: (__bridge id) kCMMetadataKeySpace_QuickTimeUserData inContext: context];
	p = (void*) &kCMMetadataBaseDataType_UInt64;
	if (p != NULL) context[@"kCMMetadataBaseDataType_UInt64"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_UInt64 inContext: context];
	p = (void*) &kCMMetadataKeySpace_QuickTimeMetadata;
	if (p != NULL) context[@"kCMMetadataKeySpace_QuickTimeMetadata"] = [JSValue valueWithObject: (__bridge id) kCMMetadataKeySpace_QuickTimeMetadata inContext: context];
	p = (void*) &kCMMetadataBaseDataType_PNG;
	if (p != NULL) context[@"kCMMetadataBaseDataType_PNG"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_PNG inContext: context];
	p = (void*) &kCMMetadataIdentifier_QuickTimeMetadataPreferredAffineTransform;
	if (p != NULL) context[@"kCMMetadataIdentifier_QuickTimeMetadataPreferredAffineTransform"] = [JSValue valueWithObject: (__bridge id) kCMMetadataIdentifier_QuickTimeMetadataPreferredAffineTransform inContext: context];
	p = (void*) &kCMMetadataBaseDataType_UInt8;
	if (p != NULL) context[@"kCMMetadataBaseDataType_UInt8"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_UInt8 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_JSON;
	if (p != NULL) context[@"kCMMetadataBaseDataType_JSON"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_JSON inContext: context];
	p = (void*) &kCMMetadataBaseDataType_Float32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_Float32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_Float32 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_PolylineF32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_PolylineF32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_PolylineF32 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_PolygonF32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_PolygonF32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_PolygonF32 inContext: context];
	p = (void*) &kCMMetadataKeySpace_iTunes;
	if (p != NULL) context[@"kCMMetadataKeySpace_iTunes"] = [JSValue valueWithObject: (__bridge id) kCMMetadataKeySpace_iTunes inContext: context];
	p = (void*) &kCMMetadataBaseDataType_UTF16;
	if (p != NULL) context[@"kCMMetadataBaseDataType_UTF16"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_UTF16 inContext: context];
	p = (void*) &kCMMetadataIdentifier_QuickTimeMetadataLocation_ISO6709;
	if (p != NULL) context[@"kCMMetadataIdentifier_QuickTimeMetadataLocation_ISO6709"] = [JSValue valueWithObject: (__bridge id) kCMMetadataIdentifier_QuickTimeMetadataLocation_ISO6709 inContext: context];
	p = (void*) &kCMMetadataIdentifier_QuickTimeMetadataVideoOrientation;
	if (p != NULL) context[@"kCMMetadataIdentifier_QuickTimeMetadataVideoOrientation"] = [JSValue valueWithObject: (__bridge id) kCMMetadataIdentifier_QuickTimeMetadataVideoOrientation inContext: context];
	p = (void*) &kCMMetadataBaseDataType_SInt64;
	if (p != NULL) context[@"kCMMetadataBaseDataType_SInt64"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_SInt64 inContext: context];
	p = (void*) &kCMMetadataKeySpace_ISOUserData;
	if (p != NULL) context[@"kCMMetadataKeySpace_ISOUserData"] = [JSValue valueWithObject: (__bridge id) kCMMetadataKeySpace_ISOUserData inContext: context];
	p = (void*) &kCMMetadataBaseDataType_UInt32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_UInt32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_UInt32 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_Float64;
	if (p != NULL) context[@"kCMMetadataBaseDataType_Float64"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_Float64 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_UInt16;
	if (p != NULL) context[@"kCMMetadataBaseDataType_UInt16"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_UInt16 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_SInt32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_SInt32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_SInt32 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_DimensionsF32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_DimensionsF32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_DimensionsF32 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_SInt16;
	if (p != NULL) context[@"kCMMetadataBaseDataType_SInt16"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_SInt16 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_UTF8;
	if (p != NULL) context[@"kCMMetadataBaseDataType_UTF8"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_UTF8 inContext: context];
	p = (void*) &kCMMetadataDataType_QuickTimeMetadataDirection;
	if (p != NULL) context[@"kCMMetadataDataType_QuickTimeMetadataDirection"] = [JSValue valueWithObject: (__bridge id) kCMMetadataDataType_QuickTimeMetadataDirection inContext: context];
	p = (void*) &kCMMetadataBaseDataType_JPEG;
	if (p != NULL) context[@"kCMMetadataBaseDataType_JPEG"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_JPEG inContext: context];
	p = (void*) &kCMMetadataIdentifier_QuickTimeMetadataDirection_Facing;
	if (p != NULL) context[@"kCMMetadataIdentifier_QuickTimeMetadataDirection_Facing"] = [JSValue valueWithObject: (__bridge id) kCMMetadataIdentifier_QuickTimeMetadataDirection_Facing inContext: context];
	p = (void*) &kCMMetadataBaseDataType_RawData;
	if (p != NULL) context[@"kCMMetadataBaseDataType_RawData"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_RawData inContext: context];
	p = (void*) &kCMMetadataBaseDataType_RectF32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_RectF32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_RectF32 inContext: context];
	p = (void*) &kCMMetadataKeySpace_HLSDateRange;
	if (p != NULL) context[@"kCMMetadataKeySpace_HLSDateRange"] = [JSValue valueWithObject: (__bridge id) kCMMetadataKeySpace_HLSDateRange inContext: context];
	p = (void*) &kCMMetadataBaseDataType_BMP;
	if (p != NULL) context[@"kCMMetadataBaseDataType_BMP"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_BMP inContext: context];
	p = (void*) &kCMMetadataBaseDataType_SInt8;
	if (p != NULL) context[@"kCMMetadataBaseDataType_SInt8"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_SInt8 inContext: context];
	p = (void*) &kCMMetadataKeySpace_Icy;
	if (p != NULL) context[@"kCMMetadataKeySpace_Icy"] = [JSValue valueWithObject: (__bridge id) kCMMetadataKeySpace_Icy inContext: context];
	p = (void*) &kCMMetadataBaseDataType_PointF32;
	if (p != NULL) context[@"kCMMetadataBaseDataType_PointF32"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_PointF32 inContext: context];
	p = (void*) &kCMMetadataBaseDataType_GIF;
	if (p != NULL) context[@"kCMMetadataBaseDataType_GIF"] = [JSValue valueWithObject: (__bridge id) kCMMetadataBaseDataType_GIF inContext: context];
	p = (void*) &kCMMetadataKeySpace_ID3;
	if (p != NULL) context[@"kCMMetadataKeySpace_ID3"] = [JSValue valueWithObject: (__bridge id) kCMMetadataKeySpace_ID3 inContext: context];
	p = (void*) &kCMMetadataDataType_QuickTimeMetadataLocation_ISO6709;
	if (p != NULL) context[@"kCMMetadataDataType_QuickTimeMetadataLocation_ISO6709"] = [JSValue valueWithObject: (__bridge id) kCMMetadataDataType_QuickTimeMetadataLocation_ISO6709 inContext: context];
}
void load_CoreMedia_CMMetadata_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
