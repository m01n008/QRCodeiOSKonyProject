#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureDepthDataOutput_symbols(JSContext*);
@protocol AVCaptureDepthDataOutputInstanceExports<JSExport>
@property (getter=isFilteringEnabled,nonatomic) BOOL filteringEnabled;
@property (nonatomic) BOOL alwaysDiscardsLateDepthData;
@property (readonly,nonatomic) id delegate;
-(id) jsinit;
@end
@protocol AVCaptureDepthDataOutputClassExports<JSExport>
+(id) jsnew;
@end
@protocol AVCaptureDepthDataOutputDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) depthDataOutput: (AVCaptureDepthDataOutput *) output didDropDepthData: (AVDepthData *) depthData timestamp: (CMTime) timestamp connection: (AVCaptureConnection *) connection reason: (AVCaptureOutputDataDroppedReason) reason ;
-(void) depthDataOutput: (AVCaptureDepthDataOutput *) output didOutputDepthData: (AVDepthData *) depthData timestamp: (CMTime) timestamp connection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureDepthDataOutputDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop