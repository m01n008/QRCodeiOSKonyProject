#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioUnit_symbols(JSContext*);
@protocol AVAudioUnitInstanceExports<JSExport>
@property (readonly,nonatomic) NSString * name;
@property (readonly,nonatomic) AudioComponentDescription audioComponentDescription;
@property (readonly,nonatomic) AUAudioUnit * AUAudioUnit;
@property (readonly,nonatomic) NSUInteger version;
@property (readonly,nonatomic) NSString * manufacturerName;
@property (readonly,nonatomic) id audioUnit;
JSExportAs(loadAudioUnitPresetAtURLError,
-(BOOL) jsloadAudioUnitPresetAtURL: (NSURL *) url error: (JSValue *) outError );
@end
@protocol AVAudioUnitClassExports<JSExport>
JSExportAs(instantiateWithComponentDescriptionOptionsCompletionHandler,
+(void) jsinstantiateWithComponentDescription: (AudioComponentDescription) audioComponentDescription options: (AudioComponentInstantiationOptions) options completionHandler: (JSValue *) completionHandler );
@end
#pragma clang diagnostic pop