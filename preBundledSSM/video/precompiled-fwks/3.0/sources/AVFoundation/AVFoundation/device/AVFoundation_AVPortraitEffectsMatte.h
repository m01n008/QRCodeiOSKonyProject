#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPortraitEffectsMatte_symbols(JSContext*);
@protocol AVPortraitEffectsMatteInstanceExports<JSExport>
@property (readonly) id mattingImage;
@property (readonly) OSType pixelFormatType;
JSExportAs(portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBufferError,
-(id) jsportraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer: (id) pixelBuffer error: (JSValue *) outError );
-(id) portraitEffectsMatteByApplyingExifOrientation: (CGImagePropertyOrientation) exifOrientation ;
@end
@protocol AVPortraitEffectsMatteClassExports<JSExport>
JSExportAs(portraitEffectsMatteFromDictionaryRepresentationError,
+(id) jsportraitEffectsMatteFromDictionaryRepresentation: (NSDictionary *) imageSourceAuxDataInfoDictionary error: (JSValue *) outError );
@end
#pragma clang diagnostic pop