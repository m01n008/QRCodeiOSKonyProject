#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureInput_symbols(JSContext*);
@protocol AVCaptureMetadataInputInstanceExports<JSExport>
JSExportAs(initWithFormatDescriptionClock,
-(id) jsinitWithFormatDescription: (id) desc clock: (id) clock );
JSExportAs(appendTimedMetadataGroupError,
-(BOOL) jsappendTimedMetadataGroup: (AVTimedMetadataGroup *) metadata error: (JSValue *) outError );
@end
@protocol AVCaptureMetadataInputClassExports<JSExport>
+(id) metadataInputWithFormatDescription: (id) desc clock: (id) clock ;
@end
@protocol AVCaptureInputPortInstanceExports<JSExport>
@property (readonly,nonatomic) AVCaptureInput * input;
@property (readonly,nonatomic) id formatDescription;
@property (readonly,nonatomic) AVMediaType mediaType;
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (readonly,nonatomic) id clock;
@end
@protocol AVCaptureInputPortClassExports<JSExport>
@end
@protocol AVCaptureDeviceInputInstanceExports<JSExport>
@property (readonly,nonatomic) AVCaptureDevice * device;
JSExportAs(initWithDeviceError,
-(id) jsinitWithDevice: (AVCaptureDevice *) device error: (JSValue *) outError );
@end
@protocol AVCaptureDeviceInputClassExports<JSExport>
JSExportAs(deviceInputWithDeviceError,
+(id) jsdeviceInputWithDevice: (AVCaptureDevice *) device error: (JSValue *) outError );
@end
@protocol AVCaptureInputInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * ports;
@end
@protocol AVCaptureInputClassExports<JSExport>
@end
#pragma clang diagnostic pop