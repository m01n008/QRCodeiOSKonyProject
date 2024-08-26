#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVMetadataObject_symbols(JSContext*);
@protocol AVMetadataObjectInstanceExports<JSExport>
@property (readonly) CMTime duration;
@property (readonly) NSString * type;
@property (readonly) CGRect bounds;
@property (readonly) CMTime time;
@end
@protocol AVMetadataObjectClassExports<JSExport>
@end
@protocol AVMetadataFaceObjectInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) NSInteger faceID;
@property (readonly) BOOL hasYawAngle;
@property (readonly) BOOL hasRollAngle;
@property (readonly) CGFloat yawAngle;
@property (readonly) CGFloat rollAngle;
@end
@protocol AVMetadataFaceObjectClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVMetadataMachineReadableCodeObjectInstanceExports<JSExport>
@property (readonly) NSArray * corners;
@property (readonly) NSString * stringValue;
@end
@protocol AVMetadataMachineReadableCodeObjectClassExports<JSExport>
@end
#pragma clang diagnostic pop