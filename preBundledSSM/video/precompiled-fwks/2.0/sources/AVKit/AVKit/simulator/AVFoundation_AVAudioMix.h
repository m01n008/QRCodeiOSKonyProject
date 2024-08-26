#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioMix_symbols(JSContext*);
@protocol AVMutableAudioMixInstanceExports<JSExport>
@property (copy,nonatomic) NSArray * inputParameters;
@end
@protocol AVMutableAudioMixClassExports<JSExport>
+(id) audioMix;
@end
@protocol AVAudioMixInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,copy,nonatomic) NSArray * inputParameters;
@end
@protocol AVAudioMixClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVAudioMixInputParametersInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,nonatomic) CMPersistentTrackID trackID;
@property (readonly,copy,nonatomic) AVAudioTimePitchAlgorithm audioTimePitchAlgorithm;
@property (readonly,retain,nonatomic) id audioTapProcessor;
@end
@protocol AVAudioMixInputParametersClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_>
@end
@protocol AVMutableAudioMixInputParametersInstanceExports<JSExport>
@property (nonatomic) CMPersistentTrackID trackID;
@property (copy,nonatomic) AVAudioTimePitchAlgorithm audioTimePitchAlgorithm;
@property (retain,nonatomic) id audioTapProcessor;
-(void) setVolumeRampFromStartVolume: (float) startVolume toEndVolume: (float) endVolume timeRange: (CMTimeRange) timeRange ;
-(void) setVolume: (float) volume atTime: (CMTime) time ;
@end
@protocol AVMutableAudioMixInputParametersClassExports<JSExport>
+(id) audioMixInputParametersWithTrack: (AVAssetTrack *) track ;
+(id) audioMixInputParameters;
@end
#pragma clang diagnostic pop