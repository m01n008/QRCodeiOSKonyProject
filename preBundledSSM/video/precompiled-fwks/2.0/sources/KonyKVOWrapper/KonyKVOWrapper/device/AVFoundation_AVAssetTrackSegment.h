#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetTrackSegment_symbols(JSContext*);
@protocol AVAssetTrackSegmentInstanceExports<JSExport>
@property (readonly,nonatomic) CMTimeMapping timeMapping;
@property (getter=isEmpty,readonly,nonatomic) BOOL empty;
@end
@protocol AVAssetTrackSegmentClassExports<JSExport>
@end
#pragma clang diagnostic pop