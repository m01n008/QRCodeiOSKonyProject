#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreImage_CIKernel_symbols(JSContext*);
@protocol CIWarpKernelInstanceExports<JSExport>
JSExportAs(applyWithExtentRoiCallbackInputImageArguments,
-(CIImage *) jsapplyWithExtent: (CGRect) extent roiCallback: (JSValue *) callback inputImage: (CIImage *) image arguments: (NSArray *) args );
@end
@protocol CIWarpKernelClassExports<JSExport>
+(id) kernelWithString: (NSString *) string ;
@end
@protocol CIKernelInstanceExports<JSExport>
@property (readonly,atomic) NSString * name;
JSExportAs(applyWithExtentRoiCallbackArguments,
-(CIImage *) jsapplyWithExtent: (CGRect) extent roiCallback: (JSValue *) callback arguments: (NSArray *) args );
JSExportAs(setROISelector,
-(void) jssetROISelector: (NSString *) method );
@end
@protocol CIKernelClassExports<JSExport>
+(id) kernelWithString: (NSString *) string ;
+(NSArray *) kernelsWithString: (NSString *) string ;
@end
@protocol CIColorKernelInstanceExports<JSExport>
-(CIImage *) applyWithExtent: (CGRect) extent arguments: (NSArray *) args ;
@end
@protocol CIColorKernelClassExports<JSExport>
+(id) kernelWithString: (NSString *) string ;
@end
#pragma clang diagnostic pop