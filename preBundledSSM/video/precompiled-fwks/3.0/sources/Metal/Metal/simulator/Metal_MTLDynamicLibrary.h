#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLDynamicLibrary_symbols(JSContext*);
@protocol MTLDynamicLibraryInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSString * installName;
@property (copy,atomic) NSString * label;
JSExportAs(serializeToURLError,
-(BOOL) jsserializeToURL: (NSURL *) url error: (JSValue *) error );
@end
@protocol MTLDynamicLibraryClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop