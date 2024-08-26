#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVOutputSettingsAssistant_symbols(JSContext*);
@protocol AVOutputSettingsAssistantAVOutputSettingsAssistant_SourceInformationCategoryInstanceExports<JSExport>
@property (nonatomic) CMTime sourceVideoMinFrameDuration;
@property (retain,nonatomic) id sourceAudioFormat;
@property (retain,nonatomic) id sourceVideoFormat;
@property (nonatomic) CMTime sourceVideoAverageFrameDuration;
@end
@protocol AVOutputSettingsAssistantAVOutputSettingsAssistant_SourceInformationCategoryClassExports<JSExport>
@end
@protocol AVOutputSettingsAssistantInstanceExports<JSExport>
@property (readonly,nonatomic) NSDictionary * audioSettings;
@property (readonly,nonatomic) AVFileType outputFileType;
@property (readonly,nonatomic) NSDictionary * videoSettings;
@end
@protocol AVOutputSettingsAssistantClassExports<JSExport>
+(NSArray *) availableOutputSettingsPresets;
+(id) outputSettingsAssistantWithPreset: (AVOutputSettingsPreset) presetIdentifier ;
@end
#pragma clang diagnostic pop