#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLFunctionDescriptor_symbols(JSContext*);
@protocol MTLFunctionDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (copy,nonatomic) MTLFunctionConstantValues * constantValues;
@property (nonatomic) MTLFunctionOptions options;
@property (copy,nonatomic) NSString * name;
@property (copy,nonatomic) NSString * specializedName;
@end
@protocol MTLFunctionDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLFunctionDescriptor *) functionDescriptor;
@end
@protocol MTLIntersectionFunctionDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@end
@protocol MTLIntersectionFunctionDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop