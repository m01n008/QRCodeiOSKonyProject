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
@property (nonatomic) float preferredVolume;
@property (copy,nonatomic) NSString * extendedLanguageTag;
@property (nonatomic) CMTimeScale naturalTimeScale;
@property (nonatomic) CGAffineTransform preferredTransform;
@property (copy,nonatomic) NSArray * segments;
JSExportAs(insertTimeRangeOfTrackAtTimeError,
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofTrack: (AVAssetTrack *) track atTime: (CMTime) startTime error: (JSValue *) outError );
-(void) scaleTimeRange: (CMTimeRange) timeRange toDuration: (CMTime) duration ;
JSExportAs(insertTimeRangesOfTracksAtTimeError,
-(BOOL) jsinsertTimeRanges: (NSArray *) timeRanges ofTracks: (NSArray *) tracks atTime: (CMTime) startTime error: (JSValue *) outError );
-(void) insertEmptyTimeRange: (CMTimeRange) timeRange ;
-(void) removeTimeRange: (CMTimeRange) timeRange ;
JSExportAs(validateTrackSegmentsError,
-(BOOL) jsvalidateTrackSegments: (NSArray *) trackSegments error: (JSValue *) outError );
@end
@protocol AVMutableCompositionTrackClassExports<JSExport>
@end
@protocol AVCompositionTrackInstanceExports<JSExport>
@property (readonly,copy,nonatomic) NSArray * segments;
-(AVCompositionTrackSegment *) segmentForTrackTime: (CMTime) trackTime ;
@end
@protocol AVCompositionTrackClassExports<JSExport>
@end
#pragma clang diagnostic pop