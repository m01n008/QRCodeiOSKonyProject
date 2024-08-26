#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLBuffer_symbols(JSContext*);
@protocol MTLBufferInstanceExports_<JSExport, MTLResourceInstanceExports_>
@property (readonly) NSUInteger length;
-(id) newTextureWithDescriptor: (MTLTextureDescriptor *) descriptor offset: (NSUInteger) offset bytesPerRow: (NSUInteger) bytesPerRow ;
-(void) addDebugMarker: (NSString *) marker range: (NSRange) range ;
-(void) removeAllDebugMarkers;
@end
@protocol MTLBufferClassExports_<JSExport, MTLResourceClassExports_>
@end
#pragma clang diagnostic pop