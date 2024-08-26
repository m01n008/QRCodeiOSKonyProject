#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioSessionRoute_symbols(JSContext*);
@protocol AVAudioSessionRouteDescriptionInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * inputs;
@property (readonly,nonatomic) NSArray * outputs;
@end
@protocol AVAudioSessionRouteDescriptionClassExports<JSExport>
@end
@protocol AVAudioSessionPortDescriptionInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * dataSources;
@property (readonly,nonatomic) AVAudioSessionDataSourceDescription * preferredDataSource;
@property (readonly,nonatomic) NSArray * channels;
@property (readonly) BOOL hasHardwareVoiceCallProcessing;
@property (readonly,nonatomic) NSString * portName;
@property (readonly,nonatomic) AVAudioSessionPort portType;
@property (readonly,nonatomic) AVAudioSessionDataSourceDescription * selectedDataSource;
@property (readonly,nonatomic) NSString * UID;
JSExportAs(setPreferredDataSourceError,
-(BOOL) jssetPreferredDataSource: (AVAudioSessionDataSourceDescription *) dataSource error: (JSValue *) outError );
@end
@protocol AVAudioSessionPortDescriptionClassExports<JSExport>
@end
@protocol AVAudioSessionDataSourceDescriptionInstanceExports<JSExport>
@property (readonly) NSString * dataSourceName;
@property (readonly) AVAudioSessionOrientation orientation;
@property (readonly) AVAudioSessionPolarPattern preferredPolarPattern;
@property (readonly) NSArray * supportedPolarPatterns;
@property (readonly) NSNumber * dataSourceID;
@property (readonly) AVAudioSessionLocation location;
@property (readonly) AVAudioSessionPolarPattern selectedPolarPattern;
JSExportAs(setPreferredPolarPatternError,
-(BOOL) jssetPreferredPolarPattern: (AVAudioSessionPolarPattern) pattern error: (JSValue *) outError );
@end
@protocol AVAudioSessionDataSourceDescriptionClassExports<JSExport>
@end
@protocol AVAudioSessionChannelDescriptionInstanceExports<JSExport>
@property (readonly,nonatomic) NSString * owningPortUID;
@property (readonly,nonatomic) NSUInteger channelNumber;
@property (readonly,nonatomic) NSString * channelName;
@property (readonly,nonatomic) AudioChannelLabel channelLabel;
@end
@protocol AVAudioSessionChannelDescriptionClassExports<JSExport>
@end
#pragma clang diagnostic pop