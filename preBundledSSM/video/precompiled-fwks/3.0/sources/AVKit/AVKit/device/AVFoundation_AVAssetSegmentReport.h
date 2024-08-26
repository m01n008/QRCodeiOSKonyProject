#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetSegmentReport_symbols(JSContext*);
@protocol AVAssetSegmentReportInstanceExports<JSExport>
@property (readonly,nonatomic) AVAssetSegmentType segmentType;
@property (readonly,nonatomic) NSArray * trackReports;
@end
@protocol AVAssetSegmentReportClassExports<JSExport>
@end
@protocol AVAssetSegmentTrackReportInstanceExports<JSExport>
@property (readonly,nonatomic) CMTime duration;
@property (readonly,nonatomic) CMPersistentTrackID trackID;
@property (readonly,nonatomic) AVAssetSegmentReportSampleInformation * firstVideoSampleInformation;
@property (readonly,nonatomic) CMTime earliestPresentationTimeStamp;
@property (readonly,nonatomic) AVMediaType mediaType;
@end
@protocol AVAssetSegmentTrackReportClassExports<JSExport>
@end
@protocol AVAssetSegmentReportSampleInformationInstanceExports<JSExport>
@property (readonly,nonatomic) NSInteger length;
@property (readonly,nonatomic) BOOL isSyncSample;
@property (readonly,nonatomic) CMTime presentationTimeStamp;
@property (readonly,nonatomic) NSInteger offset;
@end
@protocol AVAssetSegmentReportSampleInformationClassExports<JSExport>
@end
#pragma clang diagnostic pop