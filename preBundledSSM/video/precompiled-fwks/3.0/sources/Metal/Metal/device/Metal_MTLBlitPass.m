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
	class_addProtocol([MTLBlitPassDescriptor class], @protocol(MTLBlitPassDescriptorInstanceExports));
	class_addProtocol([MTLBlitPassDescriptor class], @protocol(MTLBlitPassDescriptorClassExports));
	class_addProtocol([MTLBlitPassSampleBufferAttachmentDescriptor class], @protocol(MTLBlitPassSampleBufferAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLBlitPassSampleBufferAttachmentDescriptor class], @protocol(MTLBlitPassSampleBufferAttachmentDescriptorClassExports));
	class_addProtocol([MTLBlitPassSampleBufferAttachmentDescriptorArray class], @protocol(MTLBlitPassSampleBufferAttachmentDescriptorArrayInstanceExports));
	class_addProtocol([MTLBlitPassSampleBufferAttachmentDescriptorArray class], @protocol(MTLBlitPassSampleBufferAttachmentDescriptorArrayClassExports));
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
void load_Metal_MTLBlitPass_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
