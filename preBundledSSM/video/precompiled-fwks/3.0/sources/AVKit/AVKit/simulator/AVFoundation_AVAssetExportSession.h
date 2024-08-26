#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetExportSession_symbols(JSContext*);
@protocol AVAssetExportSessionAVAssetExportSessionMetadataCategoryInstanceExports<JSExport>
@property (retain,nonatomic) AVMetadataItemFilter * metadataItemFilter;
@property (copy,nonatomic) NSArray * metadata;
@end
@protocol AVAssetExportSessionAVAssetExportSessionMetadataCategoryClassExports<JSExport>
@end
@protocol AVAssetExportSessionInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetExportSessionStatus status;
@property (copy,nonatomic) AVFileType outputFileType;
@property (nonatomic) BOOL shouldOptimizeForNetworkUse;
@property (readonly,nonatomic) NSError * error;
@property (readonly,nonatomic) float progress;
@property (copy,nonatomic) NSURL * outputURL;
@property (readonly,nonatomic) NSString * presetName;
@property (readonly,retain,nonatomic) AVAsset * asset;
-(void) cancelExport;
JSExportAs(initWithAssetPresetName,
-(id) jsinitWithAsset: (AVAsset *) asset presetName: (NSString *) presetName );
JSExportAs(exportAsynchronouslyWithCompletionHandler,
-(void) jsexportAsynchronouslyWithCompletionHandler: (JSValue *) handler );
@end
@protocol AVAssetExportSessionClassExports<JSExport>
+(id) exportSessionWithAsset: (AVAsset *) asset presetName: (NSString *) presetName ;
@end
@protocol AVAssetExportSessionAVAssetExportSessionFileTypesCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * supportedFileTypes;
JSExportAs(determineCompatibleFileTypesWithCompletionHandler,
-(void) jsdetermineCompatibleFileTypesWithCompletionHandler: (JSValue *) handler );
@end
@protocol AVAssetExportSessionAVAssetExportSessionFileTypesCategoryClassExports<JSExport>
@end
@protocol AVAssetExportSessionAVAssetExportSessionMediaProcessingCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) id customVideoCompositor;
@property (copy,nonatomic) AVVideoComposition * videoComposition;
@property (copy,nonatomic) AVAudioTimePitchAlgorithm audioTimePitchAlgorithm;
@property (copy,nonatomic) AVAudioMix * audioMix;
@end
@protocol AVAssetExportSessionAVAssetExportSessionMediaProcessingCategoryClassExports<JSExport>
@end
@protocol AVAssetExportSessionAVAssetExportSessionMultipassCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL canPerformMultiplePassesOverSourceMediaData;
@property (copy,nonatomic) NSURL * directoryForTemporaryFiles;
@end
@protocol AVAssetExportSessionAVAssetExportSessionMultipassCategoryClassExports<JSExport>
@end
@protocol AVAssetExportSessionAVAssetExportSessionDurationAndLengthCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) long long estimatedOutputFileLength;
@property (nonatomic) CMTimeRange timeRange;
@property (nonatomic) long long fileLengthLimit;
@property (readonly,nonatomic) CMTime maxDuration;
JSExportAs(estimateOutputFileLengthWithCompletionHandler,
-(void) jsestimateOutputFileLengthWithCompletionHandler: (JSValue *) handler );
JSExportAs(estimateMaximumDurationWithCompletionHandler,
-(void) jsestimateMaximumDurationWithCompletionHandler: (JSValue *) handler );
@end
@protocol AVAssetExportSessionAVAssetExportSessionDurationAndLengthCategoryClassExports<JSExport>
@end
@protocol AVAssetExportSessionAVAssetExportSessionPresetsCategoryInstanceExports<JSExport>
@end
@protocol AVAssetExportSessionAVAssetExportSessionPresetsCategoryClassExports<JSExport>
+(NSArray *) allExportPresets;
JSExportAs(determineCompatibilityOfExportPresetWithAssetOutputFileTypeCompletionHandler,
+(void) jsdetermineCompatibilityOfExportPreset: (NSString *) presetName withAsset: (AVAsset *) asset outputFileType: (AVFileType) outputFileType completionHandler: (JSValue *) handler );
+(NSArray *) exportPresetsCompatibleWithAsset: (AVAsset *) asset ;
@end
#pragma clang diagnostic pop