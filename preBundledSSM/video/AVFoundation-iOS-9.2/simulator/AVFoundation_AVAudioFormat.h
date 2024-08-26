#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioFormat_symbols(JSContext*);
@protocol AVAudioFormatInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) AVAudioChannelCount channelCount;
@property (readonly,nonatomic) const AVAudioChannelLayout * channelLayout;
@property (readonly,nonatomic) NSDictionary * settings;
@property (getter=isStandard,readonly,nonatomic) BOOL standard;
@property (readonly,nonatomic) AVAudioCommonFormat commonFormat;
@property (readonly,nonatomic) double sampleRate;
@property (readonly,nonatomic) id formatDescription;
@property (getter=isInterleaved,readonly,nonatomic) BOOL interleaved;
JSExportAs(initWithSettings,
-(id) jsinitWithSettings: (NSDictionary *) settings );
JSExportAs(initStandardFormatWithSampleRateChannels,
-(id) jsinitStandardFormatWithSampleRate: (double) sampleRate channels: (AVAudioChannelCount) channels );
JSExportAs(initWithCommonFormatSampleRateChannelsInterleaved,
-(id) jsinitWithCommonFormat: (AVAudioCommonFormat) format sampleRate: (double) sampleRate channels: (AVAudioChannelCount) channels interleaved: (BOOL) interleaved );
-(BOOL) isEqual: (id) object ;
JSExportAs(initWithCommonFormatSampleRateInterleavedChannelLayout,
-(id) jsinitWithCommonFormat: (AVAudioCommonFormat) format sampleRate: (double) sampleRate interleaved: (BOOL) interleaved channelLayout: (AVAudioChannelLayout *) layout );
JSExportAs(initWithCMAudioFormatDescription,
-(id) jsinitWithCMAudioFormatDescription: (id) formatDescription );
JSExportAs(initStandardFormatWithSampleRateChannelLayout,
-(id) jsinitStandardFormatWithSampleRate: (double) sampleRate channelLayout: (AVAudioChannelLayout *) layout );
@end
@protocol AVAudioFormatClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop