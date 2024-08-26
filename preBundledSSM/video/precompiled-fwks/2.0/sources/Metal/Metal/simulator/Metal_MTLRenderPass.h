#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLRenderPass_symbols(JSContext*);
@interface JSValue (Metal_MTLRenderPass)
+(JSValue*) valueWithMTLClearColor: (MTLClearColor) s inContext: (JSContext*) context;
-(MTLClearColor) toMTLClearColor;
@end
@protocol MTLRenderPassDepthAttachmentDescriptorInstanceExports<JSExport>
@property (nonatomic) double clearDepth;
@property (nonatomic) MTLMultisampleDepthResolveFilter depthResolveFilter;
@end
@protocol MTLRenderPassDepthAttachmentDescriptorClassExports<JSExport>
@end
@protocol MTLRenderPassAttachmentDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLLoadAction loadAction;
@property (nonatomic,strong) id resolveTexture;
@property (nonatomic) MTLStoreAction storeAction;
@property (nonatomic) NSUInteger level;
@property (nonatomic) NSUInteger resolveLevel;
@property (nonatomic,strong) id texture;
@property (nonatomic) MTLStoreActionOptions storeActionOptions;
@property (nonatomic) NSUInteger slice;
@property (nonatomic) NSUInteger resolveSlice;
@property (nonatomic) NSUInteger resolveDepthPlane;
@property (nonatomic) NSUInteger depthPlane;
@end
@protocol MTLRenderPassAttachmentDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLRenderPassDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) NSUInteger renderTargetWidth;
@property (nonatomic) NSUInteger tileHeight;
@property (nonatomic) NSUInteger tileWidth;
@property (copy,nonatomic) MTLRenderPassDepthAttachmentDescriptor * depthAttachment;
@property (nonatomic) NSUInteger imageblockSampleLength;
@property (nonatomic) NSUInteger defaultSampleCount;
@property (readonly) MTLRenderPassColorAttachmentDescriptorArray * colorAttachments;
@property (copy,nonatomic) MTLRenderPassStencilAttachmentDescriptor * stencilAttachment;
@property (nonatomic) NSUInteger threadgroupMemoryLength;
@property (nonatomic) NSUInteger renderTargetHeight;
@property (nonatomic) NSUInteger defaultRasterSampleCount;
@property (nonatomic,strong) id visibilityResultBuffer;
@end
@protocol MTLRenderPassDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLRenderPassDescriptor *) renderPassDescriptor;
@end
@protocol MTLRenderPassColorAttachmentDescriptorInstanceExports<JSExport>
@property (nonatomic) MTLClearColor clearColor;
@end
@protocol MTLRenderPassColorAttachmentDescriptorClassExports<JSExport>
@end
@protocol MTLRenderPassStencilAttachmentDescriptorInstanceExports<JSExport>
@property (nonatomic) uint32_t clearStencil;
@end
@protocol MTLRenderPassStencilAttachmentDescriptorClassExports<JSExport>
@end
@protocol MTLRenderPassColorAttachmentDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLRenderPassColorAttachmentDescriptor *) attachment atIndexedSubscript: (NSUInteger) attachmentIndex ;
-(MTLRenderPassColorAttachmentDescriptor *) objectAtIndexedSubscript: (NSUInteger) attachmentIndex ;
@end
@protocol MTLRenderPassColorAttachmentDescriptorArrayClassExports<JSExport>
@end
#pragma clang diagnostic pop