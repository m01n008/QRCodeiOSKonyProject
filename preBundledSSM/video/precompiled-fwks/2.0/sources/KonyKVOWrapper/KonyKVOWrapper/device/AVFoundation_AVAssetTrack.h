#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetTrack_symbols(JSContext*);
@protocol AVAssetTrackAVAssetTrackPropertiesForFrameBasedCharacteristicCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL requiresFrameReordering;
@property (readonly,nonatomic) float nominalFrameRate;
@property (readonly,nonatomic) CMTime minFrameDuration;
@end
@protocol AVAssetTrackAVAssetTrackPropertiesForFrameBasedCharacteristicCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackInstanceExports<JSExport, NSCopyingInstanceExports_, AVAsynchronousKeyValueLoadingInstanceExports_>
@property (readonly,nonatomic) CMPersistentTrackID trackID;
@property (readonly,nonatomic,weak) AVAsset * asset;
@end
@protocol AVAssetTrackClassExports<JSExport, NSCopyingClassExports_, AVAsynchronousKeyValueLoadingClassExports_>
@end
@protocol AVAssetTrackAVAssetTrackLanguagePropertiesCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSString * languageCode;
@property (readonly,nonatomic) NSString * extendedLanguageTag;
@end
@protocol AVAssetTrackAVAssetTrackLanguagePropertiesCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackAVAssetTrackMetadataReadingCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * commonMetadata;
@property (readonly,nonatomic) NSArray * availableMetadataFormats;
@property (readonly,nonatomic) NSArray * metadata;
-(NSArray *) metadataForFormat: (AVMetadataFormat) format ;
@end
@protocol AVAssetTrackAVAssetTrackMetadataReadingCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackAVAssetTrackTrackAssociationsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * availableTrackAssociationTypes;
-(NSArray *) associatedTracksOfType: (AVTrackAssociationType) trackAssociationType ;
@end
@protocol AVAssetTrackAVAssetTrackTrackAssociationsCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackAVAssetTrackTemporalPropertiesCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) CMTimeRange timeRange;
@property (readonly,nonatomic) float estimatedDataRate;
@property (readonly,nonatomic) CMTimeScale naturalTimeScale;
@end
@protocol AVAssetTrackAVAssetTrackTemporalPropertiesCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackAVAssetTrackPropertiesForAudibleCharacteristicCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) float preferredVolume;
@end
@protocol AVAssetTrackAVAssetTrackPropertiesForAudibleCharacteristicCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackAVAssetTrackSegmentsCategoryInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * segments;
-(CMTime) samplePresentationTimeForTrackTime: (CMTime) trackTime ;
-(AVAssetTrackSegment *) segmentForTrackTime: (CMTime) trackTime ;
@end
@protocol AVAssetTrackAVAssetTrackSegmentsCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackAVAssetTrackBasicPropertiesAndCharacteristicsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * formatDescriptions;
@property (getter=isSelfContained,readonly,nonatomic) BOOL selfContained;
@property (getter=isEnabled,readonly,nonatomic) BOOL enabled;
@property (readonly,nonatomic) AVMediaType mediaType;
@property (readonly,nonatomic) long long totalSampleDataLength;
@property (getter=isPlayable,readonly,nonatomic) BOOL playable;
@property (getter=isDecodable,readonly,nonatomic) BOOL decodable;
-(BOOL) hasMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
@end
@protocol AVAssetTrackAVAssetTrackBasicPropertiesAndCharacteristicsCategoryClassExports<JSExport>
@end
@protocol AVAssetTrackAVAssetTrackPropertiesForVisualCharacteristicCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) CGAffineTransform preferredTransform;
@property (readonly,nonatomic) CGSize naturalSize;
@end
@protocol AVAssetTrackAVAssetTrackPropertiesForVisualCharacteristicCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop