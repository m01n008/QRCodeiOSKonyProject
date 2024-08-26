#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVMetadataItem_symbols(JSContext*);
@protocol AVMetadataItemAVMetadataItemArrayFilteringCategoryInstanceExports<JSExport>
@end
@protocol AVMetadataItemAVMetadataItemArrayFilteringCategoryClassExports<JSExport>
+(NSArray *) metadataItemsFromArray: (NSArray *) metadataItems filteredAndSortedAccordingToPreferredLanguages: (NSArray *) preferredLanguages ;
+(NSArray *) metadataItemsFromArray: (NSArray *) metadataItems filteredByIdentifier: (NSString *) identifier ;
+(NSArray *) metadataItemsFromArray: (NSArray *) metadataItems filteredByMetadataItemFilter: (AVMetadataItemFilter *) metadataItemFilter ;
@end
@protocol AVMetadataItemInstanceExports<JSExport, AVAsynchronousKeyValueLoadingInstanceExports_, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,copy,nonatomic) NSLocale * locale;
@property (readonly,copy,nonatomic) NSString * extendedLanguageTag;
@property (readonly,copy,nonatomic) id value;
@property (readonly,copy,nonatomic) NSString * dataType;
@property (readonly,copy,nonatomic) NSDictionary * extraAttributes;
@property (readonly,nonatomic) CMTime time;
@property (readonly,nonatomic) CMTime duration;
@property (readonly,copy,nonatomic) NSString * identifier;
@end
@protocol AVMetadataItemClassExports<JSExport, AVAsynchronousKeyValueLoadingClassExports_, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVMetadataItemAVAsynchronousKeyValueLoadingCategoryInstanceExports<JSExport>
JSExportAs(loadValuesAsynchronouslyForKeysCompletionHandler,
-(void) jsloadValuesAsynchronouslyForKeys: (NSArray *) keys completionHandler: (JSValue *) handler );
JSExportAs(statusOfValueForKeyError,
-(AVKeyValueStatus) jsstatusOfValueForKey: (NSString *) key error: (JSValue *) outError );
@end
@protocol AVMetadataItemAVAsynchronousKeyValueLoadingCategoryClassExports<JSExport>
@end
@protocol AVMetadataItemAVMetadataItemLazyValueLoadingCategoryInstanceExports<JSExport>
@end
@protocol AVMetadataItemAVMetadataItemLazyValueLoadingCategoryClassExports<JSExport>
JSExportAs(metadataItemWithPropertiesOfMetadataItemValueLoadingHandler,
+(AVMetadataItem *) jsmetadataItemWithPropertiesOfMetadataItem: (AVMetadataItem *) metadataItem valueLoadingHandler: (JSValue *) handler );
@end
@protocol AVMetadataItemAVMetadataItemDateRepresentationCategoryInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSDate * startDate;
@end
@protocol AVMetadataItemAVMetadataItemDateRepresentationCategoryClassExports<JSExport>
@end
@protocol AVMutableMetadataItemInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) NSLocale * locale;
@property (readwrite,copy,nonatomic) NSString * extendedLanguageTag;
@property (readwrite,copy,nonatomic) id value;
@property (readwrite,copy,nonatomic) NSString * dataType;
@property (readwrite,copy,nonatomic) NSDictionary * extraAttributes;
@property (readwrite,nonatomic) CMTime time;
@property (readwrite,nonatomic) CMTime duration;
@property (readwrite,copy,nonatomic) NSString * identifier;
@end
@protocol AVMutableMetadataItemClassExports<JSExport>
+(AVMutableMetadataItem *) metadataItem;
@end
@protocol AVMetadataItemAVMetadataItemKeyAndKeyspaceCategoryInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSString * commonKey;
@property (readonly,copy,nonatomic) id key;
@property (readonly,copy,nonatomic) NSString * keySpace;
@end
@protocol AVMetadataItemAVMetadataItemKeyAndKeyspaceCategoryClassExports<JSExport>
+(NSString *) keySpaceForIdentifier: (NSString *) identifier ;
+(NSString *) identifierForKey: (id) key keySpace: (NSString *) keySpace ;
+(id) keyForIdentifier: (NSString *) identifier ;
@end
@protocol AVMutableMetadataItemAVMutableMetadataItemDateRepresentationCategoryInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) NSDate * startDate;
@end
@protocol AVMutableMetadataItemAVMutableMetadataItemDateRepresentationCategoryClassExports<JSExport>
@end
@protocol AVMetadataItemValueRequestInstanceExports<JSExport>
@property (readonly,weak) AVMetadataItem * metadataItem;
-(void) respondWithValue: (id) value ;
-(void) respondWithError: (NSError *) error ;
@end
@protocol AVMetadataItemValueRequestClassExports<JSExport>
@end
@protocol AVMetadataItemAVMetadataItemArrayFilteringDeprecableCategoryInstanceExports<JSExport>
@end
@protocol AVMetadataItemAVMetadataItemArrayFilteringDeprecableCategoryClassExports<JSExport>
+(NSArray *) metadataItemsFromArray: (NSArray *) metadataItems withKey: (id) key keySpace: (NSString *) keySpace ;
+(NSArray *) metadataItemsFromArray: (NSArray *) metadataItems withLocale: (NSLocale *) locale ;
@end
@protocol AVMetadataItemAVMetadataItemTypeCoercionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSString * stringValue;
@property (readonly,nonatomic) NSData * dataValue;
@property (readonly,nonatomic) NSDate * dateValue;
@property (readonly,nonatomic) NSNumber * numberValue;
@end
@protocol AVMetadataItemAVMetadataItemTypeCoercionCategoryClassExports<JSExport>
@end
@protocol AVMutableMetadataItemAVMutableMetadataItemKeyAndKeyspaceCategoryInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) NSString * keySpace;
@property (readwrite,copy,nonatomic) id key;
@end
@protocol AVMutableMetadataItemAVMutableMetadataItemKeyAndKeyspaceCategoryClassExports<JSExport>
@end
@protocol AVMetadataItemFilterInstanceExports<JSExport>
@end
@protocol AVMetadataItemFilterClassExports<JSExport>
+(AVMetadataItemFilter *) metadataItemFilterForSharing;
@end
#pragma clang diagnostic pop