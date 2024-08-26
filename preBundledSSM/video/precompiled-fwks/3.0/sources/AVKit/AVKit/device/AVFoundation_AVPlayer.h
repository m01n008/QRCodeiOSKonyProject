#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayer_symbols(JSContext*);
@protocol AVPlayerAVPlayerVideoDecoderGPUSupportCategoryInstanceExports<JSExport>
@end
@protocol AVPlayerAVPlayerVideoDecoderGPUSupportCategoryClassExports<JSExport>
@end
@protocol AVQueuePlayerInstanceExports<JSExport>
-(void) removeAllItems;
-(void) removeItem: (AVPlayerItem *) item ;
-(NSArray *) items;
JSExportAs(initWithItems,
-(AVQueuePlayer *) jsinitWithItems: (NSArray *) items );
-(void) insertItem: (AVPlayerItem *) item afterItem: (AVPlayerItem *) afterItem ;
-(BOOL) canInsertItem: (AVPlayerItem *) item afterItem: (AVPlayerItem *) afterItem ;
-(void) advanceToNextItem;
@end
@protocol AVQueuePlayerClassExports<JSExport>
+(id) queuePlayerWithItems: (NSArray *) items ;
@end
@protocol AVPlayerAVPlayerMediaControlCategoryInstanceExports<JSExport>
@property () float volume;
@property (getter=isMuted) BOOL muted;
@end
@protocol AVPlayerAVPlayerMediaControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerProtectedContentCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL outputObscuredDueToInsufficientExternalProtection;
@end
@protocol AVPlayerAVPlayerProtectedContentCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerPlaybackControlCategoryInstanceExports<JSExport>
@property (nonatomic) float rate;
@property (readonly,nonatomic) AVPlayerTimeControlStatus timeControlStatus;
@property (readonly,nonatomic) AVPlayerWaitingReason reasonForWaitingToPlay;
-(void) play;
-(void) pause;
-(void) playImmediatelyAtRate: (float) rate ;
@end
@protocol AVPlayerAVPlayerPlaybackControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerAirPlaySupportCategoryInstanceExports<JSExport>
@property (getter=isAirPlayVideoActive,readonly,nonatomic) BOOL airPlayVideoActive;
@property () BOOL usesAirPlayVideoWhileAirPlayScreenIsActive;
@property () BOOL allowsAirPlayVideo;
@end
@protocol AVPlayerAVPlayerAirPlaySupportCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerAdvancedRateControlCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL automaticallyWaitsToMinimizeStalling;
@property (retain,nonatomic) id masterClock;
JSExportAs(prerollAtRateCompletionHandler,
-(void) jsprerollAtRate: (float) rate completionHandler: (JSValue *) completionHandler );
-(void) setRate: (float) rate time: (CMTime) itemTime atHostTime: (CMTime) hostClockTime ;
-(void) cancelPendingPrerolls;
@end
@protocol AVPlayerAVPlayerAdvancedRateControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerExternalPlaybackSupportCategoryInstanceExports<JSExport>
@property () BOOL usesExternalPlaybackWhileExternalScreenIsActive;
@property () BOOL allowsExternalPlayback;
@property (getter=isExternalPlaybackActive,readonly,nonatomic) BOOL externalPlaybackActive;
@property (copy,nonatomic) AVLayerVideoGravity externalPlaybackVideoGravity;
@end
@protocol AVPlayerAVPlayerExternalPlaybackSupportCategoryClassExports<JSExport>
@end
@protocol AVPlayerInstanceExports<JSExport>
@property (readonly,nonatomic) AVPlayerStatus status;
@property (readonly,nonatomic) NSError * error;
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) URL );
JSExportAs(initWithPlayerItem,
-(id) jsinitWithPlayerItem: (AVPlayerItem *) item );
@end
@protocol AVPlayerClassExports<JSExport>
+(id) playerWithPlayerItem: (AVPlayerItem *) item ;
+(id) playerWithURL: (NSURL *) URL ;
@end
@protocol AVPlayerAVPlayerAudioDeviceSupportCategoryInstanceExports<JSExport>
@end
@protocol AVPlayerAVPlayerAudioDeviceSupportCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerTimeControlCategoryInstanceExports<JSExport>
JSExportAs(seekToDateCompletionHandler,
-(void) jsseekToDate: (NSDate *) date completionHandler: (JSValue *) completionHandler );
-(CMTime) currentTime;
-(void) seekToTime: (CMTime) time toleranceBefore: (CMTime) toleranceBefore toleranceAfter: (CMTime) toleranceAfter ;
JSExportAs(seekToTimeToleranceBeforeToleranceAfterCompletionHandler,
-(void) jsseekToTime: (CMTime) time toleranceBefore: (CMTime) toleranceBefore toleranceAfter: (CMTime) toleranceAfter completionHandler: (JSValue *) completionHandler );
-(void) seekToTime: (CMTime) time ;
JSExportAs(seekToTimeCompletionHandler,
-(void) jsseekToTime: (CMTime) time completionHandler: (JSValue *) completionHandler );
-(void) seekToDate: (NSDate *) date ;
@end
@protocol AVPlayerAVPlayerTimeControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerPlaybackCapabilitiesCategoryInstanceExports<JSExport>
@end
@protocol AVPlayerAVPlayerPlaybackCapabilitiesCategoryClassExports<JSExport>
+(AVPlayerHDRMode) availableHDRModes;
+(BOOL) eligibleForHDRPlayback;
@end
@protocol AVPlayerAVPlayerItemControlCategoryInstanceExports<JSExport>
@property () AVPlayerActionAtItemEnd actionAtItemEnd;
@property (readonly,nonatomic) AVPlayerItem * currentItem;
-(void) replaceCurrentItemWithPlayerItem: (AVPlayerItem *) item ;
@end
@protocol AVPlayerAVPlayerItemControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerAutomaticMediaSelectionCategoryInstanceExports<JSExport>
@property () BOOL appliesMediaSelectionCriteriaAutomatically;
-(void) setMediaSelectionCriteria: (AVPlayerMediaSelectionCriteria *) criteria forMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
-(AVPlayerMediaSelectionCriteria *) mediaSelectionCriteriaForMediaCharacteristic: (AVMediaCharacteristic) mediaCharacteristic ;
@end
@protocol AVPlayerAVPlayerAutomaticMediaSelectionCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerVideoDisplaySleepPreventionCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL preventsDisplaySleepDuringVideoPlayback;
@end
@protocol AVPlayerAVPlayerVideoDisplaySleepPreventionCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerTimeObservationCategoryInstanceExports<JSExport>
-(void) removeTimeObserver: (id) observer ;
@end
@protocol AVPlayerAVPlayerTimeObservationCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerDeprecatedCategoryInstanceExports<JSExport>
@property (getter=isClosedCaptionDisplayEnabled) BOOL closedCaptionDisplayEnabled;
@end
@protocol AVPlayerAVPlayerDeprecatedCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop