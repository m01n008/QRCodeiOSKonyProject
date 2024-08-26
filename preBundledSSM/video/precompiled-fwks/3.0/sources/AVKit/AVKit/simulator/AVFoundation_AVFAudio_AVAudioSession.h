#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioSession_symbols(JSContext*);
@protocol AVAudioSessionActivationCategoryInstanceExports<JSExport>
JSExportAs(setActiveWithOptionsError,
-(BOOL) jssetActive: (BOOL) active withOptions: (AVAudioSessionSetActiveOptions) options error: (JSValue *) outError );
JSExportAs(setActiveError,
-(BOOL) jssetActive: (BOOL) active error: (JSValue *) outError );
@end
@protocol AVAudioSessionActivationCategoryClassExports<JSExport>
@end
@protocol AVAudioSessionInstanceExports<JSExport>
@property (readonly) AVAudioSessionCategory category;
@property (readonly) AVAudioSessionRecordPermission recordPermission;
@property (readonly) BOOL allowHapticsAndSystemSoundsDuringRecording;
@property (readonly) AVAudioSessionRouteSharingPolicy routeSharingPolicy;
@property (readonly) AVAudioSessionMode mode;
@property (readonly) AVAudioSessionPortDescription * preferredInput;
@property (readonly) NSArray * availableModes;
@property (readonly) AVAudioSessionCategoryOptions categoryOptions;
@property (readonly,nonatomic) NSArray * availableCategories;
JSExportAs(setCategoryModeRouteSharingPolicyOptionsError,
-(BOOL) jssetCategory: (AVAudioSessionCategory) category mode: (AVAudioSessionMode) mode routeSharingPolicy: (AVAudioSessionRouteSharingPolicy) policy options: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError );
JSExportAs(requestRecordPermission,
-(void) jsrequestRecordPermission: (JSValue *) response );
JSExportAs(setCategoryError,
-(BOOL) jssetCategory: (AVAudioSessionCategory) category error: (JSValue *) outError );
JSExportAs(setAllowHapticsAndSystemSoundsDuringRecordingError,
-(BOOL) jssetAllowHapticsAndSystemSoundsDuringRecording: (BOOL) inValue error: (JSValue *) outError );
JSExportAs(overrideOutputAudioPortError,
-(BOOL) jsoverrideOutputAudioPort: (AVAudioSessionPortOverride) portOverride error: (JSValue *) outError );
JSExportAs(setCategoryModeOptionsError,
-(BOOL) jssetCategory: (AVAudioSessionCategory) category mode: (AVAudioSessionMode) mode options: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError );
JSExportAs(setCategoryWithOptionsError,
-(BOOL) jssetCategory: (AVAudioSessionCategory) category withOptions: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError );
JSExportAs(setModeError,
-(BOOL) jssetMode: (AVAudioSessionMode) mode error: (JSValue *) outError );
JSExportAs(setPreferredInputError,
-(BOOL) jssetPreferredInput: (AVAudioSessionPortDescription *) inPort error: (JSValue *) outError );
@end
@protocol AVAudioSessionClassExports<JSExport>
+(AVAudioSession *) sharedInstance;
@end
@protocol AVAudioSessionRoutingConfigurationCategoryInstanceExports<JSExport>
@property (readonly) NSArray * availableInputs;
@property (readonly) AVAudioSessionRouteDescription * currentRoute;
JSExportAs(setAggregatedIOPreferenceError,
-(BOOL) jssetAggregatedIOPreference: (AVAudioSessionIOType) inIOType error: (JSValue *) outError );
@end
@protocol AVAudioSessionRoutingConfigurationCategoryClassExports<JSExport>
@end
@protocol AVAudioSessionAVAudioSessionHardwareConfigurationCategoryInstanceExports<JSExport>
@property (readonly) AVAudioSessionDataSourceDescription * outputDataSource;
@property (readonly) NSArray * outputDataSources;
@property (getter=isInputAvailable,readonly) BOOL inputAvailable;
@property (readonly) float inputGain;
@property (readonly) NSInteger outputNumberOfChannels;
@property (readonly) NSTimeInterval IOBufferDuration;
@property (readonly) NSTimeInterval preferredIOBufferDuration;
@property (readonly) double preferredSampleRate;
@property (readonly) NSArray * inputDataSources;
@property (readonly) AVAudioStereoOrientation preferredInputOrientation;
@property (readonly) double sampleRate;
@property (readonly) NSInteger preferredOutputNumberOfChannels;
@property (readonly) AVAudioSessionDataSourceDescription * inputDataSource;
@property (readonly) NSInteger maximumOutputNumberOfChannels;
@property (readonly) NSInteger inputNumberOfChannels;
@property (readonly) NSTimeInterval inputLatency;
@property (readonly) NSTimeInterval outputLatency;
@property (readonly) AVAudioStereoOrientation inputOrientation;
@property (getter=isInputGainSettable,readonly) BOOL inputGainSettable;
@property (readonly) NSInteger maximumInputNumberOfChannels;
@property (readonly) NSInteger preferredInputNumberOfChannels;
JSExportAs(setPreferredInputNumberOfChannelsError,
-(BOOL) jssetPreferredInputNumberOfChannels: (NSInteger) count error: (JSValue *) outError );
JSExportAs(setPreferredSampleRateError,
-(BOOL) jssetPreferredSampleRate: (double) sampleRate error: (JSValue *) outError );
JSExportAs(setOutputDataSourceError,
-(BOOL) jssetOutputDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError );
JSExportAs(setPreferredIOBufferDurationError,
-(BOOL) jssetPreferredIOBufferDuration: (NSTimeInterval) duration error: (JSValue *) outError );
JSExportAs(setPreferredInputOrientationError,
-(BOOL) jssetPreferredInputOrientation: (AVAudioStereoOrientation) orientation error: (JSValue *) outError );
JSExportAs(setInputDataSourceError,
-(BOOL) jssetInputDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError );
JSExportAs(setPreferredOutputNumberOfChannelsError,
-(BOOL) jssetPreferredOutputNumberOfChannels: (NSInteger) count error: (JSValue *) outError );
JSExportAs(setInputGainError,
-(BOOL) jssetInputGain: (float) gain error: (JSValue *) outError );
@end
@protocol AVAudioSessionAVAudioSessionHardwareConfigurationCategoryClassExports<JSExport>
@end
@protocol AVAudioSessionObservationCategoryInstanceExports<JSExport>
@property (readonly) BOOL secondaryAudioShouldBeSilencedHint;
@property (readonly) float outputVolume;
@property (readonly) AVAudioSessionPromptStyle promptStyle;
@property (getter=isOtherAudioPlaying,readonly) BOOL otherAudioPlaying;
@end
@protocol AVAudioSessionObservationCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop