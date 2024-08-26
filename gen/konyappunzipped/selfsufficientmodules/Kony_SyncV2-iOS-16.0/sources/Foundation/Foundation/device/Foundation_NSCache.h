#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCache_symbols(JSContext*);
@protocol NSCacheInstanceExports<JSExport>
@property (copy) NSString * name;
@property (assign) id delegate;
@property () NSUInteger totalCostLimit;
@property () NSUInteger countLimit;
@property () BOOL evictsObjectsWithDiscardedContent;
-(id) objectForKey: (id) key ;
-(void) setObject: (id) obj forKey: (id) key ;
-(void) setObject: (id) obj forKey: (id) key cost: (NSUInteger) g ;
-(void) removeObjectForKey: (id) key ;
-(void) removeAllObjects;
@end
@protocol NSCacheClassExports<JSExport>
@end
@protocol NSCacheDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) cache: (NSCache *) cache willEvictObject: (id) obj ;
@end
@protocol NSCacheDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop