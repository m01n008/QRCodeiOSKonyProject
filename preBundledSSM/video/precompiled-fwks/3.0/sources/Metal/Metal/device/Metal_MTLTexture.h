#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLTexture_symbols(JSContext*);
@interface JSValue (Metal_MTLTexture)
+(JSValue*) valueWithMTLTextureSwizzleChannels: (MTLTextureSwizzleChannels) s inContext: (JSContext*) context;
-(MTLTextureSwizzleChannels) toMTLTextureSwizzleChannels;
@end
@protocol MTLSharedTextureHandleInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly) id device;
@property (readonly) NSString * label;
@end
@protocol MTLSharedTextureHandleClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol MTLTextureDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,nonatomic) MTLResourceOptions resourceOptions;
@property (readwrite,nonatomic) MTLCPUCacheMode cpuCacheMode;
@property (readwrite,nonatomic) MTLStorageMode storageMode;
@property (readwrite,nonatomic) NSUInteger sampleCount;
@property (readwrite,nonatomic) BOOL allowGPUOptimizedContents;
@property (readwrite,nonatomic) MTLTextureType textureType;
@property (readwrite,nonatomic) MTLTextureSwizzleChannels swizzle;
@property (readwrite,nonatomic) MTLPixelFormat pixelFormat;
@property (readwrite,nonatomic) NSUInteger height;
@property (readwrite,nonatomic) MTLHazardTrackingMode hazardTrackingMode;
@property (readwrite,nonatomic) NSUInteger width;
@property (readwrite,nonatomic) NSUInteger depth;
@property (readwrite,nonatomic) NSUInteger arrayLength;
@property (readwrite,nonatomic) MTLTextureUsage usage;
@property (readwrite,nonatomic) NSUInteger mipmapLevelCount;
@end
@protocol MTLTextureDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLTextureDescriptor *) textureCubeDescriptorWithPixelFormat: (MTLPixelFormat) pixelFormat size: (NSUInteger) size mipmapped: (BOOL) mipmapped ;
+(MTLTextureDescriptor *) texture2DDescriptorWithPixelFormat: (MTLPixelFormat) pixelFormat width: (NSUInteger) width height: (NSUInteger) height mipmapped: (BOOL) mipmapped ;
+(MTLTextureDescriptor *) textureBufferDescriptorWithPixelFormat: (MTLPixelFormat) pixelFormat width: (NSUInteger) width resourceOptions: (MTLResourceOptions) resourceOptions usage: (MTLTextureUsage) usage ;
@end
@protocol MTLTextureInstanceExports_<JSExport, MTLResourceInstanceExports_>
@property (readonly) NSUInteger firstMipmapInTail;
@property (readonly,nonatomic) MTLTextureSwizzleChannels swizzle;
@property (readonly) NSUInteger height;
@property (getter=isFramebufferOnly,readonly) BOOL framebufferOnly;
@property (readonly) NSUInteger tailSizeInBytes;
@property (readonly) BOOL allowGPUOptimizedContents;
@property (readonly) NSUInteger width;
@property (readonly) NSUInteger arrayLength;
@property (readonly) NSUInteger bufferBytesPerRow;
@property (readonly) MTLTextureUsage usage;
@property (readonly) NSUInteger parentRelativeSlice;
@property (readonly) NSUInteger bufferOffset;
@property (readonly) id parentTexture;
@property (readonly) id buffer;
@property (readonly) BOOL isSparse;
@property (readonly) MTLPixelFormat pixelFormat;
@property (readonly) id rootResource;
@property (readonly) NSUInteger parentRelativeLevel;
@property (readonly) NSUInteger iosurfacePlane;
@property (readonly) NSUInteger sampleCount;
@property (readonly) NSUInteger mipmapLevelCount;
@property (readonly) MTLTextureType textureType;
@property (readonly) NSUInteger depth;
@property (getter=isShareable,readonly) BOOL shareable;
-(id) newTextureViewWithPixelFormat: (MTLPixelFormat) pixelFormat textureType: (MTLTextureType) textureType levels: (NSRange) levelRange slices: (NSRange) sliceRange swizzle: (MTLTextureSwizzleChannels) swizzle ;
-(id) newTextureViewWithPixelFormat: (MTLPixelFormat) pixelFormat ;
-(id) newTextureViewWithPixelFormat: (MTLPixelFormat) pixelFormat textureType: (MTLTextureType) textureType levels: (NSRange) levelRange slices: (NSRange) sliceRange ;
-(MTLSharedTextureHandle *) newSharedTextureHandle;
@end
@protocol MTLTextureClassExports_<JSExport, MTLResourceClassExports_>
@end
#pragma clang diagnostic pop