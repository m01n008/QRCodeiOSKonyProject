#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Metal_MTLRenderPass)
+(JSValue*) valueWithMTLClearColor: (MTLClearColor) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"red": @(s.red),
		@"green": @(s.green),
		@"blue": @(s.blue),
		@"alpha": @(s.alpha),
	} inContext: context];
}
-(MTLClearColor) toMTLClearColor {
	return (MTLClearColor) {
		(double) [self[@"red"] toDouble],
		(double) [self[@"green"] toDouble],
		(double) [self[@"blue"] toDouble],
		(double) [self[@"alpha"] toDouble],
	};
}
@end
static void addProtocols()
{
	class_addProtocol([MTLRenderPassDepthAttachmentDescriptor class], @protocol(MTLRenderPassDepthAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLRenderPassDepthAttachmentDescriptor class], @protocol(MTLRenderPassDepthAttachmentDescriptorClassExports));
	class_addProtocol([MTLRenderPassAttachmentDescriptor class], @protocol(MTLRenderPassAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLRenderPassAttachmentDescriptor class], @protocol(MTLRenderPassAttachmentDescriptorClassExports));
	class_addProtocol([MTLRenderPassDescriptor class], @protocol(MTLRenderPassDescriptorInstanceExports));
	class_addProtocol([MTLRenderPassDescriptor class], @protocol(MTLRenderPassDescriptorClassExports));
	class_addProtocol([MTLRenderPassColorAttachmentDescriptor class], @protocol(MTLRenderPassColorAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLRenderPassColorAttachmentDescriptor class], @protocol(MTLRenderPassColorAttachmentDescriptorClassExports));
	class_addProtocol([MTLRenderPassSampleBufferAttachmentDescriptor class], @protocol(MTLRenderPassSampleBufferAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLRenderPassSampleBufferAttachmentDescriptor class], @protocol(MTLRenderPassSampleBufferAttachmentDescriptorClassExports));
	class_addProtocol([MTLRenderPassStencilAttachmentDescriptor class], @protocol(MTLRenderPassStencilAttachmentDescriptorInstanceExports));
	class_addProtocol([MTLRenderPassStencilAttachmentDescriptor class], @protocol(MTLRenderPassStencilAttachmentDescriptorClassExports));
	class_addProtocol([MTLRenderPassColorAttachmentDescriptorArray class], @protocol(MTLRenderPassColorAttachmentDescriptorArrayInstanceExports));
	class_addProtocol([MTLRenderPassColorAttachmentDescriptorArray class], @protocol(MTLRenderPassColorAttachmentDescriptorArrayClassExports));
	class_addProtocol([MTLRenderPassSampleBufferAttachmentDescriptorArray class], @protocol(MTLRenderPassSampleBufferAttachmentDescriptorArrayInstanceExports));
	class_addProtocol([MTLRenderPassSampleBufferAttachmentDescriptorArray class], @protocol(MTLRenderPassSampleBufferAttachmentDescriptorArrayClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"MTLClearColorMake"] = ^MTLClearColor(double arg0, double arg1, double arg2, double arg3) {
		return MTLClearColorMake(arg0, arg1, arg2, arg3);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLLoadActionDontCare"] = @0UL;
	context[@"MTLLoadActionLoad"] = @1UL;
	context[@"MTLLoadActionClear"] = @2UL;

	context[@"MTLStoreActionDontCare"] = @0UL;
	context[@"MTLStoreActionStore"] = @1UL;
	context[@"MTLStoreActionMultisampleResolve"] = @2UL;
	context[@"MTLStoreActionStoreAndMultisampleResolve"] = @3UL;
	context[@"MTLStoreActionUnknown"] = @4UL;
	context[@"MTLStoreActionCustomSampleDepthStore"] = @5UL;

	context[@"MTLStoreActionOptionNone"] = @0UL;
	context[@"MTLStoreActionOptionCustomSamplePositions"] = @1UL;

	context[@"MTLMultisampleDepthResolveFilterSample0"] = @0UL;
	context[@"MTLMultisampleDepthResolveFilterMin"] = @1UL;
	context[@"MTLMultisampleDepthResolveFilterMax"] = @2UL;

	context[@"MTLMultisampleStencilResolveFilterSample0"] = @0UL;
	context[@"MTLMultisampleStencilResolveFilterDepthResolvedSample"] = @1UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLRenderPass_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
