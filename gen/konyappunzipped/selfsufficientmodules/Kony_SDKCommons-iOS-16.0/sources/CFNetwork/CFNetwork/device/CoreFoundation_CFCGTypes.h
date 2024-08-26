#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreFoundation_CFCGTypes_symbols(JSContext*);
@interface JSValue (CoreFoundation_CFCGTypes)
+(JSValue*) valueWithCGVector: (CGVector) s inContext: (JSContext*) context;
-(CGVector) toCGVector;
+(JSValue*) valueWithCGAffineTransform: (CGAffineTransform) s inContext: (JSContext*) context;
-(CGAffineTransform) toCGAffineTransform;
+(JSValue*) valueWithCGAffineTransformComponents: (CGAffineTransformComponents) s inContext: (JSContext*) context;
-(CGAffineTransformComponents) toCGAffineTransformComponents;
@end
#pragma clang diagnostic pop