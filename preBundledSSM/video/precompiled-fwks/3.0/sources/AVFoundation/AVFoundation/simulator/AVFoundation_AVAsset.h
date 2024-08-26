#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAsset_symbols(JSContext*);
@protocol AVAssetAVAssetChapterInspectionCategoryInstanceExports<JSExport>
@property (readonly) NSArray * availableChapterLocales;
-(NSArray *) chapterMetadataGroupsWithTitleLocale: (NSLocale *) locale containingItemsWithCommonKeys: (NSArray *) commonKeys ;
-(NSArray *) chapterMetadataGroupsBestMatchingPreferredLanguages: (NSArray *) preferredLanguages ;
@end
@protocol AVAssetAVAssetChapterInspectionCategoryClassExports<JSExport>
@end
@protocol AVAssetAVAssetFragmentsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL containsFragments;
@property (readonly,nonatomic) BOOL canContainFragments;
@property (readonly,nonatomic) CMTime overallDurationHint;
@end
@protocol AVAssetAVAssetFragmentsCategoryClassExports<JSExport>
@end
@protocol AVURLAssetAVURLAssetContentKeyEligibilityCategoryInstanceExports<JSExport, AVContentKeyRecipientInstanceExports_>
@property (readonly,nonatomic) BOOL mayRequireContentKeysForMediaDataProcessing;
@end
@protocol AVURLAssetAVURLAssetContentKeyEligibilityCategoryClassExports<JSExport, AVContentKeyRecipientClassExports_>
@end
@protocol AVURLAssetAVAssetCompositionUtilityCategoryInstanceExports<JSExport>
-(AVAssetTrack *) compatibleTrackForCompositionTrack: (AVCompositionTrack *) compositionTrack ;
@end
@protocol AVURLAssetAVAssetCompositionUtilityCategoryClassExports<JSExport>
@end
@protocol AVAssetAVAssetTrackInspectionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * tracks;
@property (readonly,nonatomic) NSArray * trackGroups;
-(AVAssetTrack *) trackWithTrackID: (CMPersistentTrackID) trackID ;
-(NSArray *) tracksWithMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
-(NSArray *) tracksWithMediaType: (AVMediaType) mediaType ;
@end
@protocol AVAssetAVAssetTrackInspectionCategoryClassExports<JSExport>
@end
@protocol AVFragmentedAssetAVFragmentedAssetTrackInspectionCategoryInstanceExports<JSExport>
-(AVFragmentedAssetTrack *) trackWithTrackID: (CMPersistentTrackID) trackID ;
-(NSArray *) tracksWithMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
-(NSArray *) tracksWithMediaType: (AVMediaType) mediaType ;
@end
@protocol AVFragmentedAssetAVFragmentedAssetTrackInspectionCategoryClassExports<JSExport>
@end
@protocol AVURLAssetAVURLAssetNSItemProviderCategoryInstanceExports<JSExport, NSItemProviderReadingInstanceExports_, NSItemProviderWritingInstanceExports_>
@end
@protocol AVURLAssetAVURLAssetNSItemProviderCategoryClassExports<JSExport, NSItemProviderReadingClassExports_, NSItemProviderWritingClassExports_>
@end
@protocol AVAssetAVAssetAsynchronousLoadingCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL providesPreciseDurationAndTiming;
-(void) cancelLoading;
@end
@protocol AVAssetAVAssetAsynchronousLoadingCategoryClassExports<JSExport>
@end
@protocol AVFragmentedAssetInstanceExports<JSExport, AVFragmentMindingInstanceExports_>
@property (readonly,nonatomic) NSArray * tracks;
@end
@protocol AVFragmentedAssetClassExports<JSExport, AVFragmentMindingClassExports_>
+(id) fragmentedAssetWithURL: (NSURL *) URL options: (NSDictionary *) options ;
@end
@protocol AVAssetAVAssetReferenceRestrictionsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetReferenceRestrictions referenceRestrictions;
@end
@protocol AVAssetAVAssetReferenceRestrictionsCategoryClassExports<JSExport>
@end
@protocol AVFragmentedAssetMinderInstanceExports<JSExport>
@property (nonatomic) NSTimeInterval mindingInterval;
@property (readonly,nonatomic) NSArray * assets;
-(void) removeFragmentedAsset: (AVAsset *) asset ;
JSExportAs(initWithAssetMindingInterval,
-(id) jsinitWithAsset: (AVAsset *) asset mindingInterval: (NSTimeInterval) mindingInterval );
-(void) addFragmentedAsset: (AVAsset *) asset ;
@end
@protocol AVFragmentedAssetMinderClassExports<JSExport>
+(id) fragmentedAssetMinderWithAsset: (AVAsset *) asset mindingInterval: (NSTimeInterval) mindingInterval ;
@end
@protocol AVURLAssetAVURLAssetCacheCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetCache * assetCache;
@end
@protocol AVURLAssetAVURLAssetCacheCategoryClassExports<JSExport>
@end
@protocol AVAssetInstanceExports<JSExport, NSCopyingInstanceExports_, AVAsynchronousKeyValueLoadingInstanceExports_>
@property (readonly,nonatomic) CGSize naturalSize;
@property (readonly,nonatomic) float preferredVolume;
@property (readonly,nonatomic) float preferredRate;
@property (readonly,nonatomic) CMTime minimumTimeOffsetFromLive;
@property (readonly,nonatomic) CMTime duration;
@property (readonly,nonatomic) CGAffineTransform preferredTransform;
@end
@protocol AVAssetClassExports<JSExport, NSCopyingClassExports_, AVAsynchronousKeyValueLoadingClassExports_>
+(id) assetWithURL: (NSURL *) URL ;
@end
@protocol AVAssetAVAssetProtectedContentCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL hasProtectedContent;
@end
@protocol AVAssetAVAssetProtectedContentCategoryClassExports<JSExport>
@end
@protocol AVURLAssetInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSURL * URL;
JSExportAs(initWithURLOptions,
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options );
@end
@protocol AVURLAssetClassExports<JSExport>
+(id) URLAssetWithURL: (NSURL *) URL options: (NSDictionary *) options ;
+(NSArray *) audiovisualMIMETypes;
+(BOOL) isPlayableExtendedMIMEType: (NSString *) extendedMIMEType ;
+(NSArray *) audiovisualTypes;
@end
@protocol AVAssetAVAssetUsabilityCategoryInstanceExports<JSExport>
@property (getter=isExportable,readonly,nonatomic) BOOL exportable;
@property (getter=isCompatibleWithSavedPhotosAlbum,readonly,nonatomic) BOOL compatibleWithSavedPhotosAlbum;
@property (getter=isReadable,readonly,nonatomic) BOOL readable;
@property (getter=isComposable,readonly,nonatomic) BOOL composable;
@property (getter=isPlayable,readonly,nonatomic) BOOL playable;
@property (getter=isCompatibleWithAirPlayVideo,readonly,nonatomic) BOOL compatibleWithAirPlayVideo;
@end
@protocol AVAssetAVAssetUsabilityCategoryClassExports<JSExport>
@end
@protocol AVAssetAVAssetMetadataReadingCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * commonMetadata;
@property (readonly,nonatomic) AVMetadataItem * creationDate;
@property (readonly,nonatomic) NSArray * availableMetadataFormats;
@property (readonly,nonatomic) NSString * lyrics;
@property (readonly,nonatomic) NSArray * metadata;
-(NSArray *) metadataForFormat: (AVMetadataFormat) format ;
@end
@protocol AVAssetAVAssetMetadataReadingCategoryClassExports<JSExport>
@end
@protocol AVAssetAVAssetMediaSelectionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVMediaSelection * preferredMediaSelection;
@property (readonly,nonatomic) NSArray * availableMediaCharacteristicsWithMediaSelectionOptions;
@property (readonly,nonatomic) NSArray * allMediaSelections;
-(AVMediaSelectionGroup *) mediaSelectionGroupForMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
@end
@protocol AVAssetAVAssetMediaSelectionCategoryClassExports<JSExport>
@end
@protocol AVURLAssetAVURLAssetURLHandlingCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetResourceLoader * resourceLoader;
@end
@protocol AVURLAssetAVURLAssetURLHandlingCategoryClassExports<JSExport>
@end
@protocol AVFragmentMindingInstanceExports_<JSExport>
@property (getter=isAssociatedWithFragmentMinder,readonly,nonatomic) BOOL associatedWithFragmentMinder;
@end
@protocol AVFragmentMindingClassExports_<JSExport>
@end
#pragma clang diagnostic pop