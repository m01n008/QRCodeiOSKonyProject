#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLBlitPass_symbols(JSContext*);
@protocol MTLBlitPassDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) MTLBlitPassSampleBufferAttachmentDescriptorArray * sampleBufferAttachments;
@end
@protocol MTLBlitPassDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLBlitPassDescriptor *) blitPassDescriptor;
@end
@protocol MTLBlitPassSampleBufferAttachmentDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (retain,nonatomic) id sampleBuffer;
@property (nonatomic) NSUInteger startOfEncoderSampleIndex;
@property (nonatomic) NSUInteger endOfEncoderSampleIndex;
@end
@protocol MTLBlitPassSampleBufferAttachmentDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLBlitPassSampleBufferAttachmentDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLBlitPassSampleBufferAttachmentDescriptor *) attachment atIndexedSubscript: (NSUInteger) attachmentIndex ;
-(MTLBlitPassSampleBufferAttachmentDescriptor *) objectAtIndexedSubscript: (NSUInteger) attachmentIndex ;
@end
@protocol MTLBlitPassSampleBufferAttachmentDescriptorArrayClassExports<JSExport>
@end
#pragma clang diagnostic pop