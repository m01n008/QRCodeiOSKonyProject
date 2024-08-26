#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayer_symbols(JSContext*);
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
@property (nonatomic) float volume;
@property (getter=isMuted,nonatomic) BOOL muted;
@property (getter=isClosedCaptionDisplayEnabled,nonatomic) BOOL closedCaptionDisplayEnabled;
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
-(void) play;
-(void) pause;
@end
@protocol AVPlayerAVPlayerPlaybackControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerAirPlaySupportCategoryInstanceExports<JSExport>
@property (getter=isAirPlayVideoActive,readonly,nonatomic) BOOL airPlayVideoActive;
@property (nonatomic) BOOL usesAirPlayVideoWhileAirPlayScreenIsActive;
@property (nonatomic) BOOL allowsAirPlayVideo;
@end
@protocol AVPlayerAVPlayerAirPlaySupportCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerAdvancedRateControlCategoryInstanceExports<JSExport>
@property (retain,nonatomic) id masterClock;
JSExportAs(prerollAtRateCompletionHandler,
-(void) jsprerollAtRate: (float) rate completionHandler: (JSValue *) completionHandler );
-(void) setRate: (float) rate time: (CMTime) itemTime atHostTime: (CMTime) hostClockTime ;
-(void) cancelPendingPrerolls;
@end
@protocol AVPlayerAVPlayerAdvancedRateControlCategoryClassExports<JSExport>
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
@protocol AVPlayerAVPlayerExternalPlaybackSupportCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL usesExternalPlaybackWhileExternalScreenIsActive;
@property (nonatomic) BOOL allowsExternalPlayback;
@property (getter=isExternalPlaybackActive,readonly,nonatomic) BOOL externalPlaybackActive;
@property (copy,nonatomic) NSString * externalPlaybackVideoGravity;
@end
@protocol AVPlayerAVPlayerExternalPlaybackSupportCategoryClassExports<JSExport>
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
@protocol AVPlayerAVPlayerItemControlCategoryInstanceExports<JSExport>
@property (nonatomic) AVPlayerActionAtItemEnd actionAtItemEnd;
@property (readonly,nonatomic) AVPlayerItem * currentItem;
-(void) replaceCurrentItemWithPlayerItem: (AVPlayerItem *) item ;
@end
@protocol AVPlayerAVPlayerItemControlCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerAutomaticMediaSelectionCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL appliesMediaSelectionCriteriaAutomatically;
-(void) setMediaSelectionCriteria: (AVPlayerMediaSelectionCriteria *) criteria forMediaCharacteristic: (NSString *) mediaCharacteristic ;
-(AVPlayerMediaSelectionCriteria *) mediaSelectionCriteriaForMediaCharacteristic: (NSString *) mediaCharacteristic ;
@end
@protocol AVPlayerAVPlayerAutomaticMediaSelectionCategoryClassExports<JSExport>
@end
@protocol AVPlayerAVPlayerTimeObservationCategoryInstanceExports<JSExport>
-(void) removeTimeObserver: (id) observer ;
@end
@protocol AVPlayerAVPlayerTimeObservationCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop