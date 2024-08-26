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
@protocol AVAggregateAssetDownloadTaskInstanceExports<JSExport>
@property (readonly,nonatomic) AVURLAsset * URLAsset;
@end
@protocol AVAggregateAssetDownloadTaskClassExports<JSExport>
@end
@protocol AVAssetDownloadURLSessionInstanceExports<JSExport>
-(AVAssetDownloadTask *) assetDownloadTaskWithURLAsset: (AVURLAsset *) URLAsset assetTitle: (NSString *) title assetArtworkData: (NSData *) artworkData options: (NSDictionary *) options ;
-(AVAggregateAssetDownloadTask *) aggregateAssetDownloadTaskWithURLAsset: (AVURLAsset *) URLAsset mediaSelections: (NSArray *) mediaSelections assetTitle: (NSString *) title assetArtworkData: (NSData *) artworkData options: (NSDictionary *) options ;
-(AVAssetDownloadTask *) assetDownloadTaskWithURLAsset: (AVURLAsset *) URLAsset destinationURL: (NSURL *) destinationURL options: (NSDictionary *) options ;
@end
@protocol AVAssetDownloadURLSessionClassExports<JSExport>
+(AVAssetDownloadURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration assetDownloadDelegate: (id) delegate delegateQueue: (NSOperationQueue *) delegateQueue ;
@end
@protocol AVAssetDownloadDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session assetDownloadTask: (AVAssetDownloadTask *) assetDownloadTask didResolveMediaSelection: (AVMediaSelection *) resolvedMediaSelection ;
-(void) URLSession: (NSURLSession *) session aggregateAssetDownloadTask: (AVAggregateAssetDownloadTask *) aggregateAssetDownloadTask didCompleteForMediaSelection: (AVMediaSelection *) mediaSelection ;
-(void) URLSession: (NSURLSession *) session aggregateAssetDownloadTask: (AVAggregateAssetDownloadTask *) aggregateAssetDownloadTask willDownloadToURL: (NSURL *) location ;
-(void) URLSession: (NSURLSession *) session assetDownloadTask: (AVAssetDownloadTask *) assetDownloadTask didLoadTimeRange: (CMTimeRange) timeRange totalTimeRangesLoaded: (NSArray *) loadedTimeRanges timeRangeExpectedToLoad: (CMTimeRange) timeRangeExpectedToLoad ;
-(void) URLSession: (NSURLSession *) session assetDownloadTask: (AVAssetDownloadTask *) assetDownloadTask didFinishDownloadingToURL: (NSURL *) location ;
-(void) URLSession: (NSURLSession *) session aggregateAssetDownloadTask: (AVAggregateAssetDownloadTask *) aggregateAssetDownloadTask didLoadTimeRange: (CMTimeRange) timeRange totalTimeRangesLoaded: (NSArray *) loadedTimeRanges timeRangeExpectedToLoad: (CMTimeRange) timeRangeExpectedToLoad forMediaSelection: (AVMediaSelection *) mediaSelection ;
@end
@protocol AVAssetDownloadDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
#pragma clang diagnostic pop