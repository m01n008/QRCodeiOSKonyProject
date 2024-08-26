//
//  KonyAudioSession.h
//  VM
//
//  Created by Praveen Kanike on 21/08/17.
//
//

#ifndef KonyAudioSession_h
#define KonyAudioSession_h
#define BUFFER_DURATION_AVPLAYER 0.005
#define SAMPLING_RATE_AVPLAYER 44100.0
#import <AVFoundation/AVFoundation.h>
@interface KonyAudioSession:AVAudioSession
+(void) configureAudioSession:(NSString*)category withOptions:(AVAudioSessionCategoryOptions)options;
+(void) SetActiveCurrentAudioSession:(BOOL)activateFlag;
@end
#endif /* KonyAudioSession_h */
