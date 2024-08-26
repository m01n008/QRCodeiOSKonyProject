#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLResource_symbols(JSContext*);
@protocol MTLResourceInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) MTLStorageMode storageMode;
@property (readonly) MTLCPUCacheMode cpuCacheMode;
@property (copy,atomic) NSString * label;
@property (readonly) NSUInteger allocatedSize;
@property (readonly) id heap;
@property (readonly) id device;
-(void) makeAliasable;
-(MTLPurgeableState) setPurgeableState: (MTLPurgeableState) state ;
-(BOOL) isAliasable;
@end
@protocol MTLResourceClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop