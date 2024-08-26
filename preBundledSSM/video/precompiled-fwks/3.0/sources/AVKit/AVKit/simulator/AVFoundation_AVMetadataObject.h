#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVMetadataObject_symbols(JSContext*);
@protocol AVMetadataDogBodyObjectInstanceExports<JSExport, NSCopyingInstanceExports_>
@end
@protocol AVMetadataDogBodyObjectClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVMetadataObjectInstanceExports<JSExport>
@property (readonly) CMTime duration;
@property (readonly) AVMetadataObjectType type;
@property (readonly) CGRect bounds;
@property (readonly) CMTime time;
@end
@protocol AVMetadataObjectClassExports<JSExport>
@end
@protocol AVMetadataMachineReadableCodeObjectAVMetadataMachineReadableCodeDescriptorCategoryInstanceExports<JSExport>
@property (readonly) CIBarcodeDescriptor * descriptor;
@end
@protocol AVMetadataMachineReadableCodeObjectAVMetadataMachineReadableCodeDescriptorCategoryClassExports<JSExport>
@end
@protocol AVMetadataSalientObjectInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) NSInteger objectID;
@end
@protocol AVMetadataSalientObjectClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVMetadataCatBodyObjectInstanceExports<JSExport, NSCopyingInstanceExports_>
@end
@protocol AVMetadataCatBodyObjectClassExports<JSExport, NSCopyingClassExports_>
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
@protocol AVMetadataHumanBodyObjectInstanceExports<JSExport, NSCopyingInstanceExports_>
@end
@protocol AVMetadataHumanBodyObjectClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVMetadataMachineReadableCodeObjectInstanceExports<JSExport>
@property (readonly) NSArray * corners;
@property (readonly) NSString * stringValue;
@end
@protocol AVMetadataMachineReadableCodeObjectClassExports<JSExport>
@end
@protocol AVMetadataBodyObjectInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) NSInteger bodyID;
@end
@protocol AVMetadataBodyObjectClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop