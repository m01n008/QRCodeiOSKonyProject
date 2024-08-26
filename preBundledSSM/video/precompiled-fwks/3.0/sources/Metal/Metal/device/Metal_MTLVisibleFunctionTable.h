#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLVisibleFunctionTable_symbols(JSContext*);
@protocol MTLVisibleFunctionTableDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) NSUInteger functionCount;
@end
@protocol MTLVisibleFunctionTableDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLVisibleFunctionTableDescriptor *) visibleFunctionTableDescriptor;
@end
@protocol MTLVisibleFunctionTableInstanceExports_<JSExport, MTLResourceInstanceExports_>
-(void) setFunction: (id) function atIndex: (NSUInteger) index ;
@end
@protocol MTLVisibleFunctionTableClassExports_<JSExport, MTLResourceClassExports_>
@end
#pragma clang diagnostic pop