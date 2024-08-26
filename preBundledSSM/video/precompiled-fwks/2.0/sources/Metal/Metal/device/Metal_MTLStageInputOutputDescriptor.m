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
	class_addProtocol([MTLBufferLayoutDescriptor class], @protocol(MTLBufferLayoutDescriptorInstanceExports));
	class_addProtocol([MTLBufferLayoutDescriptor class], @protocol(MTLBufferLayoutDescriptorClassExports));
	class_addProtocol([MTLBufferLayoutDescriptorArray class], @protocol(MTLBufferLayoutDescriptorArrayInstanceExports));
	class_addProtocol([MTLBufferLayoutDescriptorArray class], @protocol(MTLBufferLayoutDescriptorArrayClassExports));
	class_addProtocol([MTLStageInputOutputDescriptor class], @protocol(MTLStageInputOutputDescriptorInstanceExports));
	class_addProtocol([MTLStageInputOutputDescriptor class], @protocol(MTLStageInputOutputDescriptorClassExports));
	class_addProtocol([MTLAttributeDescriptor class], @protocol(MTLAttributeDescriptorInstanceExports));
	class_addProtocol([MTLAttributeDescriptor class], @protocol(MTLAttributeDescriptorClassExports));
	class_addProtocol([MTLAttributeDescriptorArray class], @protocol(MTLAttributeDescriptorArrayInstanceExports));
	class_addProtocol([MTLAttributeDescriptorArray class], @protocol(MTLAttributeDescriptorArrayClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLAttributeFormatInvalid"] = @0U;
	context[@"MTLAttributeFormatUChar2"] = @1U;
	context[@"MTLAttributeFormatUChar3"] = @2U;
	context[@"MTLAttributeFormatUChar4"] = @3U;
	context[@"MTLAttributeFormatChar2"] = @4U;
	context[@"MTLAttributeFormatChar3"] = @5U;
	context[@"MTLAttributeFormatChar4"] = @6U;
	context[@"MTLAttributeFormatUChar2Normalized"] = @7U;
	context[@"MTLAttributeFormatUChar3Normalized"] = @8U;
	context[@"MTLAttributeFormatUChar4Normalized"] = @9U;
	context[@"MTLAttributeFormatChar2Normalized"] = @10U;
	context[@"MTLAttributeFormatChar3Normalized"] = @11U;
	context[@"MTLAttributeFormatChar4Normalized"] = @12U;
	context[@"MTLAttributeFormatUShort2"] = @13U;
	context[@"MTLAttributeFormatUShort3"] = @14U;
	context[@"MTLAttributeFormatUShort4"] = @15U;
	context[@"MTLAttributeFormatShort2"] = @16U;
	context[@"MTLAttributeFormatShort3"] = @17U;
	context[@"MTLAttributeFormatShort4"] = @18U;
	context[@"MTLAttributeFormatUShort2Normalized"] = @19U;
	context[@"MTLAttributeFormatUShort3Normalized"] = @20U;
	context[@"MTLAttributeFormatUShort4Normalized"] = @21U;
	context[@"MTLAttributeFormatShort2Normalized"] = @22U;
	context[@"MTLAttributeFormatShort3Normalized"] = @23U;
	context[@"MTLAttributeFormatShort4Normalized"] = @24U;
	context[@"MTLAttributeFormatHalf2"] = @25U;
	context[@"MTLAttributeFormatHalf3"] = @26U;
	context[@"MTLAttributeFormatHalf4"] = @27U;
	context[@"MTLAttributeFormatFloat"] = @28U;
	context[@"MTLAttributeFormatFloat2"] = @29U;
	context[@"MTLAttributeFormatFloat3"] = @30U;
	context[@"MTLAttributeFormatFloat4"] = @31U;
	context[@"MTLAttributeFormatInt"] = @32U;
	context[@"MTLAttributeFormatInt2"] = @33U;
	context[@"MTLAttributeFormatInt3"] = @34U;
	context[@"MTLAttributeFormatInt4"] = @35U;
	context[@"MTLAttributeFormatUInt"] = @36U;
	context[@"MTLAttributeFormatUInt2"] = @37U;
	context[@"MTLAttributeFormatUInt3"] = @38U;
	context[@"MTLAttributeFormatUInt4"] = @39U;
	context[@"MTLAttributeFormatInt1010102Normalized"] = @40U;
	context[@"MTLAttributeFormatUInt1010102Normalized"] = @41U;
	context[@"MTLAttributeFormatUChar4Normalized_BGRA"] = @42U;
	context[@"MTLAttributeFormatUChar"] = @45U;
	context[@"MTLAttributeFormatChar"] = @46U;
	context[@"MTLAttributeFormatUCharNormalized"] = @47U;
	context[@"MTLAttributeFormatCharNormalized"] = @48U;
	context[@"MTLAttributeFormatUShort"] = @49U;
	context[@"MTLAttributeFormatShort"] = @50U;
	context[@"MTLAttributeFormatUShortNormalized"] = @51U;
	context[@"MTLAttributeFormatShortNormalized"] = @52U;
	context[@"MTLAttributeFormatHalf"] = @53U;

	context[@"MTLIndexTypeUInt16"] = @0U;
	context[@"MTLIndexTypeUInt32"] = @1U;

	context[@"MTLStepFunctionConstant"] = @0U;
	context[@"MTLStepFunctionPerVertex"] = @1U;
	context[@"MTLStepFunctionPerInstance"] = @2U;
	context[@"MTLStepFunctionPerPatch"] = @3U;
	context[@"MTLStepFunctionPerPatchControlPoint"] = @4U;
	context[@"MTLStepFunctionThreadPositionInGridX"] = @5U;
	context[@"MTLStepFunctionThreadPositionInGridY"] = @6U;
	context[@"MTLStepFunctionThreadPositionInGridXIndexed"] = @7U;
	context[@"MTLStepFunctionThreadPositionInGridYIndexed"] = @8U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLStageInputOutputDescriptor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
