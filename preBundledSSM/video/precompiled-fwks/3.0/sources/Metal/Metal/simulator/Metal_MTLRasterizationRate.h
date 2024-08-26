#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLRasterizationRate_symbols(JSContext*);
@protocol MTLRasterizationRateSampleArrayInstanceExports<JSExport>
-(void) setObject: (NSNumber *) value atIndexedSubscript: (NSUInteger) index ;
-(NSNumber *) objectAtIndexedSubscript: (NSUInteger) index ;
@end
@protocol MTLRasterizationRateSampleArrayClassExports<JSExport>
@end
@protocol MTLRasterizationRateLayerArrayInstanceExports<JSExport>
-(void) setObject: (MTLRasterizationRateLayerDescriptor *) layer atIndexedSubscript: (NSUInteger) layerIndex ;
-(MTLRasterizationRateLayerDescriptor *) objectAtIndexedSubscript: (NSUInteger) layerIndex ;
@end
@protocol MTLRasterizationRateLayerArrayClassExports<JSExport>
@end
@protocol MTLRasterizationRateMapDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) MTLRasterizationRateLayerArray * layers;
@property (nonatomic) MTLSize screenSize;
@property (readonly,nonatomic) NSUInteger layerCount;
@property (copy,nonatomic) NSString * label;
-(MTLRasterizationRateLayerDescriptor *) layerAtIndex: (NSUInteger) layerIndex ;
-(void) setLayer: (MTLRasterizationRateLayerDescriptor *) layer atIndex: (NSUInteger) layerIndex ;
@end
@protocol MTLRasterizationRateMapDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLRasterizationRateMapDescriptor *) rasterizationRateMapDescriptorWithScreenSize: (MTLSize) screenSize ;
+(MTLRasterizationRateMapDescriptor *) rasterizationRateMapDescriptorWithScreenSize: (MTLSize) screenSize layer: (MTLRasterizationRateLayerDescriptor *) layer ;
@end
@protocol MTLRasterizationRateLayerDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) MTLSize sampleCount;
@property (readonly,nonatomic) MTLRasterizationRateSampleArray * vertical;
@property (readonly,nonatomic) MTLRasterizationRateSampleArray * horizontal;
JSExportAs(initWithSampleCount,
-(id) jsinitWithSampleCount: (MTLSize) sampleCount );
@end
@protocol MTLRasterizationRateLayerDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLRasterizationRateMapInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) MTLSizeAndAlign parameterBufferSizeAndAlign;
@property (readonly) NSString * label;
@property (readonly) MTLSize screenSize;
@property (readonly) NSUInteger layerCount;
@property (readonly) id device;
@property (readonly) MTLSize physicalGranularity;
-(MTLCoordinate2D) mapScreenToPhysicalCoordinates: (MTLCoordinate2D) screenCoordinates forLayer: (NSUInteger) layerIndex ;
-(MTLSize) physicalSizeForLayer: (NSUInteger) layerIndex ;
-(MTLCoordinate2D) mapPhysicalToScreenCoordinates: (MTLCoordinate2D) physicalCoordinates forLayer: (NSUInteger) layerIndex ;
-(void) copyParameterDataToBuffer: (id) buffer offset: (NSUInteger) offset ;
@end
@protocol MTLRasterizationRateMapClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop