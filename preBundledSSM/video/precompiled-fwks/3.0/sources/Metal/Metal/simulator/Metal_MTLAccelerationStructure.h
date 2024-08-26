#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLAccelerationStructure_symbols(JSContext*);
@protocol MTLAccelerationStructureBoundingBoxGeometryDescriptorInstanceExports<JSExport>
@property (nonatomic) NSUInteger boundingBoxCount;
@property (nonatomic) NSUInteger boundingBoxBufferOffset;
@property (retain,nonatomic) id boundingBoxBuffer;
@property (nonatomic) NSUInteger boundingBoxStride;
@end
@protocol MTLAccelerationStructureBoundingBoxGeometryDescriptorClassExports<JSExport>
+(id) descriptor;
@end
@protocol MTLAccelerationStructureGeometryDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) BOOL opaque;
@property (nonatomic) BOOL allowDuplicateIntersectionFunctionInvocation;
@property (nonatomic) NSUInteger intersectionFunctionTableOffset;
@end
@protocol MTLAccelerationStructureGeometryDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLInstanceAccelerationStructureDescriptorInstanceExports<JSExport>
@property (retain,nonatomic) NSArray * instancedAccelerationStructures;
@property (nonatomic) NSUInteger instanceCount;
@property (nonatomic) NSUInteger instanceDescriptorBufferOffset;
@property (retain,nonatomic) id instanceDescriptorBuffer;
@property (nonatomic) NSUInteger instanceDescriptorStride;
@end
@protocol MTLInstanceAccelerationStructureDescriptorClassExports<JSExport>
+(id) descriptor;
@end
@protocol MTLAccelerationStructureDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLAccelerationStructureUsage usage;
@end
@protocol MTLAccelerationStructureDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLPrimitiveAccelerationStructureDescriptorInstanceExports<JSExport>
@property (retain,nonatomic) NSArray * geometryDescriptors;
@end
@protocol MTLPrimitiveAccelerationStructureDescriptorClassExports<JSExport>
+(id) descriptor;
@end
@protocol MTLAccelerationStructureTriangleGeometryDescriptorInstanceExports<JSExport>
@property (nonatomic) NSUInteger triangleCount;
@property (retain,nonatomic) id vertexBuffer;
@property (nonatomic) MTLIndexType indexType;
@property (retain,nonatomic) id indexBuffer;
@property (nonatomic) NSUInteger indexBufferOffset;
@property (nonatomic) NSUInteger vertexBufferOffset;
@property (nonatomic) NSUInteger vertexStride;
@end
@protocol MTLAccelerationStructureTriangleGeometryDescriptorClassExports<JSExport>
+(id) descriptor;
@end
@protocol MTLAccelerationStructureInstanceExports_<JSExport, MTLResourceInstanceExports_>
@property (readonly,nonatomic) NSUInteger size;
@end
@protocol MTLAccelerationStructureClassExports_<JSExport, MTLResourceClassExports_>
@end
#pragma clang diagnostic pop