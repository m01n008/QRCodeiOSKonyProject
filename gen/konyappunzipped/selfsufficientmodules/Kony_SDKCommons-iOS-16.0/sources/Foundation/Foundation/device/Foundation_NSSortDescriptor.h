#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSSortDescriptor_symbols(JSContext*);
@protocol NSSortDescriptorInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSString * key;
@property (readonly) BOOL ascending;
@property (readonly,getter=getJsSelector) NSString* jsselector;
@property (readonly,getter=getJsComparator) JSValue* jscomparator;
@property (readonly,retain) id reversedSortDescriptor;
JSExportAs(initWithKeyAscending,
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending );
JSExportAs(initWithKeyAscendingSelector,
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending selector: (NSString *) selector );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(void) allowEvaluation;
JSExportAs(initWithKeyAscendingComparator,
-(id) jsinitWithKey: (NSString *) key ascending: (BOOL) ascending comparator: (JSValue *) cmptr );
-(NSComparisonResult) compareObject: (id) object1 toObject: (id) object2 ;
@end
@protocol NSSortDescriptorClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
+(id) sortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending ;
JSExportAs(sortDescriptorWithKeyAscendingSelector,
+(id) jssortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending selector: (NSString *) selector );
JSExportAs(sortDescriptorWithKeyAscendingComparator,
+(id) jssortDescriptorWithKey: (NSString *) key ascending: (BOOL) ascending comparator: (JSValue *) cmptr );
@end
@protocol NSSetNSSortDescriptorSortingCategoryInstanceExports<JSExport>
-(NSArray *) sortedArrayUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSSetNSSortDescriptorSortingCategoryClassExports<JSExport>
@end
@protocol NSArrayNSSortDescriptorSortingCategoryInstanceExports<JSExport>
-(NSArray *) sortedArrayUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSArrayNSSortDescriptorSortingCategoryClassExports<JSExport>
@end
@protocol NSMutableArrayNSSortDescriptorSortingCategoryInstanceExports<JSExport>
-(void) sortUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSMutableArrayNSSortDescriptorSortingCategoryClassExports<JSExport>
@end
@protocol NSOrderedSetNSKeyValueSortingCategoryInstanceExports<JSExport>
-(NSArray *) sortedArrayUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSOrderedSetNSKeyValueSortingCategoryClassExports<JSExport>
@end
@protocol NSMutableOrderedSetNSKeyValueSortingCategoryInstanceExports<JSExport>
-(void) sortUsingDescriptors: (NSArray *) sortDescriptors ;
@end
@protocol NSMutableOrderedSetNSKeyValueSortingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop