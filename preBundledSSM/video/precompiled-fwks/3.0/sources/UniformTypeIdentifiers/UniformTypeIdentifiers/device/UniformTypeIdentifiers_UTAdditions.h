#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UniformTypeIdentifiers_UTAdditions_symbols(JSContext*);
@protocol NSStringUTAdditionsCategoryInstanceExports<JSExport>
-(NSString *) stringByAppendingPathComponent: (NSString *) partialName conformingToType: (UTType *) contentType ;
-(NSString *) stringByAppendingPathExtensionForType: (UTType *) contentType ;
@end
@protocol NSStringUTAdditionsCategoryClassExports<JSExport>
@end
@protocol NSURLUTAdditionsCategoryInstanceExports<JSExport>
-(NSURL *) URLByAppendingPathComponent: (NSString *) partialName conformingToType: (UTType *) contentType ;
-(NSURL *) URLByAppendingPathExtensionForType: (UTType *) contentType ;
@end
@protocol NSURLUTAdditionsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop