#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLResourceStatePass_symbols(JSContext*);
@protocol MTLResourceStatePassDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) MTLResourceStatePassSampleBufferAttachmentDescriptorArray * sampleBufferAttachments;
@end
@protocol MTLResourceStatePassDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLResourceStatePassDescriptor *) resourceStatePassDescriptor;
@end
@protocol MTLResourceStatePassSampleBufferAttachmentDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (retain,nonatomic) id sampleBuffer;
@property (nonatomic) NSUInteger startOfEncoderSampleIndex;
@property (nonatomic) NSUInteger endOfEncoderSampleIndex;
@end
@protocol MTLResourceStatePassSampleBufferAttachmentDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLResourceStatePassSampleBufferAttachmentDescriptor *) attachment atIndexedSubscript: (NSUInteger) attachmentIndex ;
-(MTLResourceStatePassSampleBufferAttachmentDescriptor *) objectAtIndexedSubscript: (NSUInteger) attachmentIndex ;
@end
@protocol MTLResourceStatePassSampleBufferAttachmentDescriptorArrayClassExports<JSExport>
@end
#pragma clang diagnostic pop