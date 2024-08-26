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
	class_addProtocol([MTLAccelerationStructureBoundingBoxGeometryDescriptor class], @protocol(MTLAccelerationStructureBoundingBoxGeometryDescriptorInstanceExports));
	class_addProtocol([MTLAccelerationStructureBoundingBoxGeometryDescriptor class], @protocol(MTLAccelerationStructureBoundingBoxGeometryDescriptorClassExports));
	class_addProtocol([MTLAccelerationStructureGeometryDescriptor class], @protocol(MTLAccelerationStructureGeometryDescriptorInstanceExports));
	class_addProtocol([MTLAccelerationStructureGeometryDescriptor class], @protocol(MTLAccelerationStructureGeometryDescriptorClassExports));
	class_addProtocol([MTLInstanceAccelerationStructureDescriptor class], @protocol(MTLInstanceAccelerationStructureDescriptorInstanceExports));
	class_addProtocol([MTLInstanceAccelerationStructureDescriptor class], @protocol(MTLInstanceAccelerationStructureDescriptorClassExports));
	class_addProtocol([MTLAccelerationStructureDescriptor class], @protocol(MTLAccelerationStructureDescriptorInstanceExports));
	class_addProtocol([MTLAccelerationStructureDescriptor class], @protocol(MTLAccelerationStructureDescriptorClassExports));
	class_addProtocol([MTLPrimitiveAccelerationStructureDescriptor class], @protocol(MTLPrimitiveAccelerationStructureDescriptorInstanceExports));
	class_addProtocol([MTLPrimitiveAccelerationStructureDescriptor class], @protocol(MTLPrimitiveAccelerationStructureDescriptorClassExports));
	class_addProtocol([MTLAccelerationStructureTriangleGeometryDescriptor class], @protocol(MTLAccelerationStructureTriangleGeometryDescriptorInstanceExports));
	class_addProtocol([MTLAccelerationStructureTriangleGeometryDescriptor class], @protocol(MTLAccelerationStructureTriangleGeometryDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLAccelerationStructureUsageNone"] = @0U;
	context[@"MTLAccelerationStructureUsageRefit"] = @1U;
	context[@"MTLAccelerationStructureUsagePreferFastBuild"] = @2U;

	context[@"MTLAccelerationStructureInstanceOptionNone"] = @0U;
	context[@"MTLAccelerationStructureInstanceOptionDisableTriangleCulling"] = @1U;
	context[@"MTLAccelerationStructureInstanceOptionTriangleFrontFacingWindingCounterClockwise"] = @2U;
	context[@"MTLAccelerationStructureInstanceOptionOpaque"] = @4U;
	context[@"MTLAccelerationStructureInstanceOptionNonOpaque"] = @8U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLAccelerationStructureProtocols()
{
	(void)@protocol(MTLAccelerationStructure);
}
void load_Metal_MTLAccelerationStructure_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
