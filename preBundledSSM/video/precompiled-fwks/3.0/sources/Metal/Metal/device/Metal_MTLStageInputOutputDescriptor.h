#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLStageInputOutputDescriptor_symbols(JSContext*);
@protocol MTLBufferLayoutDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (assign,nonatomic) NSUInteger stepRate;
@property (assign,nonatomic) NSUInteger stride;
@property (assign,nonatomic) MTLStepFunction stepFunction;
@end
@protocol MTLBufferLayoutDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLBufferLayoutDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLBufferLayoutDescriptor *) bufferDesc atIndexedSubscript: (NSUInteger) index ;
-(MTLBufferLayoutDescriptor *) objectAtIndexedSubscript: (NSUInteger) index ;
@end
@protocol MTLBufferLayoutDescriptorArrayClassExports<JSExport>
@end
@protocol MTLStageInputOutputDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) MTLAttributeDescriptorArray * attributes;
@property (readonly) MTLBufferLayoutDescriptorArray * layouts;
@property (assign,nonatomic) MTLIndexType indexType;
@property (assign,nonatomic) NSUInteger indexBufferIndex;
-(void) reset;
@end
@protocol MTLStageInputOutputDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLStageInputOutputDescriptor *) stageInputOutputDescriptor;
@end
@protocol MTLAttributeDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLAttributeDescriptor *) attributeDesc atIndexedSubscript: (NSUInteger) index ;
-(MTLAttributeDescriptor *) objectAtIndexedSubscript: (NSUInteger) index ;
@end
@protocol MTLAttributeDescriptorArrayClassExports<JSExport>
@end
@protocol MTLAttributeDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (assign,nonatomic) NSUInteger bufferIndex;
@property (assign,nonatomic) NSUInteger offset;
@property (assign,nonatomic) MTLAttributeFormat format;
@end
@protocol MTLAttributeDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop