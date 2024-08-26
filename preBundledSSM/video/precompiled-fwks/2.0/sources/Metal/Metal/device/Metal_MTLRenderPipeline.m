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
	class_addProtocol([MTLRenderPipelineColorAttachmentDescriptor class], @protocol(MTLRenderPipelineColorAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLRenderPipelineColorAttachmentDescriptor class], @protocol(MTLRenderPipelineColorAttachmentDescriptorClassExports));
	class_addProtocol([MTLTileRenderPipelineColorAttachmentDescriptor class], @protocol(MTLTileRenderPipelineColorAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLTileRenderPipelineColorAttachmentDescriptor class], @protocol(MTLTileRenderPipelineColorAttachmentDescriptorClassExports));
	class_addProtocol([MTLTileRenderPipelineColorAttachmentDescriptorArray class], @protocol(MTLTileRenderPipelineColorAttachmentDescriptorArrayInstanceExports));
	class_addProtocol([MTLTileRenderPipelineColorAttachmentDescriptorArray class], @protocol(MTLTileRenderPipelineColorAttachmentDescriptorArrayClassExports));
	class_addProtocol([MTLRenderPipelineDescriptor class], @protocol(MTLRenderPipelineDescriptorInstanceExports));
	class_addProtocol([MTLRenderPipelineDescriptor class], @protocol(MTLRenderPipelineDescriptorClassExports));
	class_addProtocol([MTLRenderPipelineReflection class], @protocol(MTLRenderPipelineReflectionInstanceExports));
	class_addProtocol([MTLRenderPipelineReflection class], @protocol(MTLRenderPipelineReflectionClassExports));
	class_addProtocol([MTLTileRenderPipelineDescriptor class], @protocol(MTLTileRenderPipelineDescriptorInstanceExports));
	class_addProtocol([MTLTileRenderPipelineDescriptor class], @protocol(MTLTileRenderPipelineDescriptorClassExports));
	class_addProtocol([MTLRenderPipelineColorAttachmentDescriptorArray class], @protocol(MTLRenderPipelineColorAttachmentDescriptorArrayInstanceExports));
	class_addProtocol([MTLRenderPipelineColorAttachmentDescriptorArray class], @protocol(MTLRenderPipelineColorAttachmentDescriptorArrayClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLBlendFactorZero"] = @0U;
	context[@"MTLBlendFactorOne"] = @1U;
	context[@"MTLBlendFactorSourceColor"] = @2U;
	context[@"MTLBlendFactorOneMinusSourceColor"] = @3U;
	context[@"MTLBlendFactorSourceAlpha"] = @4U;
	context[@"MTLBlendFactorOneMinusSourceAlpha"] = @5U;
	context[@"MTLBlendFactorDestinationColor"] = @6U;
	context[@"MTLBlendFactorOneMinusDestinationColor"] = @7U;
	context[@"MTLBlendFactorDestinationAlpha"] = @8U;
	context[@"MTLBlendFactorOneMinusDestinationAlpha"] = @9U;
	context[@"MTLBlendFactorSourceAlphaSaturated"] = @10U;
	context[@"MTLBlendFactorBlendColor"] = @11U;
	context[@"MTLBlendFactorOneMinusBlendColor"] = @12U;
	context[@"MTLBlendFactorBlendAlpha"] = @13U;
	context[@"MTLBlendFactorOneMinusBlendAlpha"] = @14U;
	context[@"MTLBlendFactorSource1Color"] = @15U;
	context[@"MTLBlendFactorOneMinusSource1Color"] = @16U;
	context[@"MTLBlendFactorSource1Alpha"] = @17U;
	context[@"MTLBlendFactorOneMinusSource1Alpha"] = @18U;

	context[@"MTLBlendOperationAdd"] = @0U;
	context[@"MTLBlendOperationSubtract"] = @1U;
	context[@"MTLBlendOperationReverseSubtract"] = @2U;
	context[@"MTLBlendOperationMin"] = @3U;
	context[@"MTLBlendOperationMax"] = @4U;

	context[@"MTLColorWriteMaskNone"] = @0U;
	context[@"MTLColorWriteMaskRed"] = @8U;
	context[@"MTLColorWriteMaskGreen"] = @4U;
	context[@"MTLColorWriteMaskBlue"] = @2U;
	context[@"MTLColorWriteMaskAlpha"] = @1U;
	context[@"MTLColorWriteMaskAll"] = @15U;


	context[@"MTLTessellationPartitionModePow2"] = @0U;
	context[@"MTLTessellationPartitionModeInteger"] = @1U;
	context[@"MTLTessellationPartitionModeFractionalOdd"] = @2U;
	context[@"MTLTessellationPartitionModeFractionalEven"] = @3U;

	context[@"MTLTessellationFactorStepFunctionConstant"] = @0U;
	context[@"MTLTessellationFactorStepFunctionPerPatch"] = @1U;
	context[@"MTLTessellationFactorStepFunctionPerInstance"] = @2U;
	context[@"MTLTessellationFactorStepFunctionPerPatchAndPerInstance"] = @3U;

	context[@"MTLTessellationFactorFormatHalf"] = @0U;

	context[@"MTLTessellationControlPointIndexTypeNone"] = @0U;
	context[@"MTLTessellationControlPointIndexTypeUInt16"] = @1U;
	context[@"MTLTessellationControlPointIndexTypeUInt32"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLRenderPipelineProtocols()
{
	(void)@protocol(MTLRenderPipelineState);
}
void load_Metal_MTLRenderPipeline_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
