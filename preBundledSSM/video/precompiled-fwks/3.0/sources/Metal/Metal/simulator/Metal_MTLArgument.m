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
	class_addProtocol([MTLPointerType class], @protocol(MTLPointerTypeInstanceExports));
	class_addProtocol([MTLPointerType class], @protocol(MTLPointerTypeClassExports));
	class_addProtocol([MTLType class], @protocol(MTLTypeInstanceExports));
	class_addProtocol([MTLType class], @protocol(MTLTypeClassExports));
	class_addProtocol([MTLArrayType class], @protocol(MTLArrayTypeInstanceExports));
	class_addProtocol([MTLArrayType class], @protocol(MTLArrayTypeClassExports));
	class_addProtocol([MTLArgument class], @protocol(MTLArgumentInstanceExports));
	class_addProtocol([MTLArgument class], @protocol(MTLArgumentClassExports));
	class_addProtocol([MTLTextureReferenceType class], @protocol(MTLTextureReferenceTypeInstanceExports));
	class_addProtocol([MTLTextureReferenceType class], @protocol(MTLTextureReferenceTypeClassExports));
	class_addProtocol([MTLStructType class], @protocol(MTLStructTypeInstanceExports));
	class_addProtocol([MTLStructType class], @protocol(MTLStructTypeClassExports));
	class_addProtocol([MTLStructMember class], @protocol(MTLStructMemberInstanceExports));
	class_addProtocol([MTLStructMember class], @protocol(MTLStructMemberClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLDataTypeNone"] = @0UL;
	context[@"MTLDataTypeStruct"] = @1UL;
	context[@"MTLDataTypeArray"] = @2UL;
	context[@"MTLDataTypeFloat"] = @3UL;
	context[@"MTLDataTypeFloat2"] = @4UL;
	context[@"MTLDataTypeFloat3"] = @5UL;
	context[@"MTLDataTypeFloat4"] = @6UL;
	context[@"MTLDataTypeFloat2x2"] = @7UL;
	context[@"MTLDataTypeFloat2x3"] = @8UL;
	context[@"MTLDataTypeFloat2x4"] = @9UL;
	context[@"MTLDataTypeFloat3x2"] = @10UL;
	context[@"MTLDataTypeFloat3x3"] = @11UL;
	context[@"MTLDataTypeFloat3x4"] = @12UL;
	context[@"MTLDataTypeFloat4x2"] = @13UL;
	context[@"MTLDataTypeFloat4x3"] = @14UL;
	context[@"MTLDataTypeFloat4x4"] = @15UL;
	context[@"MTLDataTypeHalf"] = @16UL;
	context[@"MTLDataTypeHalf2"] = @17UL;
	context[@"MTLDataTypeHalf3"] = @18UL;
	context[@"MTLDataTypeHalf4"] = @19UL;
	context[@"MTLDataTypeHalf2x2"] = @20UL;
	context[@"MTLDataTypeHalf2x3"] = @21UL;
	context[@"MTLDataTypeHalf2x4"] = @22UL;
	context[@"MTLDataTypeHalf3x2"] = @23UL;
	context[@"MTLDataTypeHalf3x3"] = @24UL;
	context[@"MTLDataTypeHalf3x4"] = @25UL;
	context[@"MTLDataTypeHalf4x2"] = @26UL;
	context[@"MTLDataTypeHalf4x3"] = @27UL;
	context[@"MTLDataTypeHalf4x4"] = @28UL;
	context[@"MTLDataTypeInt"] = @29UL;
	context[@"MTLDataTypeInt2"] = @30UL;
	context[@"MTLDataTypeInt3"] = @31UL;
	context[@"MTLDataTypeInt4"] = @32UL;
	context[@"MTLDataTypeUInt"] = @33UL;
	context[@"MTLDataTypeUInt2"] = @34UL;
	context[@"MTLDataTypeUInt3"] = @35UL;
	context[@"MTLDataTypeUInt4"] = @36UL;
	context[@"MTLDataTypeShort"] = @37UL;
	context[@"MTLDataTypeShort2"] = @38UL;
	context[@"MTLDataTypeShort3"] = @39UL;
	context[@"MTLDataTypeShort4"] = @40UL;
	context[@"MTLDataTypeUShort"] = @41UL;
	context[@"MTLDataTypeUShort2"] = @42UL;
	context[@"MTLDataTypeUShort3"] = @43UL;
	context[@"MTLDataTypeUShort4"] = @44UL;
	context[@"MTLDataTypeChar"] = @45UL;
	context[@"MTLDataTypeChar2"] = @46UL;
	context[@"MTLDataTypeChar3"] = @47UL;
	context[@"MTLDataTypeChar4"] = @48UL;
	context[@"MTLDataTypeUChar"] = @49UL;
	context[@"MTLDataTypeUChar2"] = @50UL;
	context[@"MTLDataTypeUChar3"] = @51UL;
	context[@"MTLDataTypeUChar4"] = @52UL;
	context[@"MTLDataTypeBool"] = @53UL;
	context[@"MTLDataTypeBool2"] = @54UL;
	context[@"MTLDataTypeBool3"] = @55UL;
	context[@"MTLDataTypeBool4"] = @56UL;
	context[@"MTLDataTypeTexture"] = @58UL;
	context[@"MTLDataTypeSampler"] = @59UL;
	context[@"MTLDataTypePointer"] = @60UL;
	context[@"MTLDataTypeR8Unorm"] = @62UL;
	context[@"MTLDataTypeR8Snorm"] = @63UL;
	context[@"MTLDataTypeR16Unorm"] = @64UL;
	context[@"MTLDataTypeR16Snorm"] = @65UL;
	context[@"MTLDataTypeRG8Unorm"] = @66UL;
	context[@"MTLDataTypeRG8Snorm"] = @67UL;
	context[@"MTLDataTypeRG16Unorm"] = @68UL;
	context[@"MTLDataTypeRG16Snorm"] = @69UL;
	context[@"MTLDataTypeRGBA8Unorm"] = @70UL;
	context[@"MTLDataTypeRGBA8Unorm_sRGB"] = @71UL;
	context[@"MTLDataTypeRGBA8Snorm"] = @72UL;
	context[@"MTLDataTypeRGBA16Unorm"] = @73UL;
	context[@"MTLDataTypeRGBA16Snorm"] = @74UL;
	context[@"MTLDataTypeRGB10A2Unorm"] = @75UL;
	context[@"MTLDataTypeRG11B10Float"] = @76UL;
	context[@"MTLDataTypeRGB9E5Float"] = @77UL;
	context[@"MTLDataTypeRenderPipeline"] = @78UL;
	context[@"MTLDataTypeComputePipeline"] = @79UL;
	context[@"MTLDataTypeIndirectCommandBuffer"] = @80UL;
	context[@"MTLDataTypeVisibleFunctionTable"] = @115UL;
	context[@"MTLDataTypeIntersectionFunctionTable"] = @116UL;
	context[@"MTLDataTypePrimitiveAccelerationStructure"] = @117UL;
	context[@"MTLDataTypeInstanceAccelerationStructure"] = @118UL;

	context[@"MTLArgumentTypeBuffer"] = @0UL;
	context[@"MTLArgumentTypeThreadgroupMemory"] = @1UL;
	context[@"MTLArgumentTypeTexture"] = @2UL;
	context[@"MTLArgumentTypeSampler"] = @3UL;
	context[@"MTLArgumentTypeImageblockData"] = @16UL;
	context[@"MTLArgumentTypeImageblock"] = @17UL;
	context[@"MTLArgumentTypeVisibleFunctionTable"] = @24UL;
	context[@"MTLArgumentTypePrimitiveAccelerationStructure"] = @25UL;
	context[@"MTLArgumentTypeInstanceAccelerationStructure"] = @26UL;
	context[@"MTLArgumentTypeIntersectionFunctionTable"] = @27UL;

	context[@"MTLArgumentAccessReadOnly"] = @0UL;
	context[@"MTLArgumentAccessReadWrite"] = @1UL;
	context[@"MTLArgumentAccessWriteOnly"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLArgument_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
