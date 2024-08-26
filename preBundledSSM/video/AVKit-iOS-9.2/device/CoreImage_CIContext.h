#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreImage_CIContext_symbols(JSContext*);
@protocol CIContextInstanceExports<JSExport>
@property (readonly,nonatomic) id workingColorSpace;
-(CGSize) inputImageMaximumSize;
-(id) createCGImage: (CIImage *) image fromRect: (CGRect) fromRect ;
-(void) render: (CIImage *) image toMTLTexture: (id) texture commandBuffer: (id) commandBuffer bounds: (CGRect) bounds colorSpace: (id) colorSpace ;
-(void) render: (CIImage *) image toCVPixelBuffer: (id) buffer bounds: (CGRect) bounds colorSpace: (id) colorSpace ;
-(void) drawImage: (CIImage *) image atPoint: (CGPoint) atPoint fromRect: (CGRect) fromRect ;
-(void) drawImage: (CIImage *) image inRect: (CGRect) inRect fromRect: (CGRect) fromRect ;
-(CGSize) outputImageMaximumSize;
-(id) createCGImage: (CIImage *) image fromRect: (CGRect) fromRect format: (CIFormat) format colorSpace: (id) colorSpace ;
-(void) render: (CIImage *) image toCVPixelBuffer: (id) buffer ;
@end
@protocol CIContextClassExports<JSExport>
+(CIContext *) contextWithCGContext: (id) cgctx options: (NSDictionary *) options ;
+(CIContext *) contextWithOptions: (NSDictionary *) options ;
+(CIContext *) contextWithEAGLContext: (EAGLContext *) eaglContext ;
+(CIContext *) contextWithMTLDevice: (id) device options: (NSDictionary *) options ;
+(CIContext *) contextWithEAGLContext: (EAGLContext *) eaglContext options: (NSDictionary *) options ;
+(CIContext *) contextWithMTLDevice: (id) device ;
@end
@protocol CIContextOfflineGPUSupportCategoryInstanceExports<JSExport>
@end
@protocol CIContextOfflineGPUSupportCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop