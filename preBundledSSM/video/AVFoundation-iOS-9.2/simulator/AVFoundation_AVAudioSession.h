#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioSession_symbols(JSContext*);
@protocol AVAudioSessionAVAudioSessionDeprecatedCategoryInstanceExports<JSExport>
@property (readonly) BOOL inputIsAvailable;
@property (readonly) double currentHardwareSampleRate;
@property (readonly) NSInteger currentHardwareOutputNumberOfChannels;
@property (assign) id delegate;
@property (readonly) double preferredHardwareSampleRate;
@property (readonly) NSInteger currentHardwareInputNumberOfChannels;
JSExportAs(setPreferredHardwareSampleRateError,
-(BOOL) jssetPreferredHardwareSampleRate: (double) sampleRate error: (JSValue *) outError );
JSExportAs(setActiveWithFlagsError,
-(BOOL) jssetActive: (BOOL) active withFlags: (NSInteger) flags error: (JSValue *) outError );
@end
@protocol AVAudioSessionAVAudioSessionDeprecatedCategoryClassExports<JSExport>
@end
@protocol AVAudioSessionInstanceExports<JSExport>
@property (readonly) NSString * category;
@property (readonly) NSArray * availableInputs;
@property (readonly) BOOL secondaryAudioShouldBeSilencedHint;
@property (readonly) NSString * mode;
@property (readonly) AVAudioSessionRouteDescription * currentRoute;
@property (readonly) AVAudioSessionPortDescription * preferredInput;
@property (readonly) NSArray * availableModes;
@property (readonly) AVAudioSessionCategoryOptions categoryOptions;
@property (readonly) NSArray * availableCategories;
@property (getter=isOtherAudioPlaying,readonly) BOOL otherAudioPlaying;
JSExportAs(requestRecordPermission,
-(void) jsrequestRecordPermission: (JSValue *) response );
-(AVAudioSessionRecordPermission) recordPermission;
JSExportAs(setCategoryError,
-(BOOL) jssetCategory: (NSString *) category error: (JSValue *) outError );
JSExportAs(overrideOutputAudioPortError,
-(BOOL) jsoverrideOutputAudioPort: (AVAudioSessionPortOverride) portOverride error: (JSValue *) outError );
JSExportAs(setCategoryWithOptionsError,
-(BOOL) jssetCategory: (NSString *) category withOptions: (AVAudioSessionCategoryOptions) options error: (JSValue *) outError );
JSExportAs(setActiveWithOptionsError,
-(BOOL) jssetActive: (BOOL) active withOptions: (AVAudioSessionSetActiveOptions) options error: (JSValue *) outError );
JSExportAs(setModeError,
-(BOOL) jssetMode: (NSString *) mode error: (JSValue *) outError );
JSExportAs(setPreferredInputError,
-(BOOL) jssetPreferredInput: (AVAudioSessionPortDescription *) inPort error: (JSValue *) outError );
JSExportAs(setActiveError,
-(BOOL) jssetActive: (BOOL) active error: (JSValue *) outError );
@end
@protocol AVAudioSessionClassExports<JSExport>
+(AVAudioSession *) sharedInstance;
@end
@protocol AVAudioSessionRouteDescriptionInstanceExports<JSExport>
@property (readonly) NSArray * inputs;
@property (readonly) NSArray * outputs;
@end
@protocol AVAudioSessionRouteDescriptionClassExports<JSExport>
@end
@protocol AVAudioSessionPortDescriptionInstanceExports<JSExport>
@property (readonly) NSString * UID;
@property (readonly) AVAudioSessionDataSourceDescription * preferredDataSource;
@property (readonly) NSArray * channels;
@property (readonly) NSString * portName;
@property (readonly) NSString * portType;
@property (readonly) AVAudioSessionDataSourceDescription * selectedDataSource;
@property (readonly) NSArray * dataSources;
JSExportAs(setPreferredDataSourceError,
-(BOOL) jssetPreferredDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError );
@end
@protocol AVAudioSessionPortDescriptionClassExports<JSExport>
@end
@protocol AVAudioSessionAVAudioSessionHardwareConfigurationCategoryInstanceExports<JSExport>
@property (readonly) float outputVolume;
@property (readonly) NSArray * outputDataSources;
@property (getter=isInputAvailable,readonly) BOOL inputAvailable;
@property (readonly) float inputGain;
@property (readonly) NSInteger outputNumberOfChannels;
@property (readonly) NSTimeInterval preferredIOBufferDuration;
@property (getter=isInputGainSettable,readonly) BOOL inputGainSettable;
@property (readonly) NSArray * inputDataSources;
@property (readonly) double preferredSampleRate;
@property (readonly) double sampleRate;
@property (readonly) NSInteger preferredOutputNumberOfChannels;
@property (readonly) AVAudioSessionDataSourceDescription * outputDataSource;
@property (readonly) NSInteger maximumOutputNumberOfChannels;
@property (readonly) NSInteger inputNumberOfChannels;
@property (readonly) NSTimeInterval inputLatency;
@property (readonly) NSTimeInterval outputLatency;
@property (readonly) NSInteger maximumInputNumberOfChannels;
@property (readonly) NSTimeInterval IOBufferDuration;
@property (readonly) AVAudioSessionDataSourceDescription * inputDataSource;
@property (readonly) NSInteger preferredInputNumberOfChannels;
JSExportAs(setPreferredInputNumberOfChannelsError,
-(BOOL) jssetPreferredInputNumberOfChannels: (NSInteger) count error: (JSValue *) outError );
JSExportAs(setPreferredSampleRateError,
-(BOOL) jssetPreferredSampleRate: (double) sampleRate error: (JSValue *) outError );
JSExportAs(setOutputDataSourceError,
-(BOOL) jssetOutputDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError );
JSExportAs(setPreferredIOBufferDurationError,
-(BOOL) jssetPreferredIOBufferDuration: (NSTimeInterval) duration error: (JSValue *) outError );
JSExportAs(setInputDataSourceError,
-(BOOL) jssetInputDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError );
JSExportAs(setPreferredOutputNumberOfChannelsError,
-(BOOL) jssetPreferredOutputNumberOfChannels: (NSInteger) count error: (JSValue *) outError );
JSExportAs(setInputGainError,
-(BOOL) jssetInputGain: (float) gain error: (JSValue *) outError );
@end
@protocol AVAudioSessionAVAudioSessionHardwareConfigurationCategoryClassExports<JSExport>
@end
@protocol AVAudioSessionDataSourceDescriptionInstanceExports<JSExport>
@property (readonly) NSString * dataSourceName;
@property (readonly) NSString * orientation;
@property (readonly) NSString * preferredPolarPattern;
@property (readonly) NSArray * supportedPolarPatterns;
@property (readonly) NSNumber * dataSourceID;
@property (readonly) NSString * location;
@property (readonly) NSString * selectedPolarPattern;
JSExportAs(setPreferredPolarPatternError,
-(BOOL) jssetPreferredPolarPattern: (NSString *) pattern error: (JSValue *) outError );
@end
@protocol AVAudioSessionDataSourceDescriptionClassExports<JSExport>
@end
@protocol AVAudioSessionChannelDescriptionInstanceExports<JSExport>
@property (readonly) NSString * owningPortUID;
@property (readonly) NSUInteger channelNumber;
@property (readonly) NSString * channelName;
@property (readonly) AudioChannelLabel channelLabel;
@end
@protocol AVAudioSessionChannelDescriptionClassExports<JSExport>
@end
@protocol AVAudioSessionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) beginInterruption;
-(void) endInterruption;
-(void) endInterruptionWithFlags: (NSUInteger) flags ;
-(void) inputIsAvailableChanged: (BOOL) isInputAvailable ;
@end
@protocol AVAudioSessionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop