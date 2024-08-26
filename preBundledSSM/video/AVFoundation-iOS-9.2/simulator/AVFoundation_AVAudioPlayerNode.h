#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioPlayerNode_symbols(JSContext*);
@protocol AVAudioPlayerNodeInstanceExports<JSExport, AVAudioMixingInstanceExports_>
@property (getter=isPlaying,readonly,nonatomic) BOOL playing;
-(AVAudioTime *) nodeTimeForPlayerTime: (AVAudioTime *) playerTime ;
-(void) play;
-(void) pause;
JSExportAs(scheduleSegmentStartingFrameFrameCountAtTimeCompletionHandler,
-(void) jsscheduleSegment: (AVAudioFile *) file startingFrame: (AVAudioFramePosition) startFrame frameCount: (AVAudioFrameCount) numberFrames atTime: (AVAudioTime *) when completionHandler: (JSValue *) completionHandler );
-(void) playAtTime: (AVAudioTime *) when ;
JSExportAs(scheduleBufferCompletionHandler,
-(void) jsscheduleBuffer: (AVAudioPCMBuffer *) buffer completionHandler: (JSValue *) completionHandler );
JSExportAs(scheduleBufferAtTimeOptionsCompletionHandler,
-(void) jsscheduleBuffer: (AVAudioPCMBuffer *) buffer atTime: (AVAudioTime *) when options: (AVAudioPlayerNodeBufferOptions) options completionHandler: (JSValue *) completionHandler );
JSExportAs(scheduleFileAtTimeCompletionHandler,
-(void) jsscheduleFile: (AVAudioFile *) file atTime: (AVAudioTime *) when completionHandler: (JSValue *) completionHandler );
-(void) stop;
-(AVAudioTime *) playerTimeForNodeTime: (AVAudioTime *) nodeTime ;
-(void) prepareWithFrameCount: (AVAudioFrameCount) frameCount ;
@end
@protocol AVAudioPlayerNodeClassExports<JSExport, AVAudioMixingClassExports_>
@end
#pragma clang diagnostic pop