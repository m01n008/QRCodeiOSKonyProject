#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCompositionTrackSegment_symbols(JSContext*);
@protocol AVCompositionTrackSegmentInstanceExports<JSExport>
@property (readonly,nonatomic) NSURL * sourceURL;
@property (readonly,nonatomic) CMPersistentTrackID sourceTrackID;
@property (getter=isEmpty,readonly,nonatomic) BOOL empty;
JSExportAs(initWithURLTrackIDSourceTimeRangeTargetTimeRange,
-(id) jsinitWithURL: (NSURL *) URL trackID: (CMPersistentTrackID) trackID sourceTimeRange: (CMTimeRange) sourceTimeRange targetTimeRange: (CMTimeRange) targetTimeRange );
JSExportAs(initWithTimeRange,
-(id) jsinitWithTimeRange: (CMTimeRange) timeRange );
@end
@protocol AVCompositionTrackSegmentClassExports<JSExport>
+(id) compositionTrackSegmentWithURL: (NSURL *) URL trackID: (CMPersistentTrackID) trackID sourceTimeRange: (CMTimeRange) sourceTimeRange targetTimeRange: (CMTimeRange) targetTimeRange ;
+(id) compositionTrackSegmentWithTimeRange: (CMTimeRange) timeRange ;
@end
#pragma clang diagnostic pop