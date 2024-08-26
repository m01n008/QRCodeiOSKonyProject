#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioSessionDeprecated_symbols(JSContext*);
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
-(id) jsinit;
@end
@protocol AVAudioSessionAVAudioSessionDeprecatedCategoryClassExports<JSExport>
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