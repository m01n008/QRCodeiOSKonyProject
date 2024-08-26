//
//  KonyAVPlayer.h
//  GodSaveMeAudio2
//
//  Created by Praveen Kanike on 20/02/17.
//  Copyright © 2017 Praveen Kanike. All rights reserved.
//
/*!
 @header KonyAVPlayer.h
 
 @brief It's a filtered AVPlayer interface used for playing audio file

 @author praveen.kanike
 @copyright  2017 kanike
 @version    1.0
 */
#ifndef KonyAVPlayer_h
#define KonyAVPlayer_h
#import <AVFoundation/AVFoundation.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyUtil.h>

typedef NS_ENUM(NSInteger, KonyAVPlayerCurrentItem) {
    KonyPlay,
    KonyPause,
    KonyStop
};

/*!
 @class AVPlayerInterface
 
 @brief The AVPlayerInterface class
 
 @discussion    This class was designed and implemented to play the audio files which are stored in the app/local storage/ Network url 
 
 @superclass NSObject
 */
@interface AVPlayerInterface : NSObject
/*! @brief This property gives the status of current item playing in AVPlayer. */
@property (assign) BOOL             isPlaying;
/*! @brief This property gives the total duration of current item. */
@property (assign,nonatomic) int              duration;
/*! @brief This property used to set the looping(playing) of single audio file  */
@property (assign) NSInteger        numberOfTimesToLoop;
/*! @brief This property used to set the volume level of the AVPlayer  */
@property (assign,nonatomic) CGFloat          volume;
/*! @brief This property used to set the current player item source  */
@property NSString         *data;
/*! @brief This property used to get the current player playing timeline  */
@property (assign) NSInteger        currentAudioTime;
/*! @brief This property used to set the playingCallback  */
@property (nonatomic)   CallBack *onPlayCallback;
/*! @brief This property used to set the mediaCompletionCallback  */
@property (nonatomic,retain)   CallBack *onMediaCompletedCallback;
/*! @brief This property used to set the media play failed callback  */
@property (nonatomic,retain)   CallBack *onMediaFailedCallback;
/*! @brief This property used to store the previous state of player when app goes background  */
@property (assign) BOOL isAudioPlayingBeforeEnterBackgrnd;
/*! @brief This property used to store the state of the player called   */
@property (assign) KonyAVPlayerCurrentItem currentSetting;
/*! @brief This property is used to validate the object is created properly or not */
@property (assign) BOOL isObjectCreatedCompletely;

@property(assign) AVAudioSessionCategory audioSessionCategory;
@property(assign) AVAudioSessionCategoryOptions audioSessionCategoryOptions;


/**
 @brief It initializes the AVPlayer with the given AudioFileURLPath
 
 @discussion This method accepts the AudioFile URL path which is local in the current device and initializes the AVplayer
 
 To use it, simply call @c[self initWithFilePathURL: @"song.mp3"];
 @code
 [self initWithFilePathURL: @"song.mp3"];// which is media in app bundle
 [self initWithFilePathURL: @"//volume/song.mp3"];// which is media with obsolute path
 @endcode
 
 @param  AudioFilePathURL The input value representing the file path of the audio file.
 
 @return instancetype create an instance object.
 */
-(instancetype)initWithFilePathURL:(NSString*)AudioFilePathURL audiosessionParams:(NSDictionary*) audiosessionParameters;
/**
 @brief It initializes the AVPlayer with the given networkURL
 
 @discussion This method accepts the network URL path to initializes the AVplayer
 
 To use it, simply call @c[self audioNetworkURL: @"http://kony.com/song.mp3"];
 
 @param  audioNetworkURL The input value representing the netwok url path of the audio file.
 
 @return instancetype create an instance object.
 */
-(instancetype)initWithNetworkURL:(NSString*)audioNetworkURL audiosessionParams:(NSDictionary*)audioSessionParameters;
/**
 @brief It plays the current Audio item
 
 @discussion This method plays the current item
 
 To use it, simply call @c[self play];
 */
-(void)play:(NSInteger)repeatCount;
/**
 @brief It pauses the current Audio item
 
 @discussion This method pauses the current item
 
 To use it, simply call @c[self pause];
 */
-(void)pause;
/**
 @brief It stop the current Audio item
 
 @discussion This method stop the current item
 
 To use it, simply call @c[self stop];
 */
-(void)stop;
/**
 @brief It stop the current Audio item
 @discussion This method stop the current item
 To use it, simply call @c[self volumeControl:0.1];
 @param  volume The input value is float type to set the volume level between 0.1 to 1.0.
 */
-(void)volumeControl:(CGFloat)volume;
/**
 @brief It helps in finding the current timeline of the audio
 @discussion This method used to get the current timeline of the play.
 @return  NSInteger return the current timeline of the audio file playing.
 */
-(NSInteger)getCurrentAudioDuration;
/**
 * @brief To play the current audio item at specified point
 * @param pointOfPlayTime position of current player item to play
 */
-(void)playAtSpecifiedTime:(NSUInteger) pointOfPlayTime;
/**
 To play the current item N number of times as specified in the parameter
 @param numberOfTimes Number of times the player has to play the current item
 */
-(void)playLoop:(NSInteger)numberOfTimes;

-(void)setAudioCallbacks:(CallBack*)onProgressCallback forMediaComplete:(CallBack*)onMediaCompleteCallback forMediaFailed:(CallBack*)onMediaFailedCallback;
-(void)dealloc;
@end


#endif /* KonyAVPlayer_h */
