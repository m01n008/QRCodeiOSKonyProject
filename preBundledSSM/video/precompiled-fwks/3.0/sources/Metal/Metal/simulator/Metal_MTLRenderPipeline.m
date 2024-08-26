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
	context[@"MTLBlendFactorZero"] = @0UL;
	context[@"MTLBlendFactorOne"] = @1UL;
	context[@"MTLBlendFactorSourceColor"] = @2UL;
	context[@"MTLBlendFactorOneMinusSourceColor"] = @3UL;
	context[@"MTLBlendFactorSourceAlpha"] = @4UL;
	context[@"MTLBlendFactorOneMinusSourceAlpha"] = @5UL;
	context[@"MTLBlendFactorDestinationColor"] = @6UL;
	context[@"MTLBlendFactorOneMinusDestinationColor"] = @7UL;
	context[@"MTLBlendFactorDestinationAlpha"] = @8UL;
	context[@"MTLBlendFactorOneMinusDestinationAlpha"] = @9UL;
	context[@"MTLBlendFactorSourceAlphaSaturated"] = @10UL;
	context[@"MTLBlendFactorBlendColor"] = @11UL;
	context[@"MTLBlendFactorOneMinusBlendColor"] = @12UL;
	context[@"MTLBlendFactorBlendAlpha"] = @13UL;
	context[@"MTLBlendFactorOneMinusBlendAlpha"] = @14UL;
	context[@"MTLBlendFactorSource1Color"] = @15UL;
	context[@"MTLBlendFactorOneMinusSource1Color"] = @16UL;
	context[@"MTLBlendFactorSource1Alpha"] = @17UL;
	context[@"MTLBlendFactorOneMinusSource1Alpha"] = @18UL;

	context[@"MTLBlendOperationAdd"] = @0UL;
	context[@"MTLBlendOperationSubtract"] = @1UL;
	context[@"MTLBlendOperationReverseSubtract"] = @2UL;
	context[@"MTLBlendOperationMin"] = @3UL;
	context[@"MTLBlendOperationMax"] = @4UL;

	context[@"MTLColorWriteMaskNone"] = @0UL;
	context[@"MTLColorWriteMaskRed"] = @8UL;
	context[@"MTLColorWriteMaskGreen"] = @4UL;
	context[@"MTLColorWriteMaskBlue"] = @2UL;
	context[@"MTLColorWriteMaskAlpha"] = @1UL;
	context[@"MTLColorWriteMaskAll"] = @15UL;

	context[@"MTLPrimitiveTopologyClassUnspecified"] = @0UL;
	context[@"MTLPrimitiveTopologyClassPoint"] = @1UL;
	context[@"MTLPrimitiveTopologyClassLine"] = @2UL;
	context[@"MTLPrimitiveTopologyClassTriangle"] = @3UL;

	context[@"MTLTessellationPartitionModePow2"] = @0UL;
	context[@"MTLTessellationPartitionModeInteger"] = @1UL;
	context[@"MTLTessellationPartitionModeFractionalOdd"] = @2UL;
	context[@"MTLTessellationPartitionModeFractionalEven"] = @3UL;

	context[@"MTLTessellationFactorStepFunctionConstant"] = @0UL;
	context[@"MTLTessellationFactorStepFunctionPerPatch"] = @1UL;
	context[@"MTLTessellationFactorStepFunctionPerInstance"] = @2UL;
	context[@"MTLTessellationFactorStepFunctionPerPatchAndPerInstance"] = @3UL;

	context[@"MTLTessellationFactorFormatHalf"] = @0UL;

	context[@"MTLTessellationControlPointIndexTypeNone"] = @0UL;
	context[@"MTLTessellationControlPointIndexTypeUInt16"] = @1UL;
	context[@"MTLTessellationControlPointIndexTypeUInt32"] = @2UL;

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
