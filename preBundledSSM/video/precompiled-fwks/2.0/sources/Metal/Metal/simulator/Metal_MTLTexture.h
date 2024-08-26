#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLTexture_symbols(JSContext*);
@protocol MTLTextureDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,nonatomic) MTLResourceOptions resourceOptions;
@property (readwrite,nonatomic) MTLCPUCacheMode cpuCacheMode;
@property (readwrite,nonatomic) MTLStorageMode storageMode;
@property (readwrite,nonatomic) NSUInteger sampleCount;
@property (readwrite,nonatomic) MTLTextureType textureType;
@property (readwrite,nonatomic) MTLPixelFormat pixelFormat;
@property (readwrite,nonatomic) NSUInteger height;
@property (readwrite,nonatomic) NSUInteger width;
@property (readwrite,nonatomic) NSUInteger depth;
@property (readwrite,nonatomic) NSUInteger arrayLength;
@property (readwrite,nonatomic) MTLTextureUsage usage;
@property (readwrite,nonatomic) NSUInteger mipmapLevelCount;
@end
@protocol MTLTextureDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLTextureDescriptor *) textureCubeDescriptorWithPixelFormat: (MTLPixelFormat) pixelFormat size: (NSUInteger) size mipmapped: (BOOL) mipmapped ;
+(MTLTextureDescriptor *) texture2DDescriptorWithPixelFormat: (MTLPixelFormat) pixelFormat width: (NSUInteger) width height: (NSUInteger) height mipmapped: (BOOL) mipmapped ;
@end
@protocol MTLTextureInstanceExports_<JSExport, MTLResourceInstanceExports_>
@property (readonly) NSUInteger bufferOffset;
@property (readonly) id parentTexture;
@property (readonly) MTLTextureUsage usage;
@property (readonly) id buffer;
@property (readonly) MTLTextureType textureType;
@property (readonly) NSUInteger depth;
@property (readonly) NSUInteger height;
@property (getter=isFramebufferOnly,readonly) BOOL framebufferOnly;
@property (readonly) NSUInteger width;
@property (readonly) MTLPixelFormat pixelFormat;
@property (readonly) NSUInteger arrayLength;
@property (readonly) NSUInteger bufferBytesPerRow;
@property (readonly) id rootResource;
@property (readonly) NSUInteger parentRelativeLevel;
@property (readonly) NSUInteger sampleCount;
@property (readonly) NSUInteger parentRelativeSlice;
@property (readonly) NSUInteger mipmapLevelCount;
-(id) newTextureViewWithPixelFormat: (MTLPixelFormat) pixelFormat ;
-(id) newTextureViewWithPixelFormat: (MTLPixelFormat) pixelFormat textureType: (MTLTextureType) textureType levels: (NSRange) levelRange slices: (NSRange) sliceRange ;
@end
@protocol MTLTextureClassExports_<JSExport, MTLResourceClassExports_>
@end
#pragma clang diagnostic pop