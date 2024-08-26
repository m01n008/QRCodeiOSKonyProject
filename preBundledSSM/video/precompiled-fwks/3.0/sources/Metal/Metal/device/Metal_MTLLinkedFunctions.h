#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLLinkedFunctions_symbols(JSContext*);
@protocol MTLLinkedFunctionsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,copy,nonatomic) NSArray * functions;
@property (readwrite,copy,nonatomic) NSArray * binaryFunctions;
@property (readwrite,copy,nonatomic) NSDictionary * groups;
@end
@protocol MTLLinkedFunctionsClassExports<JSExport, NSCopyingClassExports_>
+(MTLLinkedFunctions *) linkedFunctions;
@end
#pragma clang diagnostic pop