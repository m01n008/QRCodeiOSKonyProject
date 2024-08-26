#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreImage_CIImage_symbols(JSContext*);
@protocol CIImageInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,atomic) NSURL * url;
@property (readonly,atomic) id colorSpace;
@property (readonly,atomic) NSDictionary * properties;
@property (readonly,nonatomic) CGRect extent;
JSExportAs(initWithCVImageBufferOptions,
-(id) jsinitWithCVImageBuffer: (id) imageBuffer options: (NSDictionary *) options );
JSExportAs(initWithDataOptions,
-(id) jsinitWithData: (NSData *) data options: (NSDictionary *) options );
JSExportAs(initWithCVImageBuffer,
-(id) jsinitWithCVImageBuffer: (id) imageBuffer );
JSExportAs(initWithMTLTextureOptions,
-(id) jsinitWithMTLTexture: (id) texture options: (NSDictionary *) options );
-(CIImage *) imageByApplyingOrientation: (int) orientation ;
JSExportAs(initWithContentsOfURLOptions,
-(id) jsinitWithContentsOfURL: (NSURL *) url options: (NSDictionary *) options );
JSExportAs(initWithTextureSizeFlippedColorSpace,
-(id) jsinitWithTexture: (unsigned int) name size: (CGSize) size flipped: (BOOL) flipped colorSpace: (id) colorSpace );
JSExportAs(initWithCVPixelBuffer,
-(id) jsinitWithCVPixelBuffer: (id) pixelBuffer );
-(CGAffineTransform) imageTransformForOrientation: (int) orientation ;
-(CIImage *) imageByApplyingFilter: (NSString *) filterName withInputParameters: (NSDictionary *) params ;
-(CIImage *) imageByClampingToExtent;
JSExportAs(initWithColor,
-(id) jsinitWithColor: (CIColor *) color );
-(CIImage *) imageByApplyingTransform: (CGAffineTransform) matrix ;
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
JSExportAs(initWithCVPixelBufferOptions,
-(id) jsinitWithCVPixelBuffer: (id) pixelBuffer options: (NSDictionary *) options );
-(CGRect) regionOfInterestForImage: (CIImage *) image inRect: (CGRect) rect ;
JSExportAs(initWithCGImage,
-(id) jsinitWithCGImage: (id) image );
-(CIImage *) imageByCompositingOverImage: (CIImage *) dest ;
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithBitmapDataBytesPerRowSizeFormatColorSpace,
-(id) jsinitWithBitmapData: (NSData *) data bytesPerRow: (size_t) bytesPerRow size: (CGSize) size format: (CIFormat) format colorSpace: (id) colorSpace );
-(CIImage *) imageByCroppingToRect: (CGRect) rect ;
JSExportAs(initWithCGImageOptions,
-(id) jsinitWithCGImage: (id) image options: (NSDictionary *) options );
@end
@protocol CIImageClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(CIImage *) imageWithContentsOfURL: (NSURL *) url options: (NSDictionary *) options ;
+(CIImage *) imageWithCVPixelBuffer: (id) pixelBuffer options: (NSDictionary *) options ;
+(CIImage *) imageWithTexture: (unsigned int) name size: (CGSize) size flipped: (BOOL) flipped colorSpace: (id) colorSpace ;
+(CIImage *) imageWithContentsOfURL: (NSURL *) url ;
+(CIImage *) emptyImage;
+(CIImage *) imageWithCVImageBuffer: (id) imageBuffer options: (NSDictionary *) options ;
+(CIImage *) imageWithBitmapData: (NSData *) data bytesPerRow: (size_t) bytesPerRow size: (CGSize) size format: (CIFormat) format colorSpace: (id) colorSpace ;
+(CIImage *) imageWithCVPixelBuffer: (id) pixelBuffer ;
+(CIImage *) imageWithColor: (CIColor *) color ;
+(CIImage *) imageWithCGImage: (id) image ;
+(CIImage *) imageWithData: (NSData *) data options: (NSDictionary *) options ;
+(CIImage *) imageWithCVImageBuffer: (id) imageBuffer ;
+(CIImage *) imageWithCGImage: (id) image options: (NSDictionary *) options ;
+(CIImage *) imageWithMTLTexture: (id) texture options: (NSDictionary *) options ;
+(CIImage *) imageWithData: (NSData *) data ;
@end
@protocol CIImageAutoAdjustmentCategoryInstanceExports<JSExport>
-(NSArray *) autoAdjustmentFiltersWithOptions: (NSDictionary *) options ;
@end
@protocol CIImageAutoAdjustmentCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop