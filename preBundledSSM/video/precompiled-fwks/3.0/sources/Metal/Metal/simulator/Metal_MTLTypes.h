#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLTypes_symbols(JSContext*);
@interface JSValue (Metal_MTLTypes)
+(JSValue*) valueWithMTLSize: (MTLSize) s inContext: (JSContext*) context;
-(MTLSize) toMTLSize;
+(JSValue*) valueWithMTLOrigin: (MTLOrigin) s inContext: (JSContext*) context;
-(MTLOrigin) toMTLOrigin;
+(JSValue*) valueWithMTLCoordinate2D: (MTLCoordinate2D) s inContext: (JSContext*) context;
-(MTLCoordinate2D) toMTLCoordinate2D;
+(JSValue*) valueWithMTLRegion: (MTLRegion) s inContext: (JSContext*) context;
-(MTLRegion) toMTLRegion;
@end
#pragma clang diagnostic pop