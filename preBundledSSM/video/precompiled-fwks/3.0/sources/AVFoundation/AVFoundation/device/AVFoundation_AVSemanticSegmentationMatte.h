#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVSemanticSegmentationMatte_symbols(JSContext*);
@protocol AVSemanticSegmentationMatteInstanceExports<JSExport>
@property (readonly) OSType pixelFormatType;
@property (readonly) AVSemanticSegmentationMatteType matteType;
@property (readonly) id mattingImage;
JSExportAs(semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBufferError,
-(id) jssemanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer: (id) pixelBuffer error: (JSValue *) outError );
-(id) semanticSegmentationMatteByApplyingExifOrientation: (CGImagePropertyOrientation) exifOrientation ;
@end
@protocol AVSemanticSegmentationMatteClassExports<JSExport>
JSExportAs(semanticSegmentationMatteFromImageSourceAuxiliaryDataTypeDictionaryRepresentationError,
+(id) jssemanticSegmentationMatteFromImageSourceAuxiliaryDataType: (id) imageSourceAuxiliaryDataType dictionaryRepresentation: (NSDictionary *) imageSourceAuxiliaryDataInfoDictionary error: (JSValue *) outError );
@end
#pragma clang diagnostic pop