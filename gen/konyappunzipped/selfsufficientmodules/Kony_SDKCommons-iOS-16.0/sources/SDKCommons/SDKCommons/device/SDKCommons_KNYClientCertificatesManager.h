#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_SDKCommons_KNYClientCertificatesManager_symbols(JSContext*);
@protocol KNYClientCertificatesManagerInstanceExports<JSExport>
@end
@protocol KNYClientCertificatesManagerClassExports<JSExport>
+(void) removeClientCertificate;
+(BOOL) loadClientCertificate: (NSDictionary *) args ;
@end
#pragma clang diagnostic pop