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
	context[@"MTLVertexFormatInvalid"] = @0UL;
	context[@"MTLVertexFormatUChar2"] = @1UL;
	context[@"MTLVertexFormatUChar3"] = @2UL;
	context[@"MTLVertexFormatUChar4"] = @3UL;
	context[@"MTLVertexFormatChar2"] = @4UL;
	context[@"MTLVertexFormatChar3"] = @5UL;
	context[@"MTLVertexFormatChar4"] = @6UL;
	context[@"MTLVertexFormatUChar2Normalized"] = @7UL;
	context[@"MTLVertexFormatUChar3Normalized"] = @8UL;
	context[@"MTLVertexFormatUChar4Normalized"] = @9UL;
	context[@"MTLVertexFormatChar2Normalized"] = @10UL;
	context[@"MTLVertexFormatChar3Normalized"] = @11UL;
	context[@"MTLVertexFormatChar4Normalized"] = @12UL;
	context[@"MTLVertexFormatUShort2"] = @13UL;
	context[@"MTLVertexFormatUShort3"] = @14UL;
	context[@"MTLVertexFormatUShort4"] = @15UL;
	context[@"MTLVertexFormatShort2"] = @16UL;
	context[@"MTLVertexFormatShort3"] = @17UL;
	context[@"MTLVertexFormatShort4"] = @18UL;
	context[@"MTLVertexFormatUShort2Normalized"] = @19UL;
	context[@"MTLVertexFormatUShort3Normalized"] = @20UL;
	context[@"MTLVertexFormatUShort4Normalized"] = @21UL;
	context[@"MTLVertexFormatShort2Normalized"] = @22UL;
	context[@"MTLVertexFormatShort3Normalized"] = @23UL;
	context[@"MTLVertexFormatShort4Normalized"] = @24UL;
	context[@"MTLVertexFormatHalf2"] = @25UL;
	context[@"MTLVertexFormatHalf3"] = @26UL;
	context[@"MTLVertexFormatHalf4"] = @27UL;
	context[@"MTLVertexFormatFloat"] = @28UL;
	context[@"MTLVertexFormatFloat2"] = @29UL;
	context[@"MTLVertexFormatFloat3"] = @30UL;
	context[@"MTLVertexFormatFloat4"] = @31UL;
	context[@"MTLVertexFormatInt"] = @32UL;
	context[@"MTLVertexFormatInt2"] = @33UL;
	context[@"MTLVertexFormatInt3"] = @34UL;
	context[@"MTLVertexFormatInt4"] = @35UL;
	context[@"MTLVertexFormatUInt"] = @36UL;
	context[@"MTLVertexFormatUInt2"] = @37UL;
	context[@"MTLVertexFormatUInt3"] = @38UL;
	context[@"MTLVertexFormatUInt4"] = @39UL;
	context[@"MTLVertexFormatInt1010102Normalized"] = @40UL;
	context[@"MTLVertexFormatUInt1010102Normalized"] = @41UL;
	context[@"MTLVertexFormatUChar4Normalized_BGRA"] = @42UL;
	context[@"MTLVertexFormatUChar"] = @45UL;
	context[@"MTLVertexFormatChar"] = @46UL;
	context[@"MTLVertexFormatUCharNormalized"] = @47UL;
	context[@"MTLVertexFormatCharNormalized"] = @48UL;
	context[@"MTLVertexFormatUShort"] = @49UL;
	context[@"MTLVertexFormatShort"] = @50UL;
	context[@"MTLVertexFormatUShortNormalized"] = @51UL;
	context[@"MTLVertexFormatShortNormalized"] = @52UL;
	context[@"MTLVertexFormatHalf"] = @53UL;

	context[@"MTLVertexStepFunctionConstant"] = @0UL;
	context[@"MTLVertexStepFunctionPerVertex"] = @1UL;
	context[@"MTLVertexStepFunctionPerInstance"] = @2UL;
	context[@"MTLVertexStepFunctionPerPatch"] = @3UL;
	context[@"MTLVertexStepFunctionPerPatchControlPoint"] = @4UL;

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
