#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerItem_symbols(JSContext*);
@protocol AVPlayerItemAVPlayerItemMediaSelectionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVMediaSelection * currentMediaSelection;
-(void) selectMediaOptionAutomaticallyInMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
-(void) selectMediaOption: (AVMediaSelectionOption *) mediaSelectionOption inMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
@end
@protocol AVPlayerItemAVPlayerItemMediaSelectionCategoryClassExports<JSExport>
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
@property (readonly,nonatomic) double averageAudioBitrate;
@property (readonly,nonatomic) NSString * URI;
@property (readonly,nonatomic) NSTimeInterval segmentsDownloadedDuration;
@property (readonly,nonatomic) NSTimeInterval transferDuration;
@property (readonly,nonatomic) NSString * serverAddress;
@property (readonly,nonatomic) NSString * playbackSessionID;
@property (readonly,nonatomic) double observedMinBitrate;
@property (readonly,nonatomic) NSInteger downloadOverdue;
@property (readonly,nonatomic) NSInteger mediaRequestsWWAN;
@property (readonly,nonatomic) NSInteger numberOfSegmentsDownloaded;
@property (readonly,nonatomic) double indicatedAverageBitrate;
@property (readonly,nonatomic) double averageVideoBitrate;
@end
@protocol AVPlayerItemAccessLogEventClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVPlayerItemAVPlayerItemPlayabilityCategoryInstanceExports<JSExport>
@property (getter=isPlaybackBufferFull,readonly) BOOL playbackBufferFull;
@property (assign) BOOL canUseNetworkResourcesForLiveStreamingWhilePaused;
@property () NSTimeInterval preferredForwardBufferDuration;
@property (getter=isPlaybackLikelyToKeepUp,readonly) BOOL playbackLikelyToKeepUp;
@property (getter=isPlaybackBufferEmpty,readonly) BOOL playbackBufferEmpty;
@property (readonly) NSArray * loadedTimeRanges;
@end
@protocol AVPlayerItemAVPlayerItemPlayabilityCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemLoggingCategoryInstanceExports<JSExport>
-(AVPlayerItemAccessLog *) accessLog;
-(AVPlayerItemErrorLog *) errorLog;
@end
@protocol AVPlayerItemAVPlayerItemLoggingCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemVariantControlCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL startsOnFirstEligibleVariant;
@property () double preferredPeakBitRate;
@property () CGSize preferredMaximumResolution;
@end
@protocol AVPlayerItemAVPlayerItemVariantControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) AVPlayerItemStatus status;
@property (readonly) NSError * error;
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) URL );
JSExportAs(initWithAsset,
-(id) jsinitWithAsset: (AVAsset *) asset );
JSExportAs(initWithAssetAutomaticallyLoadedAssetKeys,
-(id) jsinitWithAsset: (AVAsset *) asset automaticallyLoadedAssetKeys: (NSArray *) automaticallyLoadedAssetKeys );
@end
@protocol AVPlayerItemClassExports<JSExport, NSCopyingClassExports_>
+(id) playerItemWithAsset: (AVAsset *) asset ;
+(id) playerItemWithURL: (NSURL *) URL ;
+(id) playerItemWithAsset: (AVAsset *) asset automaticallyLoadedAssetKeys: (NSArray *) automaticallyLoadedAssetKeys ;
@end
@protocol AVPlayerItemAVPlayerItemMediaDataCollectorsCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * mediaDataCollectors;
-(void) removeMediaDataCollector: (AVPlayerItemMediaDataCollector *) collector ;
-(void) addMediaDataCollector: (AVPlayerItemMediaDataCollector *) collector ;
@end
@protocol AVPlayerItemAVPlayerItemMediaDataCollectorsCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemErrorLogInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) NSStringEncoding extendedLogDataStringEncoding;
@property (readonly,nonatomic) NSArray * events;
-(NSData *) extendedLogData;
@end
@protocol AVPlayerItemErrorLogClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol AVPlayerItemAVPlayerItemRateAndSteppingSupportCategoryInstanceExports<JSExport>
@property (readonly) BOOL canPlayReverse;
@property () CMTime configuredTimeOffsetFromLive;
@property (nonatomic) BOOL automaticallyPreservesTimeOffsetFromLive;
@property (readonly,nonatomic) CMTime recommendedTimeOffsetFromLive;
@property (readonly) BOOL canPlaySlowReverse;
@property (readonly) BOOL canPlayFastForward;
@property (readonly) BOOL canPlaySlowForward;
@property (readonly) BOOL canStepForward;
@property (readonly) BOOL canStepBackward;
@property (readonly) BOOL canPlayFastReverse;
@end
@protocol AVPlayerItemAVPlayerItemRateAndSteppingSupportCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemInspectionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * timedMetadata;
@property (readonly,nonatomic) NSArray * automaticallyLoadedAssetKeys;
@property (readonly) NSArray * tracks;
@property (readonly,nonatomic) AVAsset * asset;
@property (readonly) CMTime duration;
@property (readonly) CGSize presentationSize;
@end
@protocol AVPlayerItemAVPlayerItemInspectionCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemVisualPresentationCategoryInstanceExports<JSExport>
@property () BOOL seekingWaitsForVideoCompositionRendering;
@property (copy) AVVideoApertureMode videoApertureMode;
@property (nonatomic) BOOL appliesPerFrameHDRDisplayMetadata;
@property (copy,nonatomic) AVVideoComposition * videoComposition;
@property (readonly,nonatomic) id customVideoCompositor;
@property (copy) NSArray * textStyleRules;
@end
@protocol AVPlayerItemAVPlayerItemVisualPresentationCategoryClassExports<JSExport>
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
@property () CMTime reversePlaybackEndTime;
@property () CMTime forwardPlaybackEndTime;
@property (readonly) NSArray * seekableTimeRanges;
JSExportAs(seekToDateCompletionHandler,
-(BOOL) jsseekToDate: (NSDate *) date completionHandler: (JSValue *) completionHandler );
-(CMTime) currentTime;
JSExportAs(seekToTimeCompletionHandler,
-(void) jsseekToTime: (CMTime) time completionHandler: (JSValue *) completionHandler );
JSExportAs(seekToTimeToleranceBeforeToleranceAfterCompletionHandler,
-(void) jsseekToTime: (CMTime) time toleranceBefore: (CMTime) toleranceBefore toleranceAfter: (CMTime) toleranceAfter completionHandler: (JSValue *) completionHandler );
-(void) cancelPendingSeeks;
-(NSDate *) currentDate;
-(void) stepByCount: (NSInteger) stepCount ;
@end
@protocol AVPlayerItemAVPlayerItemTimeControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemDeprecatedCategoryInstanceExports<JSExport>
-(void) seekToTime: (CMTime) time ;
-(BOOL) seekToDate: (NSDate *) date ;
-(AVMediaSelectionOption *) selectedMediaOptionInMediaSelectionGroup: (AVMediaSelectionGroup *) mediaSelectionGroup ;
-(void) seekToTime: (CMTime) time toleranceBefore: (CMTime) toleranceBefore toleranceAfter: (CMTime) toleranceAfter ;
@end
@protocol AVPlayerItemAVPlayerItemDeprecatedCategoryClassExports<JSExport>
@end
@protocol AVPlayerItemAVPlayerItemAudioProcessingCategoryInstanceExports<JSExport>
@property (getter=isAudioSpatializationAllowed,assign,nonatomic) BOOL audioSpatializationAllowed;
@property (copy) AVAudioTimePitchAlgorithm audioTimePitchAlgorithm;
@property (copy,nonatomic) AVAudioMix * audioMix;
@property (assign,nonatomic) AVAudioSpatializationFormats allowedAudioSpatializationFormats;
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