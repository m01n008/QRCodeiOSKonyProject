#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetDownloadTask_symbols(JSContext*);
@protocol AVAssetDownloadTaskInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * loadedTimeRanges;
@property (readonly,nonatomic) NSDictionary * options;
@property (readonly,nonatomic) AVURLAsset * URLAsset;
@property (readonly,nonatomic) NSURL * destinationURL;
@end
@protocol AVAssetDownloadTaskClassExports<JSExport>
@end
@protocol AVAssetDownloadURLSessionInstanceExports<JSExport>
-(AVAssetDownloadTask *) assetDownloadTaskWithURLAsset: (AVURLAsset *) URLAsset destinationURL: (NSURL *) destinationURL options: (NSDictionary *) options ;
@end
@protocol AVAssetDownloadURLSessionClassExports<JSExport>
+(AVAssetDownloadURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration assetDownloadDelegate: (id) delegate delegateQueue: (NSOperationQueue *) delegateQueue ;
@end
@protocol AVAssetDownloadDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session assetDownloadTask: (AVAssetDownloadTask *) assetDownloadTask didResolveMediaSelection: (AVMediaSelection *) resolvedMediaSelection ;
-(void) URLSession: (NSURLSession *) session assetDownloadTask: (AVAssetDownloadTask *) assetDownloadTask didLoadTimeRange: (CMTimeRange) timeRange totalTimeRangesLoaded: (NSArray *) loadedTimeRanges timeRangeExpectedToLoad: (CMTimeRange) timeRangeExpectedToLoad ;
@end
@protocol AVAssetDownloadDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
#pragma clang diagnostic pop