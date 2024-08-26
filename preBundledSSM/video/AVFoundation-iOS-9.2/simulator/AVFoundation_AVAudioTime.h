#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioTime_symbols(JSContext*);
@protocol AVAudioTimeInstanceExports<JSExport>
@property (getter=isHostTimeValid,readonly,nonatomic) BOOL hostTimeValid;
@property (readonly,nonatomic) uint64_t hostTime;
@property (getter=isSampleTimeValid,readonly,nonatomic) BOOL sampleTimeValid;
@property (readonly,nonatomic) AVAudioFramePosition sampleTime;
@property (readonly,nonatomic) AudioTimeStamp audioTimeStamp;
@property (readonly,nonatomic) double sampleRate;
JSExportAs(initWithSampleTimeAtRate,
-(id) jsinitWithSampleTime: (AVAudioFramePosition) sampleTime atRate: (double) sampleRate );
JSExportAs(initWithHostTimeSampleTimeAtRate,
-(id) jsinitWithHostTime: (uint64_t) hostTime sampleTime: (AVAudioFramePosition) sampleTime atRate: (double) sampleRate );
-(AVAudioTime *) extrapolateTimeFromAnchor: (AVAudioTime *) anchorTime ;
JSExportAs(initWithHostTime,
-(id) jsinitWithHostTime: (uint64_t) hostTime );
@end
@protocol AVAudioTimeClassExports<JSExport>
+(NSTimeInterval) secondsForHostTime: (uint64_t) hostTime ;
+(id) timeWithHostTime: (uint64_t) hostTime ;
+(id) timeWithHostTime: (uint64_t) hostTime sampleTime: (AVAudioFramePosition) sampleTime atRate: (double) sampleRate ;
+(uint64_t) hostTimeForSeconds: (NSTimeInterval) seconds ;
+(id) timeWithSampleTime: (AVAudioFramePosition) sampleTime atRate: (double) sampleRate ;
@end
#pragma clang diagnostic pop