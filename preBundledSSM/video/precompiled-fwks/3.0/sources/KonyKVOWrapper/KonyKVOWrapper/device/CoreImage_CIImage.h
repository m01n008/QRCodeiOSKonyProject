#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreImage_CIImage_symbols(JSContext*);
@protocol CIImageAVDepthDataCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVDepthData * depthData;
JSExportAs(initWithDepthDataOptions,
-(id) jsinitWithDepthData: (AVDepthData *) data options: (NSDictionary *) options );
JSExportAs(initWithDepthData,
-(id) jsinitWithDepthData: (AVDepthData *) data );
@end
@protocol CIImageAVDepthDataCategoryClassExports<JSExport>
+(id) imageWithDepthData: (AVDepthData *) data options: (NSDictionary *) options ;
+(id) imageWithDepthData: (AVDepthData *) data ;
@end
@protocol CIImageAVSemanticSegmentationMatteCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVSemanticSegmentationMatte * semanticSegmentationMatte;
JSExportAs(initWithSemanticSegmentationMatteOptions,
-(id) jsinitWithSemanticSegmentationMatte: (AVSemanticSegmentationMatte *) matte options: (NSDictionary *) options );
JSExportAs(initWithSemanticSegmentationMatte,
-(id) jsinitWithSemanticSegmentationMatte: (AVSemanticSegmentationMatte *) matte );
@end
@protocol CIImageAVSemanticSegmentationMatteCategoryClassExports<JSExport>
+(id) imageWithSemanticSegmentationMatte: (AVSemanticSegmentationMatte *) matte options: (NSDictionary *) options ;
+(id) imageWithSemanticSegmentationMatte: (AVSemanticSegmentationMatte *) matte ;
@end
@protocol CIImageAutoAdjustmentCategoryInstanceExports<JSExport>
-(NSArray *) autoAdjustmentFilters;
-(NSArray *) autoAdjustmentFiltersWithOptions: (NSDictionary *) options ;
@end
@protocol CIImageAutoAdjustmentCategoryClassExports<JSExport>
@end
@protocol CIImageInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,nonatomic) id CGImage;
@property (readonly,atomic) NSURL * url;
@property (readonly,atomic) id colorSpace;
@property (readonly,nonatomic) id pixelBuffer;
@property (readonly,nonatomic) CGRect extent;
@property (readonly,atomic) NSDictionary * properties;
-(CIImage *) imageByUnpremultiplyingAlpha;
JSExportAs(initWithCVImageBufferOptions,
-(id) jsinitWithCVImageBuffer: (id) imageBuffer options: (NSDictionary *) options );
-(CIImage *) imageByApplyingCGOrientation: (CGImagePropertyOrientation) orientation ;
-(CIImage *) imageByInsertingIntermediate;
JSExportAs(initWithDataOptions,
-(id) jsinitWithData: (NSData *) data options: (NSDictionary *) options );
JSExportAs(initWithCVImageBuffer,
-(id) jsinitWithCVImageBuffer: (id) imageBuffer );
JSExportAs(initWithMTLTextureOptions,
-(id) jsinitWithMTLTexture: (id) texture options: (NSDictionary *) options );
-(CIImage *) imageByApplyingGaussianBlurWithSigma: (double) sigma ;
-(CIImage *) imageByApplyingOrientation: (int) orientation ;
JSExportAs(initWithContentsOfURLOptions,
-(id) jsinitWithContentsOfURL: (NSURL *) url options: (NSDictionary *) options );
-(CIImage *) imageByClampingToRect: (CGRect) rect ;
-(CIImage *) imageByPremultiplyingAlpha;
JSExportAs(initWithTextureSizeFlippedColorSpace,
-(id) jsinitWithTexture: (unsigned int) name size: (CGSize) size flipped: (BOOL) flipped colorSpace: (id) colorSpace );
-(CIImage *) imageBySamplingNearest;
-(CIImage *) imageBySettingProperties: (NSDictionary *) properties ;
-(CIImage *) imageBySamplingLinear;
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
JSExportAs(initWithCGImageOptions,
-(id) jsinitWithCGImage: (id) image options: (NSDictionary *) options );
-(CGRect) regionOfInterestForImage: (CIImage *) image inRect: (CGRect) rect ;
JSExportAs(initWithIOSurface,
-(id) jsinitWithIOSurface: (id) surface );
-(CIImage *) imageByColorMatchingColorSpaceToWorkingSpace: (id) colorSpace ;
JSExportAs(initWithCGImage,
-(id) jsinitWithCGImage: (id) image );
JSExportAs(initWithCGImageSourceIndexOptions,
-(id) jsinitWithCGImageSource: (id) source index: (size_t) index options: (NSDictionary *) dict );
-(CGAffineTransform) imageTransformForCGOrientation: (CGImagePropertyOrientation) orientation ;
-(CIImage *) imageByCompositingOverImage: (CIImage *) dest ;
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) url );
-(CIImage *) imageByApplyingTransform: (CGAffineTransform) matrix highQualityDownsample: (BOOL) highQualityDownsample ;
JSExportAs(initWithBitmapDataBytesPerRowSizeFormatColorSpace,
-(id) jsinitWithBitmapData: (NSData *) data bytesPerRow: (size_t) bytesPerRow size: (CGSize) size format: (CIFormat) format colorSpace: (id) colorSpace );
-(CIImage *) imageByCroppingToRect: (CGRect) rect ;
JSExportAs(initWithIOSurfaceOptions,
-(id) jsinitWithIOSurface: (id) surface options: (NSDictionary *) options );
-(CIImage *) imageByApplyingFilter: (NSString *) filterName ;
JSExportAs(initWithCVPixelBufferOptions,
-(id) jsinitWithCVPixelBuffer: (id) pixelBuffer options: (NSDictionary *) options );
-(CIImage *) imageByInsertingIntermediate: (BOOL) cache ;
-(CIImage *) imageBySettingAlphaOneInExtent: (CGRect) extent ;
-(CIImage *) imageByColorMatchingWorkingSpaceToColorSpace: (id) colorSpace ;
@end
@protocol CIImageClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(CIImage *) redImage;
+(CIImage *) imageWithCVImageBuffer: (id) imageBuffer ;
+(CIImage *) blackImage;
+(CIImage *) imageWithCGImage: (id) image ;
+(CIImage *) grayImage;
+(CIImage *) blueImage;
+(CIImage *) imageWithMTLTexture: (id) texture options: (NSDictionary *) options ;
+(CIImage *) imageWithTexture: (unsigned int) name size: (CGSize) size flipped: (BOOL) flipped colorSpace: (id) colorSpace ;
+(CIImage *) imageWithContentsOfURL: (NSURL *) url ;
+(CIImage *) emptyImage;
+(CIImage *) imageWithBitmapData: (NSData *) data bytesPerRow: (size_t) bytesPerRow size: (CGSize) size format: (CIFormat) format colorSpace: (id) colorSpace ;
+(CIImage *) imageWithData: (NSData *) data options: (NSDictionary *) options ;
+(CIImage *) whiteImage;
+(CIImage *) imageWithContentsOfURL: (NSURL *) url options: (NSDictionary *) options ;
+(CIImage *) imageWithCVPixelBuffer: (id) pixelBuffer options: (NSDictionary *) options ;
+(CIImage *) imageWithData: (NSData *) data ;
+(CIImage *) magentaImage;
+(CIImage *) imageWithCVImageBuffer: (id) imageBuffer options: (NSDictionary *) options ;
+(CIImage *) clearImage;
+(CIImage *) imageWithIOSurface: (id) surface options: (NSDictionary *) options ;
+(CIImage *) imageWithCVPixelBuffer: (id) pixelBuffer ;
+(CIImage *) greenImage;
+(CIImage *) imageWithCGImageSource: (id) source index: (size_t) index options: (NSDictionary *) dict ;
+(CIImage *) yellowImage;
+(CIImage *) cyanImage;
+(CIImage *) imageWithColor: (CIColor *) color ;
+(CIImage *) imageWithIOSurface: (id) surface ;
+(CIImage *) imageWithCGImage: (id) image options: (NSDictionary *) options ;
@end
@protocol CIImageAVPortraitEffectsMatteCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVPortraitEffectsMatte * portraitEffectsMatte;
JSExportAs(initWithPortaitEffectsMatteOptions,
-(id) jsinitWithPortaitEffectsMatte: (AVPortraitEffectsMatte *) matte options: (NSDictionary *) options );
JSExportAs(initWithPortaitEffectsMatte,
-(id) jsinitWithPortaitEffectsMatte: (AVPortraitEffectsMatte *) matte );
@end
@protocol CIImageAVPortraitEffectsMatteCategoryClassExports<JSExport>
+(id) imageWithPortaitEffectsMatte: (AVPortraitEffectsMatte *) matte options: (NSDictionary *) options ;
+(id) imageWithPortaitEffectsMatte: (AVPortraitEffectsMatte *) matte ;
@end
#pragma clang diagnostic pop