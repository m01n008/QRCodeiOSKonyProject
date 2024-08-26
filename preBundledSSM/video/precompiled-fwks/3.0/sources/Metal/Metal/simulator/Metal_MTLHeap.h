#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLHeap_symbols(JSContext*);
@protocol MTLHeapInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) MTLStorageMode storageMode;
@property (readonly) MTLCPUCacheMode cpuCacheMode;
@property (readonly) MTLResourceOptions resourceOptions;
@property (readonly) NSUInteger usedSize;
@property (readonly) NSUInteger currentAllocatedSize;
@property (copy,atomic) NSString * label;
@property (readonly) MTLHazardTrackingMode hazardTrackingMode;
@property (readonly) id device;
@property (readonly) MTLHeapType type;
@property (readonly) NSUInteger size;
-(id) newTextureWithDescriptor: (MTLTextureDescriptor *) desc ;
-(NSUInteger) maxAvailableSizeWithAlignment: (NSUInteger) alignment ;
-(id) newTextureWithDescriptor: (MTLTextureDescriptor *) descriptor offset: (NSUInteger) offset ;
-(MTLPurgeableState) setPurgeableState: (MTLPurgeableState) state ;
-(id) newBufferWithLength: (NSUInteger) length options: (MTLResourceOptions) options ;
-(id) newBufferWithLength: (NSUInteger) length options: (MTLResourceOptions) options offset: (NSUInteger) offset ;
@end
@protocol MTLHeapClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop