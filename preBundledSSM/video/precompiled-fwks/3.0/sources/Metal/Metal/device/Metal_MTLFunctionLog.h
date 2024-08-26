#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLFunctionLog_symbols(JSContext*);
@protocol MTLFunctionLogDebugLocationInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) NSURL * URL;
@property (readonly,nonatomic) NSUInteger column;
@property (readonly,nonatomic) NSUInteger line;
@property (readonly,nonatomic) NSString * functionName;
@end
@protocol MTLFunctionLogDebugLocationClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLFunctionLogInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) id function;
@property (readonly,nonatomic) MTLFunctionLogType type;
@property (readonly,nonatomic) id debugLocation;
@property (readonly,nonatomic) NSString * encoderLabel;
@end
@protocol MTLFunctionLogClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLLogContainerInstanceExports_<JSExport, NSFastEnumerationInstanceExports_>
@end
@protocol MTLLogContainerClassExports_<JSExport, NSFastEnumerationClassExports_>
@end
#pragma clang diagnostic pop