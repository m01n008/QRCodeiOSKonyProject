#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetImageGenerator_symbols(JSContext*);
@protocol AVAssetImageGeneratorInstanceExports<JSExport>
@property (nonatomic) CMTime requestedTimeToleranceBefore;
@property (nonatomic) CMTime requestedTimeToleranceAfter;
@property (copy,nonatomic) AVAssetImageGeneratorApertureMode apertureMode;
@property (copy,nonatomic) AVVideoComposition * videoComposition;
@property (readonly,nonatomic) AVAsset * asset;
@property (nonatomic) BOOL appliesPreferredTrackTransform;
@property (readonly,nonatomic) id customVideoCompositor;
@property (nonatomic) CGSize maximumSize;
-(void) cancelAllCGImageGeneration;
JSExportAs(initWithAsset,
-(id) jsinitWithAsset: (AVAsset *) asset );
JSExportAs(generateCGImagesAsynchronouslyForTimesCompletionHandler,
-(void) jsgenerateCGImagesAsynchronouslyForTimes: (NSArray *) requestedTimes completionHandler: (JSValue *) handler );
@end
@protocol AVAssetImageGeneratorClassExports<JSExport>
+(id) assetImageGeneratorWithAsset: (AVAsset *) asset ;
@end
#pragma clang diagnostic pop