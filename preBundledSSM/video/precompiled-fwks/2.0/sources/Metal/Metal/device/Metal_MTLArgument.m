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
	context[@"MTLDataTypeNone"] = @0U;
	context[@"MTLDataTypeStruct"] = @1U;
	context[@"MTLDataTypeArray"] = @2U;
	context[@"MTLDataTypeFloat"] = @3U;
	context[@"MTLDataTypeFloat2"] = @4U;
	context[@"MTLDataTypeFloat3"] = @5U;
	context[@"MTLDataTypeFloat4"] = @6U;
	context[@"MTLDataTypeFloat2x2"] = @7U;
	context[@"MTLDataTypeFloat2x3"] = @8U;
	context[@"MTLDataTypeFloat2x4"] = @9U;
	context[@"MTLDataTypeFloat3x2"] = @10U;
	context[@"MTLDataTypeFloat3x3"] = @11U;
	context[@"MTLDataTypeFloat3x4"] = @12U;
	context[@"MTLDataTypeFloat4x2"] = @13U;
	context[@"MTLDataTypeFloat4x3"] = @14U;
	context[@"MTLDataTypeFloat4x4"] = @15U;
	context[@"MTLDataTypeHalf"] = @16U;
	context[@"MTLDataTypeHalf2"] = @17U;
	context[@"MTLDataTypeHalf3"] = @18U;
	context[@"MTLDataTypeHalf4"] = @19U;
	context[@"MTLDataTypeHalf2x2"] = @20U;
	context[@"MTLDataTypeHalf2x3"] = @21U;
	context[@"MTLDataTypeHalf2x4"] = @22U;
	context[@"MTLDataTypeHalf3x2"] = @23U;
	context[@"MTLDataTypeHalf3x3"] = @24U;
	context[@"MTLDataTypeHalf3x4"] = @25U;
	context[@"MTLDataTypeHalf4x2"] = @26U;
	context[@"MTLDataTypeHalf4x3"] = @27U;
	context[@"MTLDataTypeHalf4x4"] = @28U;
	context[@"MTLDataTypeInt"] = @29U;
	context[@"MTLDataTypeInt2"] = @30U;
	context[@"MTLDataTypeInt3"] = @31U;
	context[@"MTLDataTypeInt4"] = @32U;
	context[@"MTLDataTypeUInt"] = @33U;
	context[@"MTLDataTypeUInt2"] = @34U;
	context[@"MTLDataTypeUInt3"] = @35U;
	context[@"MTLDataTypeUInt4"] = @36U;
	context[@"MTLDataTypeShort"] = @37U;
	context[@"MTLDataTypeShort2"] = @38U;
	context[@"MTLDataTypeShort3"] = @39U;
	context[@"MTLDataTypeShort4"] = @40U;
	context[@"MTLDataTypeUShort"] = @41U;
	context[@"MTLDataTypeUShort2"] = @42U;
	context[@"MTLDataTypeUShort3"] = @43U;
	context[@"MTLDataTypeUShort4"] = @44U;
	context[@"MTLDataTypeChar"] = @45U;
	context[@"MTLDataTypeChar2"] = @46U;
	context[@"MTLDataTypeChar3"] = @47U;
	context[@"MTLDataTypeChar4"] = @48U;
	context[@"MTLDataTypeUChar"] = @49U;
	context[@"MTLDataTypeUChar2"] = @50U;
	context[@"MTLDataTypeUChar3"] = @51U;
	context[@"MTLDataTypeUChar4"] = @52U;
	context[@"MTLDataTypeBool"] = @53U;
	context[@"MTLDataTypeBool2"] = @54U;
	context[@"MTLDataTypeBool3"] = @55U;
	context[@"MTLDataTypeBool4"] = @56U;
	context[@"MTLDataTypeTexture"] = @58U;
	context[@"MTLDataTypeSampler"] = @59U;
	context[@"MTLDataTypePointer"] = @60U;
	context[@"MTLDataTypeR8Unorm"] = @62U;
	context[@"MTLDataTypeR8Snorm"] = @63U;
	context[@"MTLDataTypeR16Unorm"] = @64U;
	context[@"MTLDataTypeR16Snorm"] = @65U;
	context[@"MTLDataTypeRG8Unorm"] = @66U;
	context[@"MTLDataTypeRG8Snorm"] = @67U;
	context[@"MTLDataTypeRG16Unorm"] = @68U;
	context[@"MTLDataTypeRG16Snorm"] = @69U;
	context[@"MTLDataTypeRGBA8Unorm"] = @70U;
	context[@"MTLDataTypeRGBA8Unorm_sRGB"] = @71U;
	context[@"MTLDataTypeRGBA8Snorm"] = @72U;
	context[@"MTLDataTypeRGBA16Unorm"] = @73U;
	context[@"MTLDataTypeRGBA16Snorm"] = @74U;
	context[@"MTLDataTypeRGB10A2Unorm"] = @75U;
	context[@"MTLDataTypeRG11B10Float"] = @76U;
	context[@"MTLDataTypeRGB9E5Float"] = @77U;

	context[@"MTLArgumentTypeBuffer"] = @0U;
	context[@"MTLArgumentTypeThreadgroupMemory"] = @1U;
	context[@"MTLArgumentTypeTexture"] = @2U;
	context[@"MTLArgumentTypeSampler"] = @3U;
	context[@"MTLArgumentTypeImageblockData"] = @16U;
	context[@"MTLArgumentTypeImageblock"] = @17U;

	context[@"MTLArgumentAccessReadOnly"] = @0U;
	context[@"MTLArgumentAccessReadWrite"] = @1U;
	context[@"MTLArgumentAccessWriteOnly"] = @2U;

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
