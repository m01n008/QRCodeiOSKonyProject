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
	class_addProtocol([MTLComputePassDescriptor class], @protocol(MTLComputePassDescriptorInstanceExports));
	class_addProtocol([MTLComputePassDescriptor class], @protocol(MTLComputePassDescriptorClassExports));
	class_addProtocol([MTLComputePassSampleBufferAttachmentDescriptor class], @protocol(MTLComputePassSampleBufferAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLComputePassSampleBufferAttachmentDescriptor class], @protocol(MTLComputePassSampleBufferAttachmentDescriptorClassExports));
	class_addProtocol([MTLComputePassSampleBufferAttachmentDescriptorArray class], @protocol(MTLComputePassSampleBufferAttachmentDescriptorArrayInstanceExports));
	class_addProtocol([MTLComputePassSampleBufferAttachmentDescriptorArray class], @protocol(MTLComputePassSampleBufferAttachmentDescriptorArrayClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLComputePass_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
