#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureDataOutputSynchronizer_symbols(JSContext*);
@protocol AVCaptureSynchronizedDepthDataInstanceExports<JSExport>
@property (readonly) AVCaptureOutputDataDroppedReason droppedReason;
@property (readonly) AVDepthData * depthData;
@property (readonly) BOOL depthDataWasDropped;
@end
@protocol AVCaptureSynchronizedDepthDataClassExports<JSExport>
@end
@protocol AVCaptureSynchronizedDataCollectionInstanceExports<JSExport, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(AVCaptureSynchronizedData *) synchronizedDataForCaptureOutput: (AVCaptureOutput *) captureOutput ;
-(AVCaptureSynchronizedData *) objectForKeyedSubscript: (AVCaptureOutput *) key ;
@end
@protocol AVCaptureSynchronizedDataCollectionClassExports<JSExport, NSFastEnumerationClassExports_>
@end
@protocol AVCaptureDataOutputSynchronizerInstanceExports<JSExport>
@property (readonly,retain) NSArray * dataOutputs;
@property (readonly,nonatomic) id delegate;
JSExportAs(initWithDataOutputs,
-(id) jsinitWithDataOutputs: (NSArray *) dataOutputs );
@end
@protocol AVCaptureDataOutputSynchronizerClassExports<JSExport>
@end
@protocol AVCaptureSynchronizedMetadataObjectDataInstanceExports<JSExport>
@property (readonly) NSArray * metadataObjects;
@end
@protocol AVCaptureSynchronizedMetadataObjectDataClassExports<JSExport>
@end
@protocol AVCaptureSynchronizedSampleBufferDataInstanceExports<JSExport>
@property (readonly) id sampleBuffer;
@property (readonly) AVCaptureOutputDataDroppedReason droppedReason;
@property (readonly) BOOL sampleBufferWasDropped;
@end
@protocol AVCaptureSynchronizedSampleBufferDataClassExports<JSExport>
@end
@protocol AVCaptureSynchronizedDataInstanceExports<JSExport>
@property (readonly) CMTime timestamp;
@end
@protocol AVCaptureSynchronizedDataClassExports<JSExport>
@end
@protocol AVCaptureDataOutputSynchronizerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) dataOutputSynchronizer: (AVCaptureDataOutputSynchronizer *) synchronizer didOutputSynchronizedDataCollection: (AVCaptureSynchronizedDataCollection *) synchronizedDataCollection ;
@end
@protocol AVCaptureDataOutputSynchronizerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop