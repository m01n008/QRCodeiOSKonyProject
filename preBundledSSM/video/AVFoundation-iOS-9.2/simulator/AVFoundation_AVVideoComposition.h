#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVVideoComposition_symbols(JSContext*);
@protocol AVMutableVideoCompositionAVMutableVideoCompositionFilteringCategoryInstanceExports<JSExport>
@end
@protocol AVMutableVideoCompositionAVMutableVideoCompositionFilteringCategoryClassExports<JSExport>
JSExportAs(videoCompositionWithAssetApplyingCIFiltersWithHandler,
+(AVMutableVideoComposition *) jsvideoCompositionWithAsset: (AVAsset *) asset applyingCIFiltersWithHandler: (JSValue *) applier );
@end
@protocol AVMutableVideoCompositionLayerInstructionInstanceExports<JSExport>
@property (assign,nonatomic) CMPersistentTrackID trackID;
-(void) setOpacity: (float) opacity atTime: (CMTime) time ;
-(void) setCropRectangleRampFromStartCropRectangle: (CGRect) startCropRectangle toEndCropRectangle: (CGRect) endCropRectangle timeRange: (CMTimeRange) timeRange ;
-(void) setTransform: (CGAffineTransform) transform atTime: (CMTime) time ;
-(void) setCropRectangle: (CGRect) cropRectangle atTime: (CMTime) time ;
-(void) setTransformRampFromStartTransform: (CGAffineTransform) startTransform toEndTransform: (CGAffineTransform) endTransform timeRange: (CMTimeRange) timeRange ;
-(void) setOpacityRampFromStartOpacity: (float) startOpacity toEndOpacity: (float) endOpacity timeRange: (CMTimeRange) timeRange ;
@end
@protocol AVMutableVideoCompositionLayerInstructionClassExports<JSExport>
+(id) videoCompositionLayerInstruction;
+(id) videoCompositionLayerInstructionWithAssetTrack: (AVAssetTrack *) track ;
@end
@protocol AVVideoCompositionCoreAnimationToolInstanceExports<JSExport>
@end
@protocol AVVideoCompositionCoreAnimationToolClassExports<JSExport>
+(id) videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer: (CALayer *) videoLayer inLayer: (CALayer *) animationLayer ;
+(id) videoCompositionCoreAnimationToolWithAdditionalLayer: (CALayer *) layer asTrackID: (CMPersistentTrackID) trackID ;
+(id) videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers: (NSArray *) videoLayers inLayer: (CALayer *) animationLayer ;
@end
@protocol AVVideoCompositionAVVideoCompositionFilteringCategoryInstanceExports<JSExport>
@end
@protocol AVVideoCompositionAVVideoCompositionFilteringCategoryClassExports<JSExport>
JSExportAs(videoCompositionWithAssetApplyingCIFiltersWithHandler,
+(AVVideoComposition *) jsvideoCompositionWithAsset: (AVAsset *) asset applyingCIFiltersWithHandler: (JSValue *) applier );
@end
@protocol AVVideoCompositionInstructionInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, AVVideoCompositionInstructionInstanceExports_>
@property (readonly,nonatomic) CMPersistentTrackID passthroughTrackID;
@property (readonly,nonatomic) NSArray * requiredSourceTrackIDs;
@property (readonly,nonatomic) CMTimeRange timeRange;
@property (readonly,nonatomic) BOOL enablePostProcessing;
@property (readonly,retain,nonatomic) id backgroundColor;
@property (readonly,copy,nonatomic) NSArray * layerInstructions;
@end
@protocol AVVideoCompositionInstructionClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_, NSMutableCopyingClassExports_, AVVideoCompositionInstructionClassExports_>
@end
@protocol AVMutableVideoCompositionInstructionInstanceExports<JSExport>
@property (assign,nonatomic) BOOL enablePostProcessing;
@property (assign,nonatomic) CMTimeRange timeRange;
@property (copy,nonatomic) NSArray * layerInstructions;
@property (retain,nonatomic) id backgroundColor;
@end
@protocol AVMutableVideoCompositionInstructionClassExports<JSExport>
+(id) videoCompositionInstruction;
@end
@protocol AVAssetAVAssetVideoCompositionUtilityCategoryInstanceExports<JSExport>
-(CMPersistentTrackID) unusedTrackID;
@end
@protocol AVAssetAVAssetVideoCompositionUtilityCategoryClassExports<JSExport>
@end
@protocol AVMutableVideoCompositionInstanceExports<JSExport>
@property (retain,nonatomic) AVVideoCompositionCoreAnimationTool * animationTool;
@property (nonatomic) CMTime frameDuration;
@property (nonatomic) float renderScale;
@property (nonatomic) CGSize renderSize;
@property (getter=getJsCustomVideoCompositorClass,setter=setJsCustomVideoCompositorClass:) JSValue* jscustomVideoCompositorClass;
@property (copy,nonatomic) NSArray * instructions;
@end
@protocol AVMutableVideoCompositionClassExports<JSExport>
+(AVMutableVideoComposition *) videoComposition;
+(AVMutableVideoComposition *) videoCompositionWithPropertiesOfAsset: (AVAsset *) asset ;
@end
@protocol AVVideoCompositionAVVideoCompositionValidationCategoryInstanceExports<JSExport>
-(BOOL) isValidForAsset: (AVAsset *) asset timeRange: (CMTimeRange) timeRange validationDelegate: (id) validationDelegate ;
@end
@protocol AVVideoCompositionAVVideoCompositionValidationCategoryClassExports<JSExport>
@end
@protocol AVVideoCompositionLayerInstructionInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,assign,nonatomic) CMPersistentTrackID trackID;
@end
@protocol AVVideoCompositionLayerInstructionClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVVideoCompositionInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,retain,nonatomic) AVVideoCompositionCoreAnimationTool * animationTool;
@property (readonly,nonatomic) CMTime frameDuration;
@property (readonly,nonatomic) float renderScale;
@property (readonly,nonatomic) CGSize renderSize;
@property (readonly,getter=getJsCustomVideoCompositorClass) JSValue* jscustomVideoCompositorClass;
@property (readonly,copy,nonatomic) NSArray * instructions;
@end
@protocol AVVideoCompositionClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
+(AVVideoComposition *) videoCompositionWithPropertiesOfAsset: (AVAsset *) asset ;
@end
@protocol AVVideoCompositionValidationHandlingInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) videoComposition: (AVVideoComposition *) videoComposition shouldContinueValidatingAfterFindingEmptyTimeRange: (CMTimeRange) timeRange ;
-(BOOL) videoComposition: (AVVideoComposition *) videoComposition shouldContinueValidatingAfterFindingInvalidTimeRangeInInstruction: (id) videoCompositionInstruction ;
-(BOOL) videoComposition: (AVVideoComposition *) videoComposition shouldContinueValidatingAfterFindingInvalidTrackIDInInstruction: (id) videoCompositionInstruction layerInstruction: (AVVideoCompositionLayerInstruction *) layerInstruction asset: (AVAsset *) asset ;
-(BOOL) videoComposition: (AVVideoComposition *) videoComposition shouldContinueValidatingAfterFindingInvalidValueForKey: (NSString *) key ;
@end
@protocol AVVideoCompositionValidationHandlingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop