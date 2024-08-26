#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLVertexDescriptor_symbols(JSContext*);
@protocol MTLVertexAttributeDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (assign,nonatomic) NSUInteger bufferIndex;
@property (assign,nonatomic) NSUInteger offset;
@property (assign,nonatomic) MTLVertexFormat format;
@end
@protocol MTLVertexAttributeDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLVertexDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) MTLVertexAttributeDescriptorArray * attributes;
@property (readonly) MTLVertexBufferLayoutDescriptorArray * layouts;
-(void) reset;
@end
@protocol MTLVertexDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLVertexDescriptor *) vertexDescriptor;
@end
@protocol MTLVertexAttributeDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLVertexAttributeDescriptor *) attributeDesc atIndexedSubscript: (NSUInteger) index ;
-(MTLVertexAttributeDescriptor *) objectAtIndexedSubscript: (NSUInteger) index ;
@end
@protocol MTLVertexAttributeDescriptorArrayClassExports<JSExport>
@end
@protocol MTLVertexBufferLayoutDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLVertexBufferLayoutDescriptor *) bufferDesc atIndexedSubscript: (NSUInteger) index ;
-(MTLVertexBufferLayoutDescriptor *) objectAtIndexedSubscript: (NSUInteger) index ;
@end
@protocol MTLVertexBufferLayoutDescriptorArrayClassExports<JSExport>
@end
@protocol MTLVertexBufferLayoutDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (assign,nonatomic) NSUInteger stepRate;
@property (assign,nonatomic) NSUInteger stride;
@property (assign,nonatomic) MTLVertexStepFunction stepFunction;
@end
@protocol MTLVertexBufferLayoutDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop