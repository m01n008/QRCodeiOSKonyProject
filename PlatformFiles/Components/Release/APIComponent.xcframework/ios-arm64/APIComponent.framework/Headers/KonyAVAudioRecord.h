//
//  KonyAVAudioRecord.h
//  GodSaveMeAudio2
//
//  Created by Praveen Kanike on 17/02/17.
//  Copyright © 2017 Praveen Kanike. All rights reserved.
//

#ifndef KonyAVAudioRecord_h
#define KonyAVAudioRecord_h
#import <AVFoundation/AVFoundation.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyUtil.h>

#define DEFAULT_IS_PLAYING NO
#define DEFAULT_DURATION 0
#define DEFAULT_VOLUME 0
#define DEFAULT_DATA nil
#define NUMBER_OF_CHANNELS 2
#define AUDIOFILE_EXT @".aiff"
/*!
 @class AVAudioRecordInterface
 
 @brief The AVAudioRecordInterface class
 
 @discussion    This class was designed and implemented to record the audio.
 
 @superclass NSObject
 */
@interface AVAudioRecordInterface:NSObject
/*! @brief This property is not used here cause the kony.media have this property, so its jut dummy   */
@property (assign) BOOL             isPlaying;
/*! @brief This property is not used here cause the kony.media have this property, so its jut dummy   */
@property (assign) int              duration;
/*! @brief This property is not used here cause the kony.media have this property, so its jut dummy   */
@property (assign) CGFloat          volume;
/*! @brief This property is not used here cause the kony.media have this property, so its jut dummy   */
@property (assign) NSString         *data;

/*! @brief This property used to store the client success callback to be called on once the recording is successfully recorded */
@property (nonatomic,retain)   CallBack *succCallback;
/*! @brief This property used to store the client failure callback to be called on once the recording is failed to record the audio*/
@property (nonatomic,retain)   CallBack *failCallback;
/*! @brief This property used to store the recorded audio file path*/
@property (nonatomic,retain)   NSString *filePath;
/*! @brief This property used to store the previous state of recorder when app goes background  */
@property (assign) BOOL isAudioRecordingBeforeEnterBackgrnd;
/*! @brief This property is used to validate the object is created properly or not */
@property (assign) BOOL isObjectCreatedCompletely;
/**
 @brief It initializes the AVAudioRecorder with the given filePath
 
 @discussion This method accepts the audio record file path URL path which is local to store and also initializing the success and failure callbacks of the user registered which is to be raised when recording encounters errors or success call.
 @param  filePath The input value representing the file path of the audio file to be recorded in the location.
 @param  succCallback Success callback, To be called when successfully audio recorded
 @param  failCallback failure callback, To be called when failed in audio record.
 
 @return instancetype create an instance object.
 */
-(instancetype)initAudioRecoderInFile:(NSString*)filePath withSuccCallback:(CallBack*)succCallback withFailureCallback:(CallBack*)failCallback;
/**
 @brief It is used to start the recording the audio file.
 @discussion This method is used when the recorder object is created and ready to start for recording.
 */
-(void)startRecording;
/**
 @brief It is used to stop the recording of audio file.
 @discussion This method is used when the recorder object is created and ready to stop the record process.
 */
-(void)stopRecordding;
-(void)dealloc;
@end

#endif /* KonyAVAudioRecord_h */
