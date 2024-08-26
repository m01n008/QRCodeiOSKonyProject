#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCompositionTrack_symbols(JSContext*);
@protocol AVMutableCompositionTrackInstanceExports<JSExport>
@property (copy,nonatomic) NSString * languageCode;
@property (copy,nonatomic) NSString * extendedLanguageTag;
@property (nonatomic) float preferredVolume;
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (nonatomic) CMTimeScale naturalTimeScale;
@property (nonatomic) CGAffineTransform preferredTransform;
@property (copy,nonatomic) NSArray * segments;
-(void) insertEmptyTimeRange: (CMTimeRange) timeRange ;
JSExportAs(validateTrackSegmentsError,
-(BOOL) jsvalidateTrackSegments: (NSArray *) trackSegments error: (JSValue *) outError );
-(void) removeTimeRange: (CMTimeRange) timeRange ;
-(void) scaleTimeRange: (CMTimeRange) timeRange toDuration: (CMTime) duration ;
JSExportAs(insertTimeRangesOfTracksAtTimeError,
-(BOOL) jsinsertTimeRanges: (NSArray *) timeRanges ofTracks: (NSArray *) tracks atTime: (CMTime) startTime error: (JSValue *) outError );
JSExportAs(insertTimeRangeOfTrackAtTimeError,
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofTrack: (AVAssetTrack *) track atTime: (CMTime) startTime error: (JSValue *) outError );
-(void) removeTrackAssociationToTrack: (AVCompositionTrack *) compositionTrack type: (AVTrackAssociationType) trackAssociationType ;
-(void) addTrackAssociationToTrack: (AVCompositionTrack *) compositionTrack type: (AVTrackAssociationType) trackAssociationType ;
@end
@protocol AVMutableCompositionTrackClassExports<JSExport>
@end
@protocol AVMutableCompositionTrackAVMutableCompositionTrackFormatDescriptionReplacementCategoryInstanceExports<JSExport>
-(void) replaceFormatDescription: (id) originalFormatDescription withFormatDescription: (id) replacementFormatDescription ;
@end
@protocol AVMutableCompositionTrackAVMutableCompositionTrackFormatDescriptionReplacementCategoryClassExports<JSExport>
@end
@protocol AVCompositionTrackInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * segments;
@property (readonly) NSArray * formatDescriptionReplacements;
-(AVCompositionTrackSegment *) segmentForTrackTime: (CMTime) trackTime ;
@end
@protocol AVCompositionTrackClassExports<JSExport>
@end
@protocol AVCompositionTrackFormatDescriptionReplacementInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly) id replacementFormatDescription;
@property (readonly) id originalFormatDescription;
@end
@protocol AVCompositionTrackFormatDescriptionReplacementClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop