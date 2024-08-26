#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLBinaryArchive_symbols(JSContext*);
@protocol MTLBinaryArchiveDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,copy,nonatomic) NSURL * url;
@end
@protocol MTLBinaryArchiveDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLBinaryArchiveInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (copy,atomic) NSString * label;
JSExportAs(addRenderPipelineFunctionsWithDescriptorError,
-(BOOL) jsaddRenderPipelineFunctionsWithDescriptor: (MTLRenderPipelineDescriptor *) descriptor error: (JSValue *) error );
JSExportAs(serializeToURLError,
-(BOOL) jsserializeToURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(addComputePipelineFunctionsWithDescriptorError,
-(BOOL) jsaddComputePipelineFunctionsWithDescriptor: (MTLComputePipelineDescriptor *) descriptor error: (JSValue *) error );
JSExportAs(addTileRenderPipelineFunctionsWithDescriptorError,
-(BOOL) jsaddTileRenderPipelineFunctionsWithDescriptor: (MTLTileRenderPipelineDescriptor *) descriptor error: (JSValue *) error );
@end
@protocol MTLBinaryArchiveClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop