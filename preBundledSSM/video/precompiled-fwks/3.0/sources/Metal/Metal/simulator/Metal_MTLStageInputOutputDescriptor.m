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
	class_addProtocol([MTLAttributeDescriptorArray class], @protocol(MTLAttributeDescriptorArrayInstanceExports));
	class_addProtocol([MTLAttributeDescriptorArray class], @protocol(MTLAttributeDescriptorArrayClassExports));
	class_addProtocol([MTLAttributeDescriptor class], @protocol(MTLAttributeDescriptorInstanceExports));
	class_addProtocol([MTLAttributeDescriptor class], @protocol(MTLAttributeDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLAttributeFormatInvalid"] = @0UL;
	context[@"MTLAttributeFormatUChar2"] = @1UL;
	context[@"MTLAttributeFormatUChar3"] = @2UL;
	context[@"MTLAttributeFormatUChar4"] = @3UL;
	context[@"MTLAttributeFormatChar2"] = @4UL;
	context[@"MTLAttributeFormatChar3"] = @5UL;
	context[@"MTLAttributeFormatChar4"] = @6UL;
	context[@"MTLAttributeFormatUChar2Normalized"] = @7UL;
	context[@"MTLAttributeFormatUChar3Normalized"] = @8UL;
	context[@"MTLAttributeFormatUChar4Normalized"] = @9UL;
	context[@"MTLAttributeFormatChar2Normalized"] = @10UL;
	context[@"MTLAttributeFormatChar3Normalized"] = @11UL;
	context[@"MTLAttributeFormatChar4Normalized"] = @12UL;
	context[@"MTLAttributeFormatUShort2"] = @13UL;
	context[@"MTLAttributeFormatUShort3"] = @14UL;
	context[@"MTLAttributeFormatUShort4"] = @15UL;
	context[@"MTLAttributeFormatShort2"] = @16UL;
	context[@"MTLAttributeFormatShort3"] = @17UL;
	context[@"MTLAttributeFormatShort4"] = @18UL;
	context[@"MTLAttributeFormatUShort2Normalized"] = @19UL;
	context[@"MTLAttributeFormatUShort3Normalized"] = @20UL;
	context[@"MTLAttributeFormatUShort4Normalized"] = @21UL;
	context[@"MTLAttributeFormatShort2Normalized"] = @22UL;
	context[@"MTLAttributeFormatShort3Normalized"] = @23UL;
	context[@"MTLAttributeFormatShort4Normalized"] = @24UL;
	context[@"MTLAttributeFormatHalf2"] = @25UL;
	context[@"MTLAttributeFormatHalf3"] = @26UL;
	context[@"MTLAttributeFormatHalf4"] = @27UL;
	context[@"MTLAttributeFormatFloat"] = @28UL;
	context[@"MTLAttributeFormatFloat2"] = @29UL;
	context[@"MTLAttributeFormatFloat3"] = @30UL;
	context[@"MTLAttributeFormatFloat4"] = @31UL;
	context[@"MTLAttributeFormatInt"] = @32UL;
	context[@"MTLAttributeFormatInt2"] = @33UL;
	context[@"MTLAttributeFormatInt3"] = @34UL;
	context[@"MTLAttributeFormatInt4"] = @35UL;
	context[@"MTLAttributeFormatUInt"] = @36UL;
	context[@"MTLAttributeFormatUInt2"] = @37UL;
	context[@"MTLAttributeFormatUInt3"] = @38UL;
	context[@"MTLAttributeFormatUInt4"] = @39UL;
	context[@"MTLAttributeFormatInt1010102Normalized"] = @40UL;
	context[@"MTLAttributeFormatUInt1010102Normalized"] = @41UL;
	context[@"MTLAttributeFormatUChar4Normalized_BGRA"] = @42UL;
	context[@"MTLAttributeFormatUChar"] = @45UL;
	context[@"MTLAttributeFormatChar"] = @46UL;
	context[@"MTLAttributeFormatUCharNormalized"] = @47UL;
	context[@"MTLAttributeFormatCharNormalized"] = @48UL;
	context[@"MTLAttributeFormatUShort"] = @49UL;
	context[@"MTLAttributeFormatShort"] = @50UL;
	context[@"MTLAttributeFormatUShortNormalized"] = @51UL;
	context[@"MTLAttributeFormatShortNormalized"] = @52UL;
	context[@"MTLAttributeFormatHalf"] = @53UL;

	context[@"MTLIndexTypeUInt16"] = @0UL;
	context[@"MTLIndexTypeUInt32"] = @1UL;

	context[@"MTLStepFunctionConstant"] = @0UL;
	context[@"MTLStepFunctionPerVertex"] = @1UL;
	context[@"MTLStepFunctionPerInstance"] = @2UL;
	context[@"MTLStepFunctionPerPatch"] = @3UL;
	context[@"MTLStepFunctionPerPatchControlPoint"] = @4UL;
	context[@"MTLStepFunctionThreadPositionInGridX"] = @5UL;
	context[@"MTLStepFunctionThreadPositionInGridY"] = @6UL;
	context[@"MTLStepFunctionThreadPositionInGridXIndexed"] = @7UL;
	context[@"MTLStepFunctionThreadPositionInGridYIndexed"] = @8UL;

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
