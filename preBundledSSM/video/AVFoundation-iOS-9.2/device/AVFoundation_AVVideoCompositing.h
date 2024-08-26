#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVVideoCompositing_symbols(JSContext*);
@interface JSValue (AVFoundation_AVVideoCompositing)
+(JSValue*) valueWithAVPixelAspectRatio: (AVPixelAspectRatio) s inContext: (JSContext*) context;
-(AVPixelAspectRatio) toAVPixelAspectRatio;
+(JSValue*) valueWithAVEdgeWidths: (AVEdgeWidths) s inContext: (JSContext*) context;
-(AVEdgeWidths) toAVEdgeWidths;
@end
@protocol AVAsynchronousVideoCompositionRequestInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) id videoCompositionInstruction;
@property (readonly,nonatomic) NSArray * sourceTrackIDs;
@property (readonly,nonatomic) AVVideoCompositionRenderContext * renderContext;
@property (readonly,nonatomic) CMTime compositionTime;
-(id) sourceFrameByTrackID: (CMPersistentTrackID) trackID ;
-(void) finishWithComposedVideoFrame: (id) composedVideoFrame ;
-(void) finishCancelledRequest;
-(void) finishWithError: (NSError *) error ;
@end
@protocol AVAsynchronousVideoCompositionRequestClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVAsynchronousCIImageFilteringRequestInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) CGSize renderSize;
@property (readonly,nonatomic) CIImage * sourceImage;
@property (readonly,nonatomic) CMTime compositionTime;
-(void) finishWithError: (NSError *) error ;
-(void) finishWithImage: (CIImage *) filteredImage context: (CIContext *) context ;
@end
@protocol AVAsynchronousCIImageFilteringRequestClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVVideoCompositionRenderContextInstanceExports<JSExport>
@property (readonly,nonatomic) AVEdgeWidths edgeWidths;
@property (readonly,nonatomic) AVPixelAspectRatio pixelAspectRatio;
@property (readonly,nonatomic) CGAffineTransform renderTransform;
@property (readonly,nonatomic) BOOL highQualityRendering;
@property (readonly,nonatomic) float renderScale;
@property (readonly,nonatomic) AVVideoComposition * videoComposition;
@property (readonly,nonatomic) CGSize size;
-(id) newPixelBuffer;
@end
@protocol AVVideoCompositionRenderContextClassExports<JSExport>
@end
@protocol AVVideoCompositionInstructionInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) BOOL containsTweening;
@property (readonly,nonatomic) BOOL enablePostProcessing;
@property (readonly,nonatomic) CMTimeRange timeRange;
@property (readonly,nonatomic) CMPersistentTrackID passthroughTrackID;
@property (readonly,nonatomic) NSArray * requiredSourceTrackIDs;
@end
@protocol AVVideoCompositionInstructionClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVVideoCompositingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) NSDictionary * requiredPixelBufferAttributesForRenderContext;
@property (readonly,nonatomic) NSDictionary * sourcePixelBufferAttributes;
-(void) cancelAllPendingVideoCompositionRequests;
-(void) renderContextChanged: (AVVideoCompositionRenderContext *) newRenderContext ;
-(void) startVideoCompositionRequest: (AVAsynchronousVideoCompositionRequest *) asyncVideoCompositionRequest ;
@end
@protocol AVVideoCompositingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop