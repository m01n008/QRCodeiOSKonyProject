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
	class_addProtocol([MTLVertexAttributeDescriptor class], @protocol(MTLVertexAttributeDescriptorInstanceExports));
	class_addProtocol([MTLVertexAttributeDescriptor class], @protocol(MTLVertexAttributeDescriptorClassExports));
	class_addProtocol([MTLVertexDescriptor class], @protocol(MTLVertexDescriptorInstanceExports));
	class_addProtocol([MTLVertexDescriptor class], @protocol(MTLVertexDescriptorClassExports));
	class_addProtocol([MTLVertexAttributeDescriptorArray class], @protocol(MTLVertexAttributeDescriptorArrayInstanceExports));
	class_addProtocol([MTLVertexAttributeDescriptorArray class], @protocol(MTLVertexAttributeDescriptorArrayClassExports));
	class_addProtocol([MTLVertexBufferLayoutDescriptorArray class], @protocol(MTLVertexBufferLayoutDescriptorArrayInstanceExports));
	class_addProtocol([MTLVertexBufferLayoutDescriptorArray class], @protocol(MTLVertexBufferLayoutDescriptorArrayClassExports));
	class_addProtocol([MTLVertexBufferLayoutDescriptor class], @protocol(MTLVertexBufferLayoutDescriptorInstanceExports));
	class_addProtocol([MTLVertexBufferLayoutDescriptor class], @protocol(MTLVertexBufferLayoutDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLVertexFormatInvalid"] = @0U;
	context[@"MTLVertexFormatUChar2"] = @1U;
	context[@"MTLVertexFormatUChar3"] = @2U;
	context[@"MTLVertexFormatUChar4"] = @3U;
	context[@"MTLVertexFormatChar2"] = @4U;
	context[@"MTLVertexFormatChar3"] = @5U;
	context[@"MTLVertexFormatChar4"] = @6U;
	context[@"MTLVertexFormatUChar2Normalized"] = @7U;
	context[@"MTLVertexFormatUChar3Normalized"] = @8U;
	context[@"MTLVertexFormatUChar4Normalized"] = @9U;
	context[@"MTLVertexFormatChar2Normalized"] = @10U;
	context[@"MTLVertexFormatChar3Normalized"] = @11U;
	context[@"MTLVertexFormatChar4Normalized"] = @12U;
	context[@"MTLVertexFormatUShort2"] = @13U;
	context[@"MTLVertexFormatUShort3"] = @14U;
	context[@"MTLVertexFormatUShort4"] = @15U;
	context[@"MTLVertexFormatShort2"] = @16U;
	context[@"MTLVertexFormatShort3"] = @17U;
	context[@"MTLVertexFormatShort4"] = @18U;
	context[@"MTLVertexFormatUShort2Normalized"] = @19U;
	context[@"MTLVertexFormatUShort3Normalized"] = @20U;
	context[@"MTLVertexFormatUShort4Normalized"] = @21U;
	context[@"MTLVertexFormatShort2Normalized"] = @22U;
	context[@"MTLVertexFormatShort3Normalized"] = @23U;
	context[@"MTLVertexFormatShort4Normalized"] = @24U;
	context[@"MTLVertexFormatHalf2"] = @25U;
	context[@"MTLVertexFormatHalf3"] = @26U;
	context[@"MTLVertexFormatHalf4"] = @27U;
	context[@"MTLVertexFormatFloat"] = @28U;
	context[@"MTLVertexFormatFloat2"] = @29U;
	context[@"MTLVertexFormatFloat3"] = @30U;
	context[@"MTLVertexFormatFloat4"] = @31U;
	context[@"MTLVertexFormatInt"] = @32U;
	context[@"MTLVertexFormatInt2"] = @33U;
	context[@"MTLVertexFormatInt3"] = @34U;
	context[@"MTLVertexFormatInt4"] = @35U;
	context[@"MTLVertexFormatUInt"] = @36U;
	context[@"MTLVertexFormatUInt2"] = @37U;
	context[@"MTLVertexFormatUInt3"] = @38U;
	context[@"MTLVertexFormatUInt4"] = @39U;
	context[@"MTLVertexFormatInt1010102Normalized"] = @40U;
	context[@"MTLVertexFormatUInt1010102Normalized"] = @41U;
	context[@"MTLVertexFormatUChar4Normalized_BGRA"] = @42U;
	context[@"MTLVertexFormatUChar"] = @45U;
	context[@"MTLVertexFormatChar"] = @46U;
	context[@"MTLVertexFormatUCharNormalized"] = @47U;
	context[@"MTLVertexFormatCharNormalized"] = @48U;
	context[@"MTLVertexFormatUShort"] = @49U;
	context[@"MTLVertexFormatShort"] = @50U;
	context[@"MTLVertexFormatUShortNormalized"] = @51U;
	context[@"MTLVertexFormatShortNormalized"] = @52U;
	context[@"MTLVertexFormatHalf"] = @53U;

	context[@"MTLVertexStepFunctionConstant"] = @0U;
	context[@"MTLVertexStepFunctionPerVertex"] = @1U;
	context[@"MTLVertexStepFunctionPerInstance"] = @2U;
	context[@"MTLVertexStepFunctionPerPatch"] = @3U;
	context[@"MTLVertexStepFunctionPerPatchControlPoint"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLVertexDescriptor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
