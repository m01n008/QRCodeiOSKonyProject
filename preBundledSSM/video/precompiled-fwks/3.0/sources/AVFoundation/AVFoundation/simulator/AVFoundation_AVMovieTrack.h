#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVMovieTrack_symbols(JSContext*);
@protocol AVMovieTrackAVMovieTrackMediaDataStorageCategoryInstanceExports<JSExport>
@property (readonly,copy,nonatomic) AVMediaDataStorage * mediaDataStorage;
@end
@protocol AVMovieTrackAVMovieTrackMediaDataStorageCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackSampleLevelEditingCategoryInstanceExports<JSExport>
-(BOOL) insertMediaTimeRange: (CMTimeRange) mediaTimeRange intoTimeRange: (CMTimeRange) trackTimeRange ;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackSampleLevelEditingCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackChunkPropertiesCategoryInstanceExports<JSExport>
@property (nonatomic) NSInteger preferredMediaChunkAlignment;
@property (nonatomic) CMTime preferredMediaChunkDuration;
@property (nonatomic) NSInteger preferredMediaChunkSize;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackChunkPropertiesCategoryClassExports<JSExport>
@end
@protocol AVFragmentedMovieTrackInstanceExports<JSExport>
@end
@protocol AVFragmentedMovieTrackClassExports<JSExport>
@end
@protocol AVMovieTrackInstanceExports<JSExport>
@property (readonly,nonatomic) CMTimeRange mediaDecodeTimeRange;
@property (readonly,nonatomic) NSInteger alternateGroupID;
@property (readonly,nonatomic) CMTimeRange mediaPresentationTimeRange;
@end
@protocol AVMovieTrackClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackVisualPropertiesCategoryInstanceExports<JSExport>
@property (nonatomic) NSInteger layer;
@property (nonatomic) CGSize naturalSize;
@property (nonatomic) CGSize productionApertureDimensions;
@property (nonatomic) CGSize cleanApertureDimensions;
@property (nonatomic) CGSize encodedPixelsDimensions;
@property (nonatomic) CGAffineTransform preferredTransform;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackVisualPropertiesCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackInstanceExports<JSExport>
@property (nonatomic) NSInteger alternateGroupID;
@property (readwrite,nonatomic) CMTimeScale timescale;
@property (copy,nonatomic) AVMediaDataStorage * mediaDataStorage;
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (getter=isModified,nonatomic) BOOL modified;
@property (readonly,nonatomic) BOOL hasProtectedContent;
@property (copy,nonatomic) NSURL * sampleReferenceBaseURL;
@end
@protocol AVMutableMovieTrackClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackTrackAssociationsCategoryInstanceExports<JSExport>
-(void) addTrackAssociationToTrack: (AVMovieTrack *) movieTrack type: (AVTrackAssociationType) trackAssociationType ;
-(void) removeTrackAssociationToTrack: (AVMovieTrack *) movieTrack type: (AVTrackAssociationType) trackAssociationType ;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackTrackAssociationsCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackMetadataEditingCategoryInstanceExports<JSExport>
@property (copy,nonatomic) NSArray * metadata;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackMetadataEditingCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackFormatDescriptionsCategoryInstanceExports<JSExport>
-(void) replaceFormatDescription: (id) formatDescription withFormatDescription: (id) newFormatDescription ;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackFormatDescriptionsCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackLanguagePropertiesCategoryInstanceExports<JSExport>
@property (copy,nonatomic) NSString * languageCode;
@property (copy,nonatomic) NSString * extendedLanguageTag;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackLanguagePropertiesCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackAudiblePropertiesCategoryInstanceExports<JSExport>
@property (nonatomic) float preferredVolume;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackAudiblePropertiesCategoryClassExports<JSExport>
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackTrackLevelEditingCategoryInstanceExports<JSExport>
JSExportAs(insertTimeRangeOfTrackAtTimeCopySampleDataError,
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofTrack: (AVAssetTrack *) track atTime: (CMTime) startTime copySampleData: (BOOL) copySampleData error: (JSValue *) outError );
-(void) insertEmptyTimeRange: (CMTimeRange) timeRange ;
-(void) removeTimeRange: (CMTimeRange) timeRange ;
-(void) scaleTimeRange: (CMTimeRange) timeRange toDuration: (CMTime) duration ;
@end
@protocol AVMutableMovieTrackAVMutableMovieTrackTrackLevelEditingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop