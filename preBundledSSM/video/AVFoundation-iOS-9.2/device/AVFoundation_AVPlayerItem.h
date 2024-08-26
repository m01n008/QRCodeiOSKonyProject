#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerItem_symbols(JSContext*);
@protocol AVPlayerItemAVPlayerItemVisualPresentationCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) id customVideoCompositor;
@property (copy,nonatomic) AVVideoComposition * videoComposition;
@property (nonatomic) BOOL seekingWaitsForVideoCompositionRendering;
@property (copy,nonatomic) NSArray * textStyleRules;
@end
@protocol AVPlayerItemAVPlayerItemVisualPresentationCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemMediaSelectionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVMediaSelection * currentMediaSelection;
-(void) selectMediaOptionAutomaticallyInMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
-(void) selectMediaOption: (AVMediaSelectionOption *) mediaSelectionOption inMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
-(AVMediaSelectionOption *) selectedMediaOptionInMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
@end
@protocol AVPlayerItemAVPlayerItemMediaSelectionCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemPlayabilityCategoryInstanceExports<JSExport>
@property (assign,nonatomic) BOOL canUseNetworkResourcesForLiveStreamingWhilePaused;
@property (readonly,nonatomic) NSArray * loadedTimeRanges;
@property (getter=isPlaybackBufferFull,readonly,nonatomic) BOOL playbackBufferFull;
@property (getter=isPlaybackLikelyToKeepUp,readonly,nonatomic) BOOL playbackLikelyToKeepUp;
@property (getter=isPlaybackBufferEmpty,readonly,nonatomic) BOOL playbackBufferEmpty;
@end
@protocol AVPlayerItemAVPlayerItemPlayabilityCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAccessLogEventInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) double switchBitrate;
@property (readonly,nonatomic) double observedMaxBitrate;
@property (readonly,nonatomic) NSInteger numberOfDroppedVideoFrames;
@property (readonly,nonatomic) double observedBitrate;
@property (readonly,nonatomic) NSInteger numberOfMediaRequests;
@property (readonly,nonatomic) NSTimeInterval durationWatched;
@property (readonly,nonatomic) NSTimeInterval playbackStartOffset;
@property (readonly,nonatomic) NSDate * playbackStartDate;
@property (readonly,nonatomic) double observedBitrateStandardDeviation;
@property (readonly,nonatomic) NSInteger numberOfStalls;
@property (readonly,nonatomic) double indicatedBitrate;
@property (readonly,nonatomic) NSString * playbackType;
@property (readonly,nonatomic) long long numberOfBytesTransferred;
@property (readonly,nonatomic) NSInteger numberOfServerAddressChanges;
@property (readonly,nonatomic) NSTimeInterval startupTime;
@property (readonly,nonatomic) NSString * URI;
@property (readonly,nonatomic) NSTimeInterval segmentsDownloadedDuration;
@property (readonly,nonatomic) NSTimeInterval transferDuration;
@property (readonly,nonatomic) NSString * serverAddress;
@property (readonly,nonatomic) NSString * playbackSessionID;
@property (readonly,nonatomic) double observedMinBitrate;
@property (readonly,nonatomic) NSInteger downloadOverdue;
@property (readonly,nonatomic) NSInteger numberOfSegmentsDownloaded;
@property (readonly,nonatomic) NSInteger mediaRequestsWWAN;
@end
@protocol AVPlayerItemAccessLogEventClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVPlayerItemAVPlayerItemLoggingCategoryInstanceExports<JSExport>
-(AVPlayerItemAccessLog *) accessLog;
-(AVPlayerItemErrorLog *) errorLog;
@end
@protocol AVPlayerItemAVPlayerItemLoggingCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) AVPlayerItemStatus status;
@property (readonly,nonatomic) NSError * error;
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) URL );
JSExportAs(initWithAsset,
-(id) jsinitWithAsset: (AVAsset *) asset );
JSExportAs(initWithAssetAutomaticallyLoadedAssetKeys,
-(id) jsinitWithAsset: (AVAsset *) asset automaticallyLoadedAssetKeys: (NSArray *) automaticallyLoadedAssetKeys );
@end
@protocol AVPlayerItemClassExports<JSExport, NSCopyingClassExports_>
+(AVPlayerItem *) playerItemWithAsset: (AVAsset *) asset ;
+(AVPlayerItem *) playerItemWithURL: (NSURL *) URL ;
+(AVPlayerItem *) playerItemWithAsset: (AVAsset *) asset automaticallyLoadedAssetKeys: (NSArray *) automaticallyLoadedAssetKeys ;
@end
@protocol AVPlayerItemAVPlayerItemBitRateControlCategoryInstanceExports<JSExport>
@property (nonatomic) double preferredPeakBitRate;
@end
@protocol AVPlayerItemAVPlayerItemBitRateControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemErrorLogInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSStringEncoding extendedLogDataStringEncoding;
@property (readonly,nonatomic) NSArray * events;
-(NSData *) extendedLogData;
@end
@protocol AVPlayerItemErrorLogClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVPlayerItemAVPlayerItemRateAndSteppingSupportCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL canPlayReverse;
@property (readonly,nonatomic) BOOL canPlaySlowReverse;
@property (readonly,nonatomic) BOOL canPlayFastForward;
@property (readonly,nonatomic) BOOL canPlaySlowForward;
@property (readonly,nonatomic) BOOL canStepForward;
@property (readonly,nonatomic) BOOL canStepBackward;
@property (readonly,nonatomic) BOOL canPlayFastReverse;
@end
@protocol AVPlayerItemAVPlayerItemRateAndSteppingSupportCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemInspectionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * timedMetadata;
@property (readonly,nonatomic) NSArray * automaticallyLoadedAssetKeys;
@property (readonly,nonatomic) NSArray * tracks;
@property (readonly,nonatomic) AVAsset * asset;
@property (readonly,nonatomic) CMTime duration;
@property (readonly,nonatomic) CGSize presentationSize;
@end
@protocol AVPlayerItemAVPlayerItemInspectionCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemOutputsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * outputs;
-(void) removeOutput: (AVPlayerItemOutput *) output ;
-(void) addOutput: (AVPlayerItemOutput *) output ;
@end
@protocol AVPlayerItemAVPlayerItemOutputsCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAccessLogInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSStringEncoding extendedLogDataStringEncoding;
@property (readonly,nonatomic) NSArray * events;
-(NSData *) extendedLogData;
@end
@protocol AVPlayerItemAccessLogClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVPlayerItemAVPlayerItemTimeControlCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) id timebase;
@property (nonatomic) CMTime reversePlaybackEndTime;
@property (nonatomic) CMTime forwardPlaybackEndTime;
@property (readonly,nonatomic) NSArray * seekableTimeRanges;
JSExportAs(seekToDateCompletionHandler,
-(BOOL) jsseekToDate: (NSDate *) date completionHandler: (JSValue *) completionHandler );
-(CMTime) currentTime;
-(void) stepByCount: (NSInteger) stepCount ;
-(void) seekToTime: (CMTime) time toleranceBefore: (CMTime) toleranceBefore toleranceAfter: (CMTime) toleranceAfter ;
JSExportAs(seekToTimeToleranceBeforeToleranceAfterCompletionHandler,
-(void) jsseekToTime: (CMTime) time toleranceBefore: (CMTime) toleranceBefore toleranceAfter: (CMTime) toleranceAfter completionHandler: (JSValue *) completionHandler );
-(void) cancelPendingSeeks;
-(void) seekToTime: (CMTime) time ;
-(NSDate *) currentDate;
JSExportAs(seekToTimeCompletionHandler,
-(void) jsseekToTime: (CMTime) time completionHandler: (JSValue *) completionHandler );
-(BOOL) seekToDate: (NSDate *) date ;
@end
@protocol AVPlayerItemAVPlayerItemTimeControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemAudioProcessingCategoryInstanceExports<JSExport>
@property (copy,nonatomic) NSString * audioTimePitchAlgorithm;
@property (copy,nonatomic) AVAudioMix * audioMix;
@end
@protocol AVPlayerItemAVPlayerItemAudioProcessingCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemErrorLogEventInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSInteger errorStatusCode;
@property (readonly,nonatomic) NSString * URI;
@property (readonly,nonatomic) NSString * errorDomain;
@property (readonly,nonatomic) NSDate * date;
@property (readonly,nonatomic) NSString * playbackSessionID;
@property (readonly,nonatomic) NSString * serverAddress;
@property (readonly,nonatomic) NSString * errorComment;
@end
@protocol AVPlayerItemErrorLogEventClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop