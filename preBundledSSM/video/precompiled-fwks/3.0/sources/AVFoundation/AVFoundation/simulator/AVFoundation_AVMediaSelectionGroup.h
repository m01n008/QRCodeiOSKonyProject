#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVMediaSelectionGroup_symbols(JSContext*);
@protocol AVMediaSelectionGroupInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) AVMediaSelectionOption * defaultOption;
@property (readonly,nonatomic) NSArray * options;
@property (readonly,nonatomic) BOOL allowsEmptySelection;
-(AVMediaSelectionOption *) mediaSelectionOptionWithPropertyList: (id) plist ;
@end
@protocol AVMediaSelectionGroupClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVMediaSelectionGroupAVMediaSelectionOptionFilteringCategoryInstanceExports<JSExport>
@end
@protocol AVMediaSelectionGroupAVMediaSelectionOptionFilteringCategoryClassExports<JSExport>
+(NSArray *) mediaSelectionOptionsFromArray: (NSArray *) mediaSelectionOptions withoutMediaCharacteristics: (NSArray *) mediaCharacteristics ;
+(NSArray *) mediaSelectionOptionsFromArray: (NSArray *) mediaSelectionOptions withMediaCharacteristics: (NSArray *) mediaCharacteristics ;
+(NSArray *) mediaSelectionOptionsFromArray: (NSArray *) mediaSelectionOptions filteredAndSortedAccordingToPreferredLanguages: (NSArray *) preferredLanguages ;
+(NSArray *) playableMediaSelectionOptionsFromArray: (NSArray *) mediaSelectionOptions ;
+(NSArray *) mediaSelectionOptionsFromArray: (NSArray *) mediaSelectionOptions withLocale: (NSLocale *) locale ;
@end
@protocol AVMediaSelectionOptionInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSString * displayName;
@property (readonly,nonatomic) NSLocale * locale;
@property (readonly,nonatomic) NSString * extendedLanguageTag;
@property (readonly,nonatomic) AVMediaType mediaType;
@property (readonly,nonatomic) NSArray * mediaSubTypes;
@property (getter=isPlayable,readonly,nonatomic) BOOL playable;
@property (readonly,nonatomic) NSArray * commonMetadata;
@property (readonly,nonatomic) NSArray * availableMetadataFormats;
-(NSArray *) metadataForFormat: (NSString *) format ;
-(BOOL) hasMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
-(id) propertyList;
-(AVMediaSelectionOption *) associatedMediaSelectionOptionInMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
-(NSString *) displayNameWithLocale: (NSLocale *) locale ;
@end
@protocol AVMediaSelectionOptionClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop