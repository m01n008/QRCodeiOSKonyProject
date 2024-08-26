#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVDepthData_symbols(JSContext*);
@protocol AVDepthDataInstanceExports<JSExport>
@property (readonly) OSType depthDataType;
@property (readonly) AVDepthDataQuality depthDataQuality;
@property (readonly) NSArray * availableDepthDataTypes;
@property (getter=isDepthDataFiltered,readonly) BOOL depthDataFiltered;
@property (readonly) AVCameraCalibrationData * cameraCalibrationData;
@property (readonly) id depthDataMap;
@property (readonly) AVDepthDataAccuracy depthDataAccuracy;
-(id) depthDataByApplyingExifOrientation: (CGImagePropertyOrientation) exifOrientation ;
-(id) depthDataByConvertingToDepthDataType: (OSType) depthDataType ;
JSExportAs(depthDataByReplacingDepthDataMapWithPixelBufferError,
-(id) jsdepthDataByReplacingDepthDataMapWithPixelBuffer: (id) pixelBuffer error: (JSValue *) outError );
@end
@protocol AVDepthDataClassExports<JSExport>
JSExportAs(depthDataFromDictionaryRepresentationError,
+(id) jsdepthDataFromDictionaryRepresentation: (NSDictionary *) imageSourceAuxDataInfoDictionary error: (JSValue *) outError );
@end
#pragma clang diagnostic pop