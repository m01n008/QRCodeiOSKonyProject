#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSProxy_symbols(JSContext*);
@protocol NSProxyInstanceExports<JSExport, NSObjectInstanceExports_>
@property (readonly,copy) NSString * description;
@property (readonly,copy) NSString * debugDescription;
-(void) forwardInvocation: (NSInvocation *) invocation ;
JSExportAs(methodSignatureForSelector,
-(NSMethodSignature *) jsmethodSignatureForSelector: (NSString *) sel );
-(void) dealloc;
-(void) finalize;
@end
@protocol NSProxyClassExports<JSExport, NSObjectClassExports_>
+(id) alloc;
+(id) class;
JSExportAs(respondsToSelector,
+(BOOL) jsrespondsToSelector: (NSString *) aSelector );
@end
#pragma clang diagnostic pop