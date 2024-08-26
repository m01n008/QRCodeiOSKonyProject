#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLIntersectionFunctionTable_symbols(JSContext*);
@protocol MTLIntersectionFunctionTableDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) NSUInteger functionCount;
@end
@protocol MTLIntersectionFunctionTableDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLIntersectionFunctionTableDescriptor *) intersectionFunctionTableDescriptor;
@end
@protocol MTLIntersectionFunctionTableInstanceExports_<JSExport, MTLResourceInstanceExports_>
-(void) setOpaqueTriangleIntersectionFunctionWithSignature: (MTLIntersectionFunctionSignature) signature withRange: (NSRange) range ;
-(void) setBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setVisibleFunctionTable: (id) functionTable atBufferIndex: (NSUInteger) bufferIndex ;
-(void) setFunction: (id) function atIndex: (NSUInteger) index ;
-(void) setOpaqueTriangleIntersectionFunctionWithSignature: (MTLIntersectionFunctionSignature) signature atIndex: (NSUInteger) index ;
@end
@protocol MTLIntersectionFunctionTableClassExports_<JSExport, MTLResourceClassExports_>
@end
#pragma clang diagnostic pop