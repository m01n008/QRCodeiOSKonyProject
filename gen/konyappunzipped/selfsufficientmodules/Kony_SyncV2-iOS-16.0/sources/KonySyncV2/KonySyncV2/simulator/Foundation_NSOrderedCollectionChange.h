#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSOrderedCollectionChange_symbols(JSContext*);
@protocol NSOrderedCollectionChangeInstanceExports<JSExport>
@property (readonly,strong) id object;
@property (readonly) NSCollectionChangeType changeType;
@property (readonly) NSUInteger index;
@property (readonly) NSUInteger associatedIndex;
JSExportAs(initWithObjectTypeIndex,
-(id) jsinitWithObject: (id) anObject type: (NSCollectionChangeType) type index: (NSUInteger) index );
JSExportAs(initWithObjectTypeIndexAssociatedIndex,
-(id) jsinitWithObject: (id) anObject type: (NSCollectionChangeType) type index: (NSUInteger) index associatedIndex: (NSUInteger) associatedIndex );
@end
@protocol NSOrderedCollectionChangeClassExports<JSExport>
+(NSOrderedCollectionChange *) changeWithObject: (id) anObject type: (NSCollectionChangeType) type index: (NSUInteger) index ;
+(NSOrderedCollectionChange *) changeWithObject: (id) anObject type: (NSCollectionChangeType) type index: (NSUInteger) index associatedIndex: (NSUInteger) associatedIndex ;
@end
#pragma clang diagnostic pop