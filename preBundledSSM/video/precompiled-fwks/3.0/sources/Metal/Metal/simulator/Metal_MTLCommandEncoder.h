#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCommandEncoder_symbols(JSContext*);
@protocol MTLCommandEncoderInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (copy,atomic) NSString * label;
-(void) popDebugGroup;
-(void) insertDebugSignpost: (NSString *) string ;
-(void) endEncoding;
-(void) pushDebugGroup: (NSString *) string ;
@end
@protocol MTLCommandEncoderClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop