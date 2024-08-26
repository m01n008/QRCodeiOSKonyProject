#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLComputePass_symbols(JSContext*);
@protocol MTLComputePassDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLDispatchType dispatchType;
@property (readonly) MTLComputePassSampleBufferAttachmentDescriptorArray * sampleBufferAttachments;
@end
@protocol MTLComputePassDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLComputePassDescriptor *) computePassDescriptor;
@end
@protocol MTLComputePassSampleBufferAttachmentDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (retain,nonatomic) id sampleBuffer;
@property (nonatomic) NSUInteger startOfEncoderSampleIndex;
@property (nonatomic) NSUInteger endOfEncoderSampleIndex;
@end
@protocol MTLComputePassSampleBufferAttachmentDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLComputePassSampleBufferAttachmentDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLComputePassSampleBufferAttachmentDescriptor *) attachment atIndexedSubscript: (NSUInteger) attachmentIndex ;
-(MTLComputePassSampleBufferAttachmentDescriptor *) objectAtIndexedSubscript: (NSUInteger) attachmentIndex ;
@end
@protocol MTLComputePassSampleBufferAttachmentDescriptorArrayClassExports<JSExport>
@end
#pragma clang diagnostic pop