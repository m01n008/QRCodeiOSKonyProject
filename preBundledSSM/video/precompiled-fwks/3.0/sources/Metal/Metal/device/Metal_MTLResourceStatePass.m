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
	class_addProtocol([MTLResourceStatePassDescriptor class], @protocol(MTLResourceStatePassDescriptorInstanceExports));
	class_addProtocol([MTLResourceStatePassDescriptor class], @protocol(MTLResourceStatePassDescriptorClassExports));
	class_addProtocol([MTLResourceStatePassSampleBufferAttachmentDescriptor class], @protocol(MTLResourceStatePassSampleBufferAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLResourceStatePassSampleBufferAttachmentDescriptor class], @protocol(MTLResourceStatePassSampleBufferAttachmentDescriptorClassExports));
	class_addProtocol([MTLResourceStatePassSampleBufferAttachmentDescriptorArray class], @protocol(MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInstanceExports));
	class_addProtocol([MTLResourceStatePassSampleBufferAttachmentDescriptorArray class], @protocol(MTLResourceStatePassSampleBufferAttachmentDescriptorArrayClassExports));
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
void load_Metal_MTLResourceStatePass_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
