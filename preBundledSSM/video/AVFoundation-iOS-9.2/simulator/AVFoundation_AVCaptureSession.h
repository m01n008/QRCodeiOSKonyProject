#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureSession_symbols(JSContext*);
@protocol AVCaptureConnectionInstanceExports<JSExport>
@property (nonatomic) AVCaptureVideoOrientation videoOrientation;
@property (nonatomic) CGFloat videoScaleAndCropFactor;
@property (readonly,nonatomic) NSArray * audioChannels;
@property (getter=isVideoMinFrameDurationSupported,readonly,nonatomic) BOOL supportsVideoMinFrameDuration;
@property (getter=isVideoStabilizationSupported,readonly,nonatomic) BOOL supportsVideoStabilization;
@property (readonly,nonatomic) AVCaptureVideoStabilizationMode activeVideoStabilizationMode;
@property (nonatomic) CMTime videoMaxFrameDuration;
@property (getter=isVideoMirrored,nonatomic) BOOL videoMirrored;
@property (nonatomic) CMTime videoMinFrameDuration;
@property (nonatomic) AVCaptureVideoStabilizationMode preferredVideoStabilizationMode;
@property (readonly,nonatomic) AVCaptureVideoPreviewLayer * videoPreviewLayer;
@property (getter=isVideoStabilizationEnabled,readonly,nonatomic) BOOL videoStabilizationEnabled;
@property (readonly,nonatomic) AVCaptureOutput * output;
@property (getter=isActive,readonly,nonatomic) BOOL active;
@property (getter=isVideoMirroringSupported,readonly,nonatomic) BOOL supportsVideoMirroring;
@property (nonatomic) BOOL enablesVideoStabilizationWhenAvailable;
@property (readonly,nonatomic) CGFloat videoMaxScaleAndCropFactor;
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (getter=isVideoOrientationSupported,readonly,nonatomic) BOOL supportsVideoOrientation;
@property (readonly,nonatomic) NSArray * inputPorts;
@property (getter=isVideoMaxFrameDurationSupported,readonly,nonatomic) BOOL supportsVideoMaxFrameDuration;
@property (nonatomic) BOOL automaticallyAdjustsVideoMirroring;
JSExportAs(initWithInputPortVideoPreviewLayer,
-(id) jsinitWithInputPort: (AVCaptureInputPort *) port videoPreviewLayer: (AVCaptureVideoPreviewLayer *) layer );
JSExportAs(initWithInputPortsOutput,
-(id) jsinitWithInputPorts: (NSArray *) ports output: (AVCaptureOutput *) output );
@end
@protocol AVCaptureConnectionClassExports<JSExport>
+(id) connectionWithInputPorts: (NSArray *) ports output: (AVCaptureOutput *) output ;
+(id) connectionWithInputPort: (AVCaptureInputPort *) port videoPreviewLayer: (AVCaptureVideoPreviewLayer *) layer ;
@end
@protocol AVCaptureSessionInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * inputs;
@property (readonly,nonatomic) id masterClock;
@property (readonly,nonatomic) NSArray * outputs;
@property (getter=isInterrupted,readonly,nonatomic) BOOL interrupted;
@property (getter=isRunning,readonly,nonatomic) BOOL running;
@property (nonatomic) BOOL automaticallyConfiguresApplicationAudioSession;
@property (nonatomic) BOOL usesApplicationAudioSession;
@property (copy,nonatomic) NSString * sessionPreset;
-(void) addInput: (AVCaptureInput *) input ;
-(void) removeConnection: (AVCaptureConnection *) connection ;
-(void) addOutputWithNoConnections: (AVCaptureOutput *) output ;
-(void) stopRunning;
-(BOOL) canAddOutput: (AVCaptureOutput *) output ;
-(void) addOutput: (AVCaptureOutput *) output ;
-(BOOL) canSetSessionPreset: (NSString *) preset ;
-(BOOL) canAddConnection: (AVCaptureConnection *) connection ;
-(void) addConnection: (AVCaptureConnection *) connection ;
-(void) removeInput: (AVCaptureInput *) input ;
-(void) removeOutput: (AVCaptureOutput *) output ;
-(void) addInputWithNoConnections: (AVCaptureInput *) input ;
-(void) commitConfiguration;
-(BOOL) canAddInput: (AVCaptureInput *) input ;
-(void) beginConfiguration;
-(void) startRunning;
@end
@protocol AVCaptureSessionClassExports<JSExport>
@end
@protocol AVCaptureAudioChannelInstanceExports<JSExport>
@property (readonly,nonatomic) float averagePowerLevel;
@property (readonly,nonatomic) float peakHoldLevel;
@end
@protocol AVCaptureAudioChannelClassExports<JSExport>
@end
#pragma clang diagnostic pop