#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLParallelRenderCommandEncoder_symbols(JSContext*);
@protocol MTLParallelRenderCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
-(void) setStencilStoreActionOptions: (MTLStoreActionOptions) storeActionOptions ;
-(void) setDepthStoreAction: (MTLStoreAction) storeAction ;
-(void) setDepthStoreActionOptions: (MTLStoreActionOptions) storeActionOptions ;
-(void) setColorStoreActionOptions: (MTLStoreActionOptions) storeActionOptions atIndex: (NSUInteger) colorAttachmentIndex ;
-(void) setColorStoreAction: (MTLStoreAction) storeAction atIndex: (NSUInteger) colorAttachmentIndex ;
-(id) renderCommandEncoder;
-(void) setStencilStoreAction: (MTLStoreAction) storeAction ;
@end
@protocol MTLParallelRenderCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop