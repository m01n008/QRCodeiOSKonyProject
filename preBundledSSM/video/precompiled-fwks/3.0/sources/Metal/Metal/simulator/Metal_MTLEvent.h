#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLEvent_symbols(JSContext*);
@protocol MTLSharedEventListenerInstanceExports<JSExport>
-(id) jsinit;
@end
@protocol MTLSharedEventListenerClassExports<JSExport>
@end
@protocol MTLSharedEventHandleInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly) NSString * label;
@end
@protocol MTLSharedEventHandleClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol MTLEventInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (copy,atomic) NSString * label;
@end
@protocol MTLEventClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLSharedEventInstanceExports_<JSExport, MTLEventInstanceExports_>
@property (readwrite) uint64_t signaledValue;
JSExportAs(notifyListenerAtValueBlock,
-(void) jsnotifyListener: (MTLSharedEventListener *) listener atValue: (uint64_t) value block: (JSValue *) block );
-(MTLSharedEventHandle *) newSharedEventHandle;
@end
@protocol MTLSharedEventClassExports_<JSExport, MTLEventClassExports_>
@end
#pragma clang diagnostic pop