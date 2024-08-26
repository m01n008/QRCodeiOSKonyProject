#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSByteOrder_symbols(JSContext*);
@interface JSValue (Foundation_NSByteOrder)
+(JSValue*) valueWithNSSwappedFloat: (NSSwappedFloat) s inContext: (JSContext*) context;
-(NSSwappedFloat) toNSSwappedFloat;
+(JSValue*) valueWithNSSwappedDouble: (NSSwappedDouble) s inContext: (JSContext*) context;
-(NSSwappedDouble) toNSSwappedDouble;
@end
#pragma clang diagnostic pop