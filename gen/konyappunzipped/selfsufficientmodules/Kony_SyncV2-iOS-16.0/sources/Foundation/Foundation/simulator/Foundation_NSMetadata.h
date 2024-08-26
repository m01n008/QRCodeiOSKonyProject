#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMetadata_symbols(JSContext*);
@protocol NSMetadataQueryInstanceExports<JSExport>
@property (assign) id delegate;
@property (copy) NSPredicate * predicate;
@property (copy) NSArray * sortDescriptors;
@property (copy) NSArray * valueListAttributes;
@property (copy) NSArray * groupingAttributes;
@property () NSTimeInterval notificationBatchingInterval;
@property (copy) NSArray * searchScopes;
@property (copy) NSArray * searchItems;
@property (retain) NSOperationQueue * operationQueue;
@property (getter=isStarted,readonly) BOOL started;
@property (getter=isGathering,readonly) BOOL gathering;
@property (getter=isStopped,readonly) BOOL stopped;
@property (readonly) NSUInteger resultCount;
@property (readonly,copy) NSArray * results;
@property (readonly,copy) NSDictionary * valueLists;
@property (readonly,copy) NSArray * groupedResults;
-(BOOL) startQuery;
-(void) stopQuery;
-(void) disableUpdates;
-(void) enableUpdates;
-(id) resultAtIndex: (NSUInteger) idx ;
-(NSUInteger) indexOfResult: (id) result ;
-(id) valueOfAttribute: (NSString *) attrName forResultAtIndex: (NSUInteger) idx ;
@end
@protocol NSMetadataQueryClassExports<JSExport>
@end
@protocol NSMetadataItemInstanceExports<JSExport>
@property (readonly,copy) NSArray * attributes;
-(id) valueForAttribute: (NSString *) key ;
-(NSDictionary *) valuesForAttributes: (NSArray *) keys ;
@end
@protocol NSMetadataItemClassExports<JSExport>
@end
@protocol NSMetadataQueryAttributeValueTupleInstanceExports<JSExport>
@property (readonly,copy) NSString * attribute;
@property (readonly,retain) id value;
@property (readonly) NSUInteger count;
@end
@protocol NSMetadataQueryAttributeValueTupleClassExports<JSExport>
@end
@protocol NSMetadataQueryResultGroupInstanceExports<JSExport>
@property (readonly,copy) NSString * attribute;
@property (readonly,retain) id value;
@property (readonly,copy) NSArray * subgroups;
@property (readonly) NSUInteger resultCount;
@property (readonly,copy) NSArray * results;
-(id) resultAtIndex: (NSUInteger) idx ;
@end
@protocol NSMetadataQueryResultGroupClassExports<JSExport>
@end
@protocol NSMetadataQueryDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(id) metadataQuery: (NSMetadataQuery *) query replacementObjectForResultObject: (NSMetadataItem *) result ;
-(id) metadataQuery: (NSMetadataQuery *) query replacementValueForAttribute: (NSString *) attrName value: (id) attrValue ;
@end
@protocol NSMetadataQueryDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop