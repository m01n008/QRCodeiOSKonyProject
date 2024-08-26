#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_SDKCommons_KNYGlobalRequestParams_symbols(JSContext*);
@protocol KNYGlobalRequestParamsInstanceExports<JSExport>
@end
@protocol KNYGlobalRequestParamsClassExports<JSExport>
+(void) setGlobalRequestParam: (NSString *) paramName paramValue: (NSString *) paramValue paramType: (NSString *) paramType ;
+(NSDictionary *) getGlobalRequestParams: (NSString *) paramType ;
+(void) removeGlobalRequestParam: (NSString *) paramName paramType: (NSString *) paramType ;
+(void) resetGlobalRequestParams;
@end
#pragma clang diagnostic pop